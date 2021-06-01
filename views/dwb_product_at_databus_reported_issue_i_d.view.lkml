view: dwb_product_at_databus_reported_issue_i_d {
  sql_table_name: `dwb_utc_00.dwb_product_at_databus_reported_issue_i_d`
    ;;

  dimension: acct_id {
    type: string
    description: "用户 account id"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: error_msg {
    type: string
    description: "错误提示，当成功提交时为空"
    sql: ${TABLE}.error_msg ;;
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

  dimension: is_submited {
    type: yesno
    description: "issue 是否成功提交，true 为成功"
    sql: ${TABLE}.is_submited ;;
  }

  dimension: issue_submited {
    type: string
    description: "用户选择的或者输入的 issue 内容"
    sql: ${TABLE}.issue_submited ;;
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

  dimension: sid {
    type: string
    description: "用户在物流详情页点击 report_an_issue 时传递下来的唯一 ID"
    sql: ${TABLE}.sid ;;
  }

  dimension: submit_type {
    type: string
    description: "issue 提交类型，手写输入或者选择已有 issue"
    sql: ${TABLE}.submit_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
