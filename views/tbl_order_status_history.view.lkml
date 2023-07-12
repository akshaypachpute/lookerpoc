view: tbl_order_status_history {
  sql_table_name: `fkh-dev-data-prj-svc-4fd4.LOOKER.tblOrderStatusHistory`
    ;;

  dimension: app_version {
    type: string
    sql: ${TABLE}.AppVersion ;;
  }

  dimension: application_type {
    type: string
    sql: ${TABLE}.ApplicationType ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderId ;;
  }

  dimension: order_status_history_id {
    type: number
    sql: ${TABLE}.OrderStatusHistoryId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: processed_by {
    type: string
    sql: ${TABLE}.ProcessedBy ;;
  }

  dimension_group: sync {
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
    sql: ${TABLE}.SyncDate ;;
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
