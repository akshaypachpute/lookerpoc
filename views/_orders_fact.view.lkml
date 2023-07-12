view: _orders_fact {
  sql_table_name: `LOOKER. Orders_fact`
    ;;

  dimension: age_in_days {
    type: number
    sql: ${TABLE}.AGE_IN_Days ;;
  }

  dimension: analytics_city {
    type: string
    sql: ${TABLE}.Analytics_City ;;
  }

  dimension: aov_bucket {
    type: string
    sql: ${TABLE}.AOV_Bucket ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.AppVersion ;;
  }

  dimension: application_type {
    type: string
    sql: ${TABLE}.ApplicationType ;;
  }

  dimension: bank_disc {
    type: number
    sql: ${TABLE}.BankDisc ;;
  }

  dimension_group: cancel {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Cancel_Date ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.Cancel_Reason ;;
  }

  dimension: cancelled_child_orders {
    type: number
    sql: ${TABLE}.Cancelled_Child_Orders ;;
  }

  dimension: cancelled_gmv {
    type: number
    sql: ${TABLE}.Cancelled_GMV ;;
  }

  dimension: cashback_issed {
    type: number
    sql: ${TABLE}.Cashback_Issed ;;
  }

  dimension: category_flag {
    type: string
    sql: ${TABLE}.Category_Flag ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city_tier {
    type: string
    sql: ${TABLE}.City_tier ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: cust_user_id {
    type: number
    sql: ${TABLE}.CustUserId ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.Date ;;
  }

  dimension: declined_by {
    type: string
    sql: ${TABLE}.Declined_BY ;;
  }

  dimension: declined_child_orders {
    type: number
    sql: ${TABLE}.Declined_Child_Orders ;;
  }

  dimension_group: declined {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Declined_Date ;;
  }

  dimension: declined_gmv {
    type: number
    sql: ${TABLE}.Declined_GMV ;;
  }

  dimension: declined_reason {
    type: string
    sql: ${TABLE}.Declined_Reason ;;
  }

  dimension_group: delivered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Delivered_date ;;
  }

  dimension: fclocation {
    type: string
    sql: ${TABLE}.FCLocation ;;
  }

  dimension: gmv {
    type: number
    sql: ${TABLE}.GMV ;;
  }

  dimension: gmv_promo_val {
    type: number
    sql: ${TABLE}.GMV_PROMO_VAL ;;
  }

  dimension_group: gnoc_first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.gnoc_FirstOrderDate ;;
  }

  dimension_group: gnoc_last_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.gnoc_LastOrderDate ;;
  }

  dimension_group: gnoc_month_first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.gnoc_Month_FirstOrderDate ;;
  }

  dimension: gross_aov_bucket {
    type: string
    sql: ${TABLE}.Gross_AOV_Bucket ;;
  }

  dimension: gross_child_orders {
    type: number
    sql: ${TABLE}.Gross_Child_Orders ;;
  }

  dimension_group: gross_first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.gross_FirstOrderDate ;;
  }

  dimension_group: gross_last_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.gross_LastOrderDate ;;
  }

  dimension_group: gross_month_first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.gross_Month_FirstOrderDate ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.Hour ;;
  }

  dimension: is_cancelled {
    type: number
    sql: ${TABLE}.IS_Cancelled ;;
  }

  dimension: is_declined {
    type: number
    sql: ${TABLE}.IS_Declined ;;
  }

  dimension: is_nc {
    type: yesno
    sql: ${TABLE}.IS_NC ;;
  }

  dimension: item_discount {
    type: number
    sql: ${TABLE}.ItemDiscount ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: mrpval {
    type: number
    sql: ${TABLE}.MRPVal ;;
  }

  dimension: net_cash_discount {
    type: number
    sql: ${TABLE}.Net_CashDiscount ;;
  }

  dimension: net_child_orders {
    type: number
    sql: ${TABLE}.Net_Child_Orders ;;
  }

  dimension: net_coupon_discount {
    type: number
    sql: ${TABLE}.Net_CouponDiscount ;;
  }

  dimension: net_fkhpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Net_FKHPaid ;;
  }

  dimension: net_gmv {
    type: number
    sql: ${TABLE}.Net_GMV ;;
  }

  dimension: net_item_discount {
    type: number
    sql: ${TABLE}.Net_ItemDiscount ;;
  }

  dimension: net_mrp {
    type: number
    sql: ${TABLE}.Net_MRP ;;
  }

  dimension: net_orders {
    type: number
    sql: ${TABLE}.Net_Orders ;;
  }

  dimension: net_otc_gmv {
    type: number
    sql: ${TABLE}.Net_OTC_gmv ;;
  }

  dimension: net_otc_units {
    type: number
    sql: ${TABLE}.Net_OTC_Units ;;
  }

  dimension: net_otm_gmv {
    type: number
    sql: ${TABLE}.Net_OTM_gmv ;;
  }

  dimension: net_otm_units {
    type: number
    sql: ${TABLE}.Net_OTM_Units ;;
  }

  dimension: net_qcpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Net_QCPaid ;;
  }

  dimension: net_quantity {
    type: number
    sql: ${TABLE}.Net_quantity ;;
  }

  dimension: net_rx_gmv {
    type: number
    sql: ${TABLE}.Net_RX_gmv ;;
  }

  dimension: net_rx_units {
    type: number
    sql: ${TABLE}.Net_RX_Units ;;
  }

  dimension: net_shipping_charge {
    type: number
    sql: ${TABLE}.Net_ShippingCharge ;;
  }

  dimension: net_sku_gmv {
    type: number
    sql: ${TABLE}.Net_sku_gmv ;;
  }

  dimension: offer_id {
    type: string
    sql: ${TABLE}.OfferId ;;
  }

  dimension_group: order_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderDate ;;
  }

  dimension_group: order_date_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.OrderDate_Timestamp ;;
  }

  dimension: otc_sku {
    type: number
    sql: ${TABLE}.OTC_SKU ;;
  }

  dimension: otm_sku {
    type: number
    sql: ${TABLE}.OTM_SKU ;;
  }

  dimension: parent_order_id {
    type: number
    sql: ${TABLE}.ParentOrderId ;;
  }

  dimension: parent_warehouse_id {
    type: number
    sql: ${TABLE}.ParentWarehouseId ;;
  }

  dimension: payment_instrument_types {
    type: string
    sql: ${TABLE}.Payment_Instrument_Types ;;
  }

  dimension_group: promised {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Promised_Date ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.PromoCode ;;
  }

  dimension: promo_desc {
    type: string
    sql: ${TABLE}.PromoDesc ;;
  }

  dimension: promo_wallet_balance_before_placing_order {
    type: number
    sql: ${TABLE}.Promo_wallet_balance_before_placing_Order ;;
  }

  dimension: rx_sku {
    type: number
    sql: ${TABLE}.RX_SKU ;;
  }

  dimension: seller_category {
    type: string
    sql: ${TABLE}.Seller_Category ;;
  }

  dimension: seller_code {
    type: string
    sql: ${TABLE}.Seller_Code ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.seller_id ;;
  }

  dimension: sellername {
    type: string
    sql: ${TABLE}.Sellername ;;
  }

  dimension: sku_per_order {
    type: number
    sql: ${TABLE}.sku_per_order ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: to_city {
    type: string
    sql: ${TABLE}.to_City ;;
  }

  dimension: to_pincode {
    type: number
    sql: ${TABLE}.to_Pincode ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.WarehouseId ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.Zone ;;
  }

  measure: count {
    type: count
    drill_fields: [sellername]
  }
}
