view: tbl_order_payment_getway {
  sql_table_name: `fkh-dev-data-prj-svc-4fd4.LOOKER.tblOrderPaymentGetway`
    ;;

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: device_details {
    type: string
    sql: ${TABLE}.DeviceDetails ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderId ;;
  }

  dimension: order_payment_getway_id {
    type: number
    sql: ${TABLE}.OrderPaymentGetwayId ;;
  }

  dimension: parent_order_payment_getway_id {
    type: number
    sql: ${TABLE}.ParentOrderPaymentGetwayId ;;
  }

  dimension: payment_gate_way {
    type: string
    sql: ${TABLE}.PaymentGateWay ;;
  }

  dimension: payment_getway_transac_no {
    type: string
    sql: ${TABLE}.PaymentGetwayTransacNo ;;
  }

  dimension: special_gate_way_transac_no {
    type: string
    sql: ${TABLE}.SpecialGateWayTransacNo ;;
  }

  dimension: transaction_commit_lsn {
    type: string
    sql: ${TABLE}.transaction_commit_lsn ;;
  }

  dimension_group: transaction_commit_ts {
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
    sql: ${TABLE}.UpdatedDate ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.UserAgent ;;
  }

  dimension: user_ip {
    type: string
    sql: ${TABLE}.UserIP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
