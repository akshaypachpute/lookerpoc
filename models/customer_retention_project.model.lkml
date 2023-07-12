connection: "prod-bq-connection"

# include all the views
include: "/views/**/*.view"

datagroup: customer_retention_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: customer_retention_project_default_datagroup




explore: customerretention {}

explore: month_base_table {
  join: all_orders
  {
    sql_on: ${month_base_table.custuserid} = ${all_orders.custuserid} and ${all_orders.orderdate_date} > ${month_base_table.repeat_measure_date};;
    type: left_outer
    relationship: one_to_many
  }

}
