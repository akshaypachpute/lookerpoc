connection: "dev-bq-connection"

# include all the views
include: "/views/**/*.view"

datagroup: gmvreporttest_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gmvreporttest_default_datagroup

explore: gmv_forward_april {}
