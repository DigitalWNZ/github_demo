view: dwb_flow_at_databus_tracking_suggest_result_i_d {
  sql_table_name: `dwb_utc_00.dwb_flow_at_databus_tracking_suggest_result_i_d`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    description: "event id"
    sql: ${TABLE}.id ;;
  }

  dimension: abtest_group {
    type: string
    description: "A/B testing group"
    sql: ${TABLE}.abtest_group ;;
  }

  dimension: acct_id {
    type: string
    description: "用户输入的原始 tracking_number"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: country_iso2 {
    type: string
    description: "country iso2 code"
    sql: ${TABLE}.country_iso2 ;;
  }

  dimension: courier_detect_data__is_default_filled {
    type: string
    sql: ${TABLE}.courier_detect_data.is_default_filled ;;
    group_label: "Courier Detect Data"
    group_item_label: "Is Default Filled"
  }

  dimension: courier_detect_data__slugs {
    hidden: yes
    sql: ${TABLE}.courier_detect_data.slugs ;;
    group_label: "Courier Detect Data"
    group_item_label: "Slugs"
  }

  dimension: event {
    type: string
    description: "事件名"
    sql: ${TABLE}.event ;;
  }

  dimension_group: event_ts {
    type: time
    description: "事件时间戳"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_ts ;;
  }

  dimension_group: processing {
    type: time
    description: "分区时间"
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

  dimension: suggest_rule_id {
    type: string
    description: "rule_id of suggest rule"
    sql: ${TABLE}.suggest_rule_id ;;
  }

  dimension: suggest_tracking_number {
    type: string
    description: "invalid_tracking_number, courier_detect, order_number"
    sql: ${TABLE}.suggest_tracking_number ;;
  }

  dimension: suggest_type {
    type: string
    description: "组织 ID"
    sql: ${TABLE}.suggest_type ;;
  }

  dimension: tracking_number {
    type: string
    description: "后台根据白名单规则推荐的 tracking_number"
    sql: ${TABLE}.tracking_number ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: dwb_flow_at_databus_tracking_suggest_result_i_d__courier_detect_data__slugs {
  dimension: dwb_flow_at_databus_tracking_suggest_result_i_d__courier_detect_data__slugs {
    type: string
    sql: dwb_flow_at_databus_tracking_suggest_result_i_d__courier_detect_data__slugs ;;
  }
}
