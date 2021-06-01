view: dwb_user_am_accounts_register_traffic_i_d {
  sql_table_name: `dwb_utc_00.dwb_user_am_accounts_register_traffic_i_d`
    ;;

  dimension: account_id {
    type: string
    description: "账户ID"
    sql: ${TABLE}.account_id ;;
  }

  dimension: event_name {
    type: string
    description: "首次前端事件名"
    sql: ${TABLE}.event_name ;;
  }

  dimension: ga_client_id {
    type: string
    description: "google client id"
    sql: ${TABLE}.ga_client_id ;;
  }

  dimension: page_location {
    type: string
    description: "首次页面访问地址"
    sql: ${TABLE}.page_location ;;
  }

  dimension: page_referrer {
    type: string
    description: "首次页面访问地址 referrer 地址"
    sql: ${TABLE}.page_referrer ;;
  }

  dimension: page_referrer_domain {
    type: string
    description: "根据首次访问地址 referrer 地址解析二级域名"
    sql: ${TABLE}.page_referrer_domain ;;
  }

  dimension_group: processing {
    type: time
    description: "计算时间"
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

  dimension: register_medium {
    type: string
    description: "清洗注册方式"
    sql: ${TABLE}.register_medium ;;
  }

  dimension: register_method {
    type: string
    description: "注册登录方式(Google,Shopify,Email)"
    sql: ${TABLE}.register_method ;;
  }

  dimension: register_source {
    type: string
    description: "清洗注册来源"
    sql: ${TABLE}.register_source ;;
  }

  dimension_group: registered {
    type: time
    description: "注册时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.registered_time ;;
  }

  dimension: traffic_name {
    type: string
    description: "GA traffic_name"
    sql: ${TABLE}.traffic_name ;;
  }

  dimension: utm_medium {
    type: string
    description: "GA utm_medium"
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    description: "GA utm_source"
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_source_domain {
    type: string
    description: "GA 根据 utm_source 解析二级域名"
    sql: ${TABLE}.utm_source_domain ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name, traffic_name]
  }
}
