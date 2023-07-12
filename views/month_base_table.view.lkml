view: month_base_table {
  parameter: month_start_date {type: date}
  parameter: month_end_date {type: date}
  parameter: prev_month_end_date {type: date}
  parameter: next_month_start_date {type: date}

  derived_table: {
    sql:
      (
      select
      custuserid
      ,case when min_date < '2022-04-01' then 'SS' else 'FKH' end as company
      ,case
      when firstm=0 then 'M0 New - Repeat'
      when lastm=1 and  firstm = 1 then 'M1 New - Repeat'
      when lastm=1 then 'M1 Old - Repeat'
      when lastm=2 and  firstm = 2 then 'M2 New - Repeat'
      when lastm=2 then 'M2 Old - Repeat'
      when lastm=3 and  firstm = 3 then 'M3 New - Repeat'
      when lastm=3 then 'M3 Old - Repeat'
      when lastm=4 then 'M4'
      when lastm=5 then 'M5'
      when lastm=6 then 'M6'
      when lastm=7 then 'M7-M12'
      when lastm=8 then 'M7-M12'
      when lastm=9 then 'M7-M12'
      when lastm=10 then 'M7-M12'
      when lastm=11 then 'M7-M12'
      when lastm=12 then 'M7-M12'
      else 'Older (M12+)'
      end as cohort
      ,poid
      ,orderdate
      ,apptype
      ,coupon_used
      ,promocode
      ,zone
      ,state
      ,tier
      ,pincode
      ,hbid
      ,warehouselocation
      ,sdt
      ,rev
      ,min_date
      ,max_date
      ,case when min_date >= date({% parameter month_start_date %}) then cast(min_date as date) else date({% parameter prev_month_end_date %}) end as repeat_measure_date
      from
      (
      select
      custuserid
      ,poid
      ,orderdate
      ,apptype
      ,coupon_used
      ,promocode
      ,zone
      ,state
      ,tier
      ,pincode
      ,hbid
      ,warehouselocation
      ,sdt
      ,rev
      ,min_date
      ,max_date
      ,date_diff( date({% parameter month_start_date %}), cast(max_date as date), month) as lastm /*Change date for different month as required*/
      ,date_diff( date({% parameter month_start_date %}), cast(min_date as date), month) as firstm /*Change date for different month as required*/
      from
      (
      select
      custuserid
      ,poid
      ,orderdate
      ,apptype
      ,coupon_used
      ,promocode
      ,zone
      ,state
      ,tier
      ,pincode
      ,hbid
      ,warehouselocation
      ,sdt
      ,rev
      ,min_date
      ,max_date
      ,for_old_cohort_last_order_ranking
      ,rnk
      from
      (
      select
      custuserid
      ,poid
      ,orderdate
      ,apptype
      ,coupon_used
      ,promocode
      ,zone
      ,state
      ,tier
      ,pincode
      ,hbid
      ,warehouselocation
      ,sdt
      ,rev
      ,min_date
      ,max_date
      ,for_old_cohort_last_order_ranking
      ,row_number() over (partition by custuserid order by for_old_cohort_last_order_ranking asc) as rnk
      from
      (
      select
      custuserid
      ,poid
      ,orderdate
      ,apptype
      ,coupon_used
      ,promocode
      ,zone
      ,state
      ,tier
      ,pincode
      ,hbid
      ,warehouselocation
      ,sdt
      ,rev
      ,min_date
      ,max_date
      ,case when cast(min_date as date) < date({% parameter month_start_date %}) and cast(orderdate as date) < date({% parameter month_start_date %}) then orderdate else date({% parameter prev_month_end_date %}) end as for_old_cohort_last_order_ranking
      from
      (
      select
      custuserid
      ,poid
      ,orderdate
      ,apptype
      ,coupon_used
      ,promocode
      ,zone
      ,state
      ,tier
      ,pincode
      ,hbid
      ,warehouselocation
      ,sdt
      ,rev
      ,min(orderdate) over (partition by custuserid) as min_date
      ,max(case when cast(orderdate as date) < date({% parameter month_start_date %}) then orderdate end) over (partition by custuserid) as max_date

      from
      (
      Select o.custuserid
      ,parentOrderPaymentGetwayId as poid
      ,min(cast(orderdate as datetime)) as orderdate
      ,max(CASE
        WHEN us.UserTypeId IN ('A') and  o.CreatedBy in (SELECT Userid FROM `fkh-prod-bd-prj-svc-35dc.FKH_Facts.FKH_Admins_List_Userid_Fact` where Tag='C20' and Userid is not null) THEN 'C20'
        WHEN us.UserTypeId IN ('A') and  o.CreatedBy in (SELECT Userid FROM `fkh-prod-bd-prj-svc-35dc.FKH_Facts.FKH_Admins_List_Userid_Fact` where Tag='HB Calling' and Userid is not null) THEN 'HB/Others'--'HB Calling'
        WHEN us.UserTypeId IN ('A') and o.CreatedBy in (SELECT Userid FROM `fkh-prod-bd-prj-svc-35dc.FKH_Facts.FKH_Admins_List_Userid_Fact` where Tag='OBP' and Userid is not null) then 'OBP'
        WHEN  o.CreatedBy in (SELECT Userid FROM `fkh-prod-bd-prj-svc-35dc.fkh_prod_bd_static_data.FKH_HB_Lite_List` where Userid is not null) then 'HB lite'
        WHEN z.orderid is not null then 'AIA'
        WHEN ApplicationType in ( 'N','A') AND o.CreatedBy =o.CustUserId THEN 'Online'--'Android App'
        WHEN ApplicationType in ( 'I') AND o.CreatedBy =o.CustUserId THEN 'Online'--'iOS'
        WHEN ApplicationType in ( 'W') AND o.CreatedBy =o.CustUserId THEN 'Online'--'Windows'
        WHEN ApplicationType in ( 'M') AND o.CreatedBy =o.CustUserId THEN 'Online'--'Mobile Site'
        WHEN IFNULL(ApplicationType,'') in ( '') AND o.CreatedBy =o.CustUserId THEN 'Online'--'Website'
        ELSE 'HB/Others' END) as apptype
      ,max(case when couponpromoid is not null then 1 else 0 end) as coupon_used
      ,max(PromoCode) as promocode
      ,max(zone) as zone
      ,max(state) as state
      ,max(geog.tier) as tier
      ,max(pincode) as pincode
      ,max(hbid) as hbid
      ,max(warehouselocation) as warehouselocation
      ,min(ScheduleDeliveryDate) as sdt
      ,max(CASE WHEN hb.CourierCategory IS NULL THEN 'StandAlone' ELSE 'CoLocated' END) AS deliverymode
      ,sum(CASE WHEN o.RoundofSign = '+' THEN o.OrderBillAmount + o.RoundofVal ELSE o.OrderBillAmount - o.RoundofVal END) AS rev
      from `fkh-prod-bd-prj-svc-35dc.looker.tblOrder_snapshot_view` o
      left join `fkh-prod-bd-prj-svc-35dc.looker.tblOrderPaymentGetway_snapshot_view` opg on o.orderid = opg.orderid
      left join `fkh-prod-bd-prj-svc-35dc.looker.tblUser_snapshot_view` us on o.Createdby = us.UserId
      left join `fkh-prod-bd-prj-svc-35dc.looker.tblPromotion_snapshot_view` pr on o.PromoId = pr.PromoId
      left join (select orderid from `fkh-prod-bd-prj-svc-35dc.looker.tblOrderOtherInfo_snapshot_view`) z on o.orderid = z.orderid
      left join (select warehouseid,
      case
      when warehouselocation in ('Bihar','Odisa','Jharkhand','North East') then 'West Bengal'
      when warehouselocation in ('Haryana') then 'Delhi' else warehouselocation end as warehouselocation from `fkh-prod-bd-prj-svc-35dc.looker.tblWarehouse_snapshot_view`) wh on o.warehouseid = wh.warehouseid
      left join (select ad.addressid ,geo.city_tier ,upper(geo.state) as state  ,upper(geo.zone) as zone  ,upper(geo.city) as city  ,upper(city_tier) as tier ,ad.pincode
      from `fkh-prod-bd-prj-svc-35dc.looker.tblAddress_snapshot_view` ad
      left join `fkh-prod-bd-prj-svc-35dc.looker.CityMapping_Master` geo on ad.pincode = geo.pincode
      group by 1,2,3,4,5,6,7) geog on o.ShippingAddressId = geog.addressid
      left join (select * from `fkh-prod-bd-prj-svc-35dc.looker.vwHealthBuddy_snapshot_view`) hb on o.hbid = hb.userid
      where  cast(orderdate as date) < date({% parameter next_month_start_date %})
      /*Change for different month as required*/
      and OrderStatusId NOT IN (8,9)
      and o.HBId NOT IN (11010,10020,10021,17218)
      group by 1,2
      ) as A
      ) as b
      )c
      )d
      where (rnk = 1 or (rnk is null and min_date = orderdate and cast(min_date as date) >= date({% parameter month_start_date %})))
      )inter
      )penul
      )
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: custuserid {
    type: number
    sql: ${TABLE}.custuserid ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.cohort ;;
  }

  dimension: poid {
    type: number
    sql: ${TABLE}.poid ;;
  }

  dimension: apptype {
    type: string
    sql: ${TABLE}.apptype ;;
  }

  dimension_group: orderdate {
    type: time
    datatype: datetime
    sql: ${TABLE}.orderdate ;;
  }

  dimension_group: sdt {
    type: time
    datatype: date
    sql: ${TABLE}.sdt ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.zone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tier {
    type: string
    sql: ${TABLE}.tier ;;
  }

  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }

  dimension: coupon_used {
    type: string
    sql: ${TABLE}.coupon_used ;;
  }

  dimension: promocode {
    type: string
    sql: ${TABLE}.promocode ;;
  }

  dimension: deliverymode {
    type: string
    sql: ${TABLE}.deliverymode ;;
  }

  dimension: warehouselocation {
    type: string
    sql: ${TABLE}.warehouselocation ;;
  }

  dimension: hbid {
    type: number
    sql: ${TABLE}.hbid ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension_group: min_date {
    type: time
    datatype: datetime
    sql: ${TABLE}.min_date ;;
  }

  dimension_group: max_date {
    type: time
    datatype: datetime
    sql: ${TABLE}.max_date ;;
  }

  dimension: repeat_measure_date {
    type: date
    datatype: date
    sql: ${TABLE}.repeat_measure_date ;;
  }

  set: detail {
    fields: [
      custuserid,
      company,
      cohort,
      poid,
      apptype,
      orderdate_time,
      zone,
      state,
      tier,
      pincode,
      coupon_used,
      promocode,
      deliverymode,
      rev,
      min_date_time,
      max_date_time,
      repeat_measure_date
    ]
  }
}
