view: dwb_user_am_new_account_registered_traffic_source_i_d {
  sql_table_name: `dwb_utc_00.dwb_user_am_new_account_registered_traffic_source_i_d`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: first_touch_event_name {
    type: string
    sql: ${TABLE}.first_touch_event_name ;;
  }

  dimension: first_touch_page_location {
    type: string
    sql: ${TABLE}.first_touch_page_location ;;
  }

  dimension: first_touch_page_referrer {
    type: string
    sql: ${TABLE}.first_touch_page_referrer ;;
  }

  dimension: first_touch_page_referrer_doamin {
    type: string
    sql: ${TABLE}.first_touch_page_referrer_doamin ;;
  }

  dimension: ga_client_id {
    type: string
    sql: ${TABLE}.ga_client_id ;;
  }

  dimension_group: processing {
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
    sql: ${TABLE}.processing_time ;;
  }

  dimension: register_method {
    type: string
    sql: ${TABLE}.register_method ;;
  }

  dimension_group: register {
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
    sql: ${TABLE}.register_time ;;
  }

  dimension: register_traffic_source_by_first_model {
    type: string
    sql: ${TABLE}.register_traffic_source_by_first_model ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_source_domain {
    type: string
    sql: ${TABLE}.utm_source_domain ;;
  }

  measure: count {
    type: count
    drill_fields: [first_touch_event_name]
  }
}
