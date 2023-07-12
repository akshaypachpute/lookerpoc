view: tbl_order_other_info {
  sql_table_name: `fkh-dev-data-prj-svc-4fd4.LOOKER.tblOrderOtherInfo`
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

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderId ;;
  }

  dimension: order_other_info_id {
    type: number
    sql: ${TABLE}.OrderOtherInfoId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
