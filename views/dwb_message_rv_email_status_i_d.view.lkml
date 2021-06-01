view: dwb_message_rv_email_status_i_d {
  sql_table_name: `dwb_utc_00.dwb_message_rv_email_status_i_d`
    ;;

  dimension: app_env {
    type: string
    description: "线上环境 staging+production"
    sql: ${TABLE}.app_env ;;
  }

  dimension: biz_email_type {
    type: string
    description: "rv_post_purchase_auto_request_email-on_delivered, rv_post_purchase_auto_request_email-on_fulfilled"
    sql: ${TABLE}.biz_email_type ;;
  }

  dimension: customer_email {
    type: string
    description: "buyer email"
    sql: ${TABLE}.customer_email ;;
  }

  dimension: email_type {
    type: string
    description: "邮件类型"
    sql: ${TABLE}.email_type ;;
  }

  dimension: from_email {
    type: string
    description: "from_email"
    sql: ${TABLE}.from_email ;;
  }

  dimension: message_id {
    type: string
    description: "SendGrid 内部的消息 ID，一次给 10 个人发送邮件，有 10 个 sendgrid_message_id"
    sql: ${TABLE}.message_id ;;
  }

  dimension: order_external_id {
    type: string
    sql: ${TABLE}.order_external_id ;;
  }

  dimension: order_id {
    type: string
    description: "对应中台的order_name"
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: organization_id {
    type: string
    description: "organization_id"
    sql: ${TABLE}.organization_id ;;
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

  dimension_group: send {
    type: time
    description: "发送日期"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.send_at ;;
  }

  dimension: sendgrid_account_id {
    type: string
    description: "sendgrid_account_id"
    sql: ${TABLE}.sendgrid_account_id ;;
  }

  dimension: status {
    type: string
    description: "邮件当前的状态"
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
