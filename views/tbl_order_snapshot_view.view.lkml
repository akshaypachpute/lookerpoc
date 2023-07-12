view: tbl_order_snapshot_view {
  sql_table_name: `fkh-prod-bd-prj-svc-35dc.looker.tblOrder_snapshot_view` ;;

  dimension: affiliate_mas_id {
    type: number
    sql: ${TABLE}.AffiliateMasId ;;
  }
  dimension: affiliated_user_id {
    type: number
    sql: ${TABLE}.AffiliatedUserId ;;
  }
  dimension: app_version {
    type: string
    sql: ${TABLE}.AppVersion ;;
  }
  dimension: application_type {
    type: string
    sql: ${TABLE}.ApplicationType ;;
  }
  dimension_group: approval {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ApprovalDate ;;
  }
  dimension: bank_disc {
    type: number
    sql: ${TABLE}.BankDisc ;;
  }
  dimension: billing_address_id {
    type: number
    sql: ${TABLE}.BillingAddressId ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }
  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }
  dimension_group: confirmation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ConfirmationDate ;;
  }
  dimension: coupon_discount {
    type: number
    sql: ${TABLE}.CouponDiscount ;;
  }
  dimension: coupon_promo_desc {
    type: string
    sql: ${TABLE}.CouponPromoDesc ;;
  }
  dimension: coupon_promo_id {
    type: number
    sql: ${TABLE}.CouponPromoId ;;
  }
  dimension: courier_charge {
    type: number
    sql: ${TABLE}.CourierCharge ;;
  }
  dimension: courier_comp_mas_id {
    type: number
    sql: ${TABLE}.CourierCompMasId ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CreatedDate ;;
  }
  dimension: crmassigned_by {
    type: number
    sql: ${TABLE}.CRMAssignedBy ;;
  }
  dimension: crmassigned_to {
    type: number
    sql: ${TABLE}.CRMAssignedTo ;;
  }
  dimension: crmcomment {
    type: string
    sql: ${TABLE}.CRMComment ;;
  }
  dimension: crmstatus_id {
    type: number
    sql: ${TABLE}.CRMStatusId ;;
  }
  dimension_group: crmverification {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CRMVerificationDate ;;
  }
  dimension: crmverified_by {
    type: number
    sql: ${TABLE}.CRMVerifiedBy ;;
  }
  dimension: cust_comment {
    type: string
    sql: ${TABLE}.CustComment ;;
  }
  dimension: cust_user_id {
    type: number
    sql: ${TABLE}.CustUserId ;;
  }
  dimension_group: daassign {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.DAAssignDate ;;
  }
  dimension: delivery_assistant {
    type: number
    sql: ${TABLE}.DeliveryAssistant ;;
  }
  dimension: delivery_delayed_day {
    type: number
    sql: ${TABLE}.DeliveryDelayedDay ;;
  }
  dimension: delivery_preference {
    type: string
    sql: ${TABLE}.DeliveryPreference ;;
  }
  dimension_group: dispatched {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.DispatchedDate ;;
  }
  dimension: doctor_address_id {
    type: number
    sql: ${TABLE}.DoctorAddressId ;;
  }
  dimension: doctor_contact_no {
    type: string
    sql: ${TABLE}.DoctorContactNo ;;
  }
  dimension: doctor_master_id {
    type: number
    sql: ${TABLE}.DoctorMasterId ;;
  }
  dimension: doctor_reg_no {
    type: string
    sql: ${TABLE}.DoctorRegNo ;;
  }
  dimension_group: doctor_verification {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.DoctorVerificationDate ;;
  }
  dimension: doctor_verification_status {
    type: number
    sql: ${TABLE}.DoctorVerificationStatus ;;
  }
  dimension: doctor_verified_by {
    type: number
    sql: ${TABLE}.DoctorVerifiedBy ;;
  }
  dimension: express_delivery_charge {
    type: number
    sql: ${TABLE}.ExpressDeliveryCharge ;;
  }
  dimension: free_gift {
    type: number
    sql: ${TABLE}.FreeGift ;;
  }
  dimension: gift_card_back_image {
    type: string
    sql: ${TABLE}.GiftCardBackImage ;;
  }
  dimension: gift_card_front_image {
    type: string
    sql: ${TABLE}.GiftCardFrontImage ;;
  }
  dimension: gift_card_inner_text {
    type: string
    sql: ${TABLE}.GiftCardInnerText ;;
  }
  dimension_group: gift_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GiftDeliveryDate ;;
  }
  dimension: gift_occasion {
    type: number
    sql: ${TABLE}.GiftOccasion ;;
  }
  dimension: group_promo_discount {
    type: number
    sql: ${TABLE}.GroupPromoDiscount ;;
  }
  dimension: group_promo_id {
    type: number
    sql: ${TABLE}.GroupPromoId ;;
  }
  dimension: has_rcm {
    type: yesno
    sql: ${TABLE}.HasRCM ;;
  }
  dimension: hbdelivery_assigned {
    type: number
    sql: ${TABLE}.HBDeliveryAssigned ;;
  }
  dimension: hbid {
    type: number
    value_format_name: id
    sql: ${TABLE}.HBId ;;
  }
  dimension_group: hbpharmaverification {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.HBPharmaverificationDate ;;
  }
  dimension: hbpharmaverifiedby {
    type: number
    sql: ${TABLE}.HBPharmaverifiedby ;;
  }
  dimension: in_source_comp_id {
    type: number
    sql: ${TABLE}.InSourceCompId ;;
  }
  dimension: integration_id {
    type: number
    sql: ${TABLE}.IntegrationId ;;
  }
  dimension: interactive_module {
    type: string
    sql: ${TABLE}.InteractiveModule ;;
  }
  dimension: is_communicated {
    type: yesno
    sql: ${TABLE}.IsCommunicated ;;
  }
  dimension: is_courier_order {
    type: yesno
    sql: ${TABLE}.IsCourierOrder ;;
  }
  dimension: is_edited {
    type: yesno
    sql: ${TABLE}.IsEdited ;;
  }
  dimension: is_express_delivery {
    type: yesno
    sql: ${TABLE}.IsExpressDelivery ;;
  }
  dimension: is_first_order {
    type: yesno
    sql: ${TABLE}.IsFirstOrder ;;
  }
  dimension: is_gift_order {
    type: yesno
    sql: ${TABLE}.IsGiftOrder ;;
  }
  dimension: is_hbprescription_checked {
    type: yesno
    sql: ${TABLE}.IsHBPrescriptionChecked ;;
  }
  dimension: is_order_by_presc {
    type: yesno
    sql: ${TABLE}.IsOrderByPresc ;;
  }
  dimension: is_pres_requested {
    type: yesno
    sql: ${TABLE}.IsPresRequested ;;
  }
  dimension: is_push_send {
    type: yesno
    sql: ${TABLE}.IsPushSend ;;
  }
  dimension: is_replace_order {
    type: yesno
    sql: ${TABLE}.IsReplaceOrder ;;
  }
  dimension: is_rsplorder {
    type: yesno
    sql: ${TABLE}.IsRSPLOrder ;;
  }
  dimension: is_same_day_order {
    type: yesno
    sql: ${TABLE}.IsSameDayOrder ;;
  }
  dimension: is_smssend {
    type: yesno
    sql: ${TABLE}.IsSMSSEnd ;;
  }
  dimension: is_special_rsorder {
    type: number
    sql: ${TABLE}.IsSpecialRSOrder ;;
  }
  dimension: is_split_order {
    type: yesno
    sql: ${TABLE}.IsSplitOrder ;;
  }
  dimension: is_tax_order {
    type: yesno
    sql: ${TABLE}.IsTaxOrder ;;
  }
  dimension: is_tbproduct {
    type: yesno
    sql: ${TABLE}.IsTBProduct ;;
  }
  dimension: is_urgent {
    type: yesno
    sql: ${TABLE}.IsUrgent ;;
  }
  dimension: item_discount {
    type: number
    sql: ${TABLE}.ItemDiscount ;;
  }
  dimension: item_edit_comment {
    type: string
    sql: ${TABLE}.ItemEditComment ;;
  }
  dimension: label_print_status {
    type: yesno
    sql: ${TABLE}.LabelPrintStatus ;;
  }
  dimension: my_family_id {
    type: number
    sql: ${TABLE}.MyFamilyId ;;
  }
  dimension: need_to_retain_original_order_val {
    type: string
    sql: ${TABLE}.NeedToRetainOriginalOrderVal ;;
  }
  dimension: no_days_medicine_dispensed {
    type: number
    sql: ${TABLE}.NoDaysMedicineDispensed ;;
  }
  dimension: num_med_order_month {
    type: number
    sql: ${TABLE}.NumMedOrderMonth ;;
  }
  dimension: offer_id {
    type: string
    sql: ${TABLE}.OfferId ;;
  }
  dimension: offer_rule {
    type: string
    sql: ${TABLE}.OfferRule ;;
  }
  dimension: ord_wgt {
    type: number
    sql: ${TABLE}.OrdWgt ;;
  }
  dimension: ord_wgt_units {
    type: string
    sql: ${TABLE}.OrdWgtUnits ;;
  }
  dimension: order_amount {
    type: number
    sql: ${TABLE}.OrderAmount ;;
  }
  dimension: order_bill_amount {
    type: number
    sql: ${TABLE}.OrderBillAmount ;;
  }
  dimension: order_busket_id {
    type: number
    sql: ${TABLE}.OrderBusketId ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.OrderDate ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderId ;;
  }
  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.OrderType ;;
  }
  dimension: order_unq_id {
    type: number
    sql: ${TABLE}.OrderUnqId ;;
  }
  dimension: ordered_by {
    type: string
    sql: ${TABLE}.OrderedBy ;;
  }
  dimension: pay_status_id {
    type: number
    sql: ${TABLE}.PayStatusId ;;
  }
  dimension: pharma_assigned_by {
    type: number
    sql: ${TABLE}.PharmaAssignedBy ;;
  }
  dimension: pharma_assigned_to {
    type: number
    sql: ${TABLE}.PharmaAssignedTo ;;
  }
  dimension: pharma_comment {
    type: string
    sql: ${TABLE}.PharmaComment ;;
  }
  dimension: pharma_status_id {
    type: number
    sql: ${TABLE}.PharmaStatusId ;;
  }
  dimension_group: pharma_verification {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.PharmaVerificationDate ;;
  }
  dimension: pharma_verified_by {
    type: number
    sql: ${TABLE}.PharmaVerifiedBy ;;
  }
  dimension: prescription_id {
    type: number
    sql: ${TABLE}.PrescriptionId ;;
  }
  dimension: prescription_status_id {
    type: number
    sql: ${TABLE}.PrescriptionStatusId ;;
  }
  dimension: product_track_id {
    type: number
    sql: ${TABLE}.ProductTrackId ;;
  }
  dimension: promo_desc {
    type: string
    sql: ${TABLE}.PromoDesc ;;
  }
  dimension: promo_discount {
    type: number
    sql: ${TABLE}.PromoDiscount ;;
  }
  dimension: promo_id {
    type: number
    sql: ${TABLE}.PromoId ;;
  }
  dimension: re_order_days {
    type: number
    sql: ${TABLE}.ReOrderDays ;;
  }
  dimension: reason_to_decline {
    type: string
    sql: ${TABLE}.ReasonToDecline ;;
  }
  dimension: reason_to_hold {
    type: string
    sql: ${TABLE}.ReasonToHold ;;
  }
  dimension: recheck_by {
    type: number
    sql: ${TABLE}.RecheckBy ;;
  }
  dimension_group: recheck {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.RecheckDate ;;
  }
  dimension: ref_order_id {
    type: number
    sql: ${TABLE}.RefOrderId ;;
  }
  dimension: retain_order_val_for_xplor {
    type: string
    sql: ${TABLE}.RetainOrderValForXplor ;;
  }
  dimension: reward_gift {
    type: string
    sql: ${TABLE}.RewardGift ;;
  }
  dimension: reward_gift_value {
    type: number
    sql: ${TABLE}.RewardGiftValue ;;
  }
  dimension: round_of_sign {
    type: string
    sql: ${TABLE}.RoundOfSign ;;
  }
  dimension: round_of_val {
    type: number
    sql: ${TABLE}.RoundOfVal ;;
  }
  dimension: rsintegration_id {
    type: number
    sql: ${TABLE}.RSIntegrationId ;;
  }
  dimension_group: schedule_delivery {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ScheduleDeliveryDate ;;
  }
  dimension: seller_mas_id {
    type: number
    sql: ${TABLE}.SellerMasId ;;
  }
  dimension: shipping_address_id {
    type: number
    sql: ${TABLE}.ShippingAddressId ;;
  }
  dimension: shipping_charge {
    type: number
    sql: ${TABLE}.ShippingCharge ;;
  }
  dimension: shipping_charge_removal_comment {
    type: string
    sql: ${TABLE}.ShippingChargeRemovalComment ;;
  }
  dimension_group: shipping_charge_removal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ShippingChargeRemovalDate ;;
  }
  dimension: shipping_charge_removed_by {
    type: number
    sql: ${TABLE}.ShippingChargeRemovedBy ;;
  }
  dimension: slt_prod_category {
    type: number
    sql: ${TABLE}.SltProdCategory ;;
  }
  dimension: slt_schedule {
    type: string
    sql: ${TABLE}.SltSchedule ;;
  }
  dimension: source_order_id {
    type: number
    sql: ${TABLE}.SourceOrderId ;;
  }
  dimension: subscription_discount {
    type: number
    sql: ${TABLE}.SubscriptionDiscount ;;
  }
  dimension: subscription_id {
    type: number
    sql: ${TABLE}.SubscriptionId ;;
  }
  dimension: supervising_doctor {
    type: string
    sql: ${TABLE}.SupervisingDoctor ;;
  }
  dimension: swhstatus_id {
    type: number
    sql: ${TABLE}.SWHStatusId ;;
  }
  dimension: transaction_commit_lsn {
    type: string
    sql: ${TABLE}.transaction_commit_lsn ;;
  }
  dimension_group: transaction_commit_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.transaction_commit_ts ;;
  }
  dimension: transaction_event_serial_no {
    type: number
    sql: ${TABLE}.transaction_event_serial_no ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.UpdatedBy ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.UpdatedDate ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }
  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.WarehouseId ;;
  }
  measure: count {
    type: count
  }
}
