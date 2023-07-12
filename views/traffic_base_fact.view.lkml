view: traffic_base_fact {
  sql_table_name: `LOOKER.Traffic_base_fact`
    ;;

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: article_category {
    type: string
    sql: ${TABLE}.article_category ;;
  }

  dimension: article_name {
    type: string
    sql: ${TABLE}.article_name ;;
  }

  dimension: autocorrected_query {
    type: string
    sql: ${TABLE}.autocorrected_query ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: client_id_event {
    type: string
    sql: ${TABLE}.client_id_event ;;
  }

  dimension: client_id_user {
    type: string
    sql: ${TABLE}.client_id_user ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: coupon {
    type: string
    sql: ${TABLE}.coupon ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_discount_percentage {
    type: string
    sql: ${TABLE}.coupon_discount_percentage ;;
  }

  dimension: coupon_expiry_date {
    type: string
    sql: ${TABLE}.coupon_expiry_date ;;
  }

  dimension: coupon_name {
    type: string
    sql: ${TABLE}.coupon_name ;;
  }

  dimension: creative_slot {
    type: string
    sql: ${TABLE}.creative_slot ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: debug_mode {
    type: string
    sql: ${TABLE}.debug_mode ;;
  }

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.DeviceCategory ;;
  }

  dimension: device_operating_system {
    type: string
    sql: ${TABLE}.DeviceOperatingSystem ;;
  }

  dimension: edit_option {
    type: string
    sql: ${TABLE}.edit_option ;;
  }

  dimension: engaged_session_event {
    type: string
    sql: ${TABLE}.engaged_session_event ;;
  }

  dimension: engagement_time_msec {
    type: string
    sql: ${TABLE}.engagement_time_msec ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension_group: event_date {
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension_group: event_time {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: events_source {
    type: string
    sql: ${TABLE}.events_source ;;
  }

  dimension: file_extension {
    type: string
    sql: ${TABLE}.file_extension ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: firebase_conversion {
    type: string
    sql: ${TABLE}.firebase_conversion ;;
  }

  dimension: first_field_position {
    type: string
    sql: ${TABLE}.first_field_position ;;
  }

  dimension: first_field_type {
    type: string
    sql: ${TABLE}.first_field_type ;;
  }

  dimension: form_destination {
    type: string
    sql: ${TABLE}.form_destination ;;
  }

  dimension: form_id {
    type: string
    sql: ${TABLE}.form_id ;;
  }

  dimension: form_length {
    type: string
    sql: ${TABLE}.form_length ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: ga_session_number {
    type: string
    sql: ${TABLE}.ga_session_number ;;
  }

  dimension: gclid {
    type: string
    sql: ${TABLE}.gclid ;;
  }

  dimension: geo_city {
    type: string
    sql: ${TABLE}.GeoCity ;;
  }

  dimension: geo_region {
    type: string
    sql: ${TABLE}.GeoRegion ;;
  }

  dimension: ignore_referrer {
    type: string
    sql: ${TABLE}.ignore_referrer ;;
  }

  dimension: in_stock_count {
    type: string
    sql: ${TABLE}.in_stock_count ;;
  }

  dimension: link_domain {
    type: string
    sql: ${TABLE}.link_domain ;;
  }

  dimension: link_text {
    type: string
    sql: ${TABLE}.link_text ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_select_way {
    type: string
    sql: ${TABLE}.location_select_way ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: navigation_header {
    type: string
    sql: ${TABLE}.navigation_header ;;
  }

  dimension: no_of_suggestions {
    type: string
    sql: ${TABLE}.no_of_suggestions ;;
  }

  dimension: order_cancel_reason {
    type: string
    sql: ${TABLE}.order_cancel_reason ;;
  }

  dimension: original_query {
    type: string
    sql: ${TABLE}.original_query ;;
  }

  dimension: out_of_stock_count {
    type: string
    sql: ${TABLE}.out_of_stock_count ;;
  }

  dimension: outbound {
    type: string
    sql: ${TABLE}.outbound ;;
  }

  dimension: page_location {
    type: string
    sql: ${TABLE}.page_location ;;
  }

  dimension: page_referrer {
    type: string
    sql: ${TABLE}.page_referrer ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.page_title ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: prescription_upload_option {
    type: string
    sql: ${TABLE}.prescription_upload_option ;;
  }

  dimension: prevenue_28d {
    type: string
    sql: ${TABLE}.prevenue_28d ;;
  }

  dimension: previous_screen_name {
    type: string
    sql: ${TABLE}.previous_screen_name ;;
  }

  dimension: previous_search_word {
    type: string
    sql: ${TABLE}.previous_search_word ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: product_composition_description {
    type: string
    sql: ${TABLE}.product_composition_description ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productID ;;
  }

  dimension: product_qty {
    type: string
    sql: ${TABLE}.product_qty ;;
  }

  dimension: product_rating {
    type: string
    sql: ${TABLE}.product_rating ;;
  }

  dimension: product_subcategory {
    type: string
    sql: ${TABLE}.product_subcategory ;;
  }

  dimension: profile_options {
    type: string
    sql: ${TABLE}.profile_options ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: question_category {
    type: string
    sql: ${TABLE}.question_category ;;
  }

  dimension: rc_nc_flag {
    type: string
    sql: ${TABLE}.rc_nc_flag ;;
  }

  dimension: screen_name {
    type: string
    sql: ${TABLE}.screen_name ;;
  }

  dimension: search_method {
    type: string
    sql: ${TABLE}.search_method ;;
  }

  dimension: search_product_count {
    type: string
    sql: ${TABLE}.search_product_count ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.search_term ;;
  }

  dimension: selected_city {
    type: string
    sql: ${TABLE}.selected_city ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.seller_name ;;
  }

  dimension: session_engaged {
    type: string
    sql: ${TABLE}.session_engaged ;;
  }

  dimension: shipping {
    type: string
    sql: ${TABLE}.shipping ;;
  }

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: suggestion_rank {
    type: string
    sql: ${TABLE}.suggestion_rank ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}.traffic_source_medium ;;
  }

  dimension: traffic_source_name {
    type: string
    sql: ${TABLE}.traffic_source_name ;;
  }

  dimension: traffic_source_source {
    type: string
    sql: ${TABLE}.traffic_source_source ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: tray_name {
    type: string
    sql: ${TABLE}.tray_name ;;
  }

  dimension: unique_search_term {
    type: string
    sql: ${TABLE}.unique_search_term ;;
  }

  dimension: user_first_touch_timestamp {
    type: number
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: user_ltv_currency {
    type: string
    sql: ${TABLE}.user_ltv_currency ;;
  }

  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: visitor_type {
    type: string
    sql: ${TABLE}.visitor_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      coupon_name,
      seller_name,
      screen_name,
      previous_screen_name,
      article_name,
      traffic_source_name,
      tray_name,
      event_name,
      file_name
    ]
  }
}
