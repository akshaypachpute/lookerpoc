view: all_orders {
  parameter: order_start_date {type: date}
  parameter: order_end_date {type: date}
  derived_table: {
    sql:

      (select
       o.custuserid
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
      where cast(orderdate as date) between date({% parameter order_start_date %}) and date({% parameter order_end_date %})
      and OrderStatusId NOT IN (8,9)
      and o.HBId NOT IN (11010,10020,10021,17218)
      group by 1,2
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

  set: detail {
    fields: [
      custuserid,
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
      rev
    ]
  }
}
