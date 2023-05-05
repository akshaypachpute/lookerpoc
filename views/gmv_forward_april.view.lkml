view: gmv_forward_april {
  sql_table_name: `LOOKER.gmv_Forward_April`
    ;;

  dimension: additional_coupon_promo_discount {
    type: number
    sql: ${TABLE}.AdditionalCouponPromoDiscount ;;
  }

  dimension: analytic_business_unit_name {
    type: string
    sql: ${TABLE}.analytic_business_unit_name ;;
  }

  dimension: analytic_vertical_name {
    type: string
    sql: ${TABLE}.analytic_vertical_name ;;
  }

  dimension: bank_disc {
    type: number
    sql: ${TABLE}.BankDisc ;;
  }

  dimension: bank_disc_bank {
    type: number
    sql: ${TABLE}.BankDisc_Bank ;;
  }

  dimension: bank_disc_fapl {
    type: number
    sql: ${TABLE}.BankDisc_FAPL ;;
  }

  dimension: bank_disc_seller {
    type: number
    sql: ${TABLE}.BankDisc_SELLER ;;
  }

  dimension: cash_discount {
    type: number
    sql: ${TABLE}.CashDiscount ;;
  }

  dimension: cgstshipping_value {
    type: number
    sql: ${TABLE}.CGSTShippingValue ;;
  }

  dimension: cgstvalue {
    type: number
    sql: ${TABLE}.CGSTValue ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: child_order_id {
    type: number
    sql: ${TABLE}.ChildOrderId ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.Commission ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: coupon_promo_id {
    type: number
    sql: ${TABLE}.CouponPromoId ;;
  }

  dimension: cpd_income {
    type: number
    sql: ${TABLE}.CPD_INCOME ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: cust_user_id {
    type: number
    sql: ${TABLE}.CustUserId ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.CUSTOMER_TYPE ;;
  }

  dimension_group: delivery {
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
    sql: ${TABLE}.DeliveryDate ;;
  }

  dimension_group: delivery_marked {
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
    sql: ${TABLE}.Delivery_Marked_Date ;;
  }

  dimension: final_marketplace_id {
    type: string
    sql: ${TABLE}.final_marketplace_id ;;
  }

  dimension: final_refund_status {
    type: string
    sql: ${TABLE}.FinalRefundStatus ;;
  }

  dimension: fkhpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FKHPaid ;;
  }

  dimension: from_city {
    type: string
    sql: ${TABLE}.from_City ;;
  }

  dimension: from_pincode {
    type: number
    sql: ${TABLE}.from_Pincode ;;
  }

  dimension: gmv_tag {
    type: string
    sql: ${TABLE}.Gmv_tag ;;
  }

  dimension: gstin {
    type: string
    sql: ${TABLE}.GSTIN ;;
  }

  dimension: hb_online {
    type: string
    sql: ${TABLE}.HB_Online ;;
  }

  dimension_group: hbto_customer_sale_invoice_printing {
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
    sql: ${TABLE}.HBtoCustomerSaleInvoicePrintingDate ;;
  }

  dimension: igstshipping_value {
    type: number
    sql: ${TABLE}.IGSTShippingValue ;;
  }

  dimension: igstvalue {
    type: number
    sql: ${TABLE}.IGSTValue ;;
  }

  dimension: is_juspay {
    type: string
    sql: ${TABLE}.IS_JUSPAY ;;
  }

  dimension: marketplace_id {
    type: string
    sql: ${TABLE}.marketplace_id ;;
  }

  dimension: monthly_customer_type {
    type: string
    sql: ${TABLE}.Monthly_CustomerType ;;
  }

  dimension: mrpval {
    type: number
    sql: ${TABLE}.MRPVal ;;
  }

  dimension: net {
    type: number
    sql: ${TABLE}.Net ;;
  }

  dimension: offer_id {
    type: string
    sql: ${TABLE}.OfferId ;;
  }

  dimension_group: order {
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

  dimension: order_status_desc {
    type: string
    sql: ${TABLE}.OrderStatusDesc ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: pan_number {
    type: string
    sql: ${TABLE}.PanNumber ;;
  }

  dimension: parent_order_id {
    type: number
    sql: ${TABLE}.ParentOrderId ;;
  }

  dimension: payment_gate_way {
    type: string
    sql: ${TABLE}.PaymentGateWay ;;
  }

  dimension: payment_instrument_type {
    type: string
    sql: ${TABLE}.Payment_Instrument_Type ;;
  }

  dimension: pg_ref_id {
    type: string
    sql: ${TABLE}.PgRefId ;;
  }

  dimension: placed_from {
    type: string
    sql: ${TABLE}.PlacedFrom ;;
  }

  dimension: postpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Postpaid ;;
  }

  dimension: prepaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Prepaid ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.PromoCode ;;
  }

  dimension: promo_desc {
    type: string
    sql: ${TABLE}.PromoDesc ;;
  }

  dimension: pure_prepaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PurePrepaid ;;
  }

  dimension: qcpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.QCPaid ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: rc_shipping_income {
    type: number
    sql: ${TABLE}.RC_Shipping_Income ;;
  }

  dimension: refund_payment_gateway_transac_no {
    type: string
    sql: ${TABLE}.RefundPaymentGatewayTransacNo ;;
  }

  dimension: rto_tag {
    type: string
    sql: ${TABLE}.RTO_tag ;;
  }

  dimension: rvp_tag {
    type: string
    sql: ${TABLE}.RVP_tag ;;
  }

  dimension: seller_category {
    type: string
    sql: ${TABLE}.Seller_Category ;;
  }

  dimension: seller_category2 {
    type: string
    sql: ${TABLE}.Seller_Category2 ;;
  }

  dimension: seller_code {
    type: string
    sql: ${TABLE}.Seller_Code ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.seller_id ;;
  }

  dimension: seller_state_name {
    type: string
    sql: ${TABLE}.SellerStateName ;;
  }

  dimension: seller_type {
    type: string
    sql: ${TABLE}.Seller_type ;;
  }

  dimension: seller_type2 {
    type: string
    sql: ${TABLE}.Seller_type2 ;;
  }

  dimension: sellername {
    type: string
    sql: ${TABLE}.Sellername ;;
  }

  dimension: sgstshipping_value {
    type: number
    sql: ${TABLE}.SGSTShippingValue ;;
  }

  dimension: sgstvalue {
    type: number
    sql: ${TABLE}.SGSTValue ;;
  }

  dimension: shipment_status {
    type: string
    sql: ${TABLE}.ShipmentStatus ;;
  }

  dimension: shipping_charge {
    type: number
    sql: ${TABLE}.ShippingCharge ;;
  }

  dimension: shipping_gstvalue {
    type: number
    sql: ${TABLE}.ShippingGSTValue ;;
  }

  dimension_group: status_updated {
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
    sql: ${TABLE}.StatusUpdatedDate ;;
  }

  dimension: sub_warehouse_id {
    type: number
    sql: ${TABLE}.Sub_WarehouseId ;;
  }

  dimension: taxable {
    type: number
    sql: ${TABLE}.Taxable ;;
  }

  dimension: tcs_cgst {
    type: number
    sql: ${TABLE}.TCS_cgst ;;
  }

  dimension: tcs_igst {
    type: number
    sql: ${TABLE}.TCS_igst ;;
  }

  dimension: tcs_sgst {
    type: number
    sql: ${TABLE}.TCS_sgst ;;
  }

  dimension: tcs_total {
    type: number
    sql: ${TABLE}.TCS_Total ;;
  }

  dimension: tds_total {
    type: number
    sql: ${TABLE}.TDS_Total ;;
  }

  dimension: to_city {
    type: string
    sql: ${TABLE}.to_City ;;
  }

  dimension: to_pincode {
    type: number
    sql: ${TABLE}.to_Pincode ;;
  }

  dimension: total_cess_value {
    type: number
    sql: ${TABLE}.TotalCessValue ;;
  }

  dimension: total_gst_value {
    type: number
    sql: ${TABLE}.TotalGstValue ;;
  }

  dimension: tracking_id {
    type: string
    sql: ${TABLE}.TrackingId ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.Vendor_Name ;;
  }

  dimension: wallet_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.WalletPaid ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.WarehouseId ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WarehouseName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      warehouse_name,
      company_name,
      analytic_vertical_name,
      seller_state_name,
      vendor_name,
      analytic_business_unit_name,
      sellername
    ]
  }
}
