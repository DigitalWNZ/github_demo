view: dwb_flow_as_pageview_i_d {
  sql_table_name: `dwb_utc_00.dwb_flow_as_pageview_i_d`
    ;;

  dimension_group: event {
    type: time
    description: "事件日期"
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
    description: "事件名称"
    sql: ${TABLE}.event_name ;;
  }

  dimension_group: event_timestamp {
    type: time
    description: "事件时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: ga_session_id {
    type: number
    description: "ga_session_id"
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: organization_id {
    type: string
    description: "organization_id"
    sql: ${TABLE}.organization_id ;;
  }

  dimension: organization_legacy_id {
    type: string
    description: "legacy_id"
    sql: ${TABLE}.organization_legacy_id ;;
  }

  dimension: organization_short_name {
    type: string
    description: "short_name"
    sql: ${TABLE}.organization_short_name ;;
  }

  dimension: organization_website {
    type: string
    description: "organization_website"
    sql: ${TABLE}.organization_website ;;
  }

  dimension: origin_organization {
    type: string
    description: "上报org"
    sql: ${TABLE}.origin_organization ;;
  }

  dimension: page {
    type: string
    description: "页面"
    sql: ${TABLE}.page ;;
  }

  dimension: page_location {
    type: string
    description: "页面地址"
    sql: ${TABLE}.page_location ;;
  }

  dimension: page_theme {
    type: string
    description: "页面主题"
    sql: ${TABLE}.page_theme ;;
  }

  dimension: page_title {
    type: string
    description: "页面标题"
    sql: ${TABLE}.page_title ;;
  }

  dimension: page_topic {
    type: string
    description: "页面分类"
    sql: ${TABLE}.page_topic ;;
  }

  dimension_group: processing {
    type: time
    description: "数据处理时间"
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

  dimension: subscription_plan_name {
    type: string
    description: "subscription_plan_name"
    sql: ${TABLE}.subscription_plan_name ;;
  }

  measure: count {
    type: count
    drill_fields: [subscription_plan_name, organization_short_name, event_name]
  }
}
