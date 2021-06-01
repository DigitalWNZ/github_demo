view: dwb_message_at_databus_pushed_message_i_d {
  sql_table_name: `dwb_utc_00.dwb_message_at_databus_pushed_message_i_d`
    ;;

  dimension: acct_id {
    type: string
    sql: ${TABLE}.acct_id ;;
  }

  dimension: app_version {
    type: string
    description: "消息推送时 app version"
    sql: ${TABLE}.app_version ;;
  }

  dimension: device__device_id {
    type: string
    description: "server device id"
    sql: ${TABLE}.device.device_id ;;
    group_label: "Device"
    group_item_label: "Device ID"
  }

  dimension: device__device_token {
    type: string
    description: "firebase device token"
    sql: ${TABLE}.device.device_token ;;
    group_label: "Device"
    group_item_label: "Device Token"
  }

  dimension: device__mobile_device_id {
    type: string
    description: "mobile device id"
    sql: ${TABLE}.device.mobile_device_id ;;
    group_label: "Device"
    group_item_label: "Mobile Device ID"
  }

  dimension: device__os_type {
    type: string
    description: "device 操作系统"
    sql: ${TABLE}.device.os_type ;;
    group_label: "Device"
    group_item_label: "OS Type"
  }

  dimension: device__system_status {
    type: string
    description: "device system status: enabled, disabled, unasked"
    sql: ${TABLE}.device.system_status ;;
    group_label: "Device"
    group_item_label: "System Status"
  }

  dimension_group: event_ts {
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
    sql: ${TABLE}.event_ts ;;
  }

  dimension: firebase_message_id {
    type: string
    description: "firebase_message_id, 用于与 firebase automatic collected event 关联"
    sql: ${TABLE}.firebase_message_id ;;
  }

  dimension: message_business_identifier {
    type: string
    description: "消息推送的业务标识，用于工程师定位问题，不做报表使用，具体规则有开发工程师自行约定"
    sql: ${TABLE}.message_business_identifier ;;
  }

  dimension: message_category {
    type: string
    description: "这条消息对应的功能分类"
    sql: ${TABLE}.message_category ;;
  }

  dimension: message_error_category {
    type: string
    description: "消息推送结果详情，成功时为空字符串，注意此处包含 server 和 Firebase 的所有错误类型，即 error_event"
    sql: ${TABLE}.message_error_category ;;
  }

  dimension: message_id {
    type: string
    description: "message_id, 用于 mobile 端关联统计消息打开次数"
    sql: ${TABLE}.message_id ;;
  }

  dimension: message_push_result {
    type: number
    description: "1 为成功，0为失败; 与firebase的返回结果形式保持一致，使用0，1"
    sql: ${TABLE}.message_push_result ;;
  }

  dimension: os_notification_enabled {
    type: number
    description: "1 为成功，0为失败; 与firebase的返回结果形式保持一致，使用0，1"
    sql: ${TABLE}.os_notification_enabled ;;
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

  dimension: server_trace_id {
    type: string
    description: "消息推送时的 log 唯一标识，在 server 命名为 trace_id"
    sql: ${TABLE}.server_trace_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
