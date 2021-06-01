view: dwb_user_at_device_user_info_s_d {
  sql_table_name: `dwb_utc_00.dwb_user_at_device_user_info_s_d`
    ;;

  dimension_group: account_created {
    type: time
    description: "账户创建时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.account_created_at ;;
  }

  dimension: account_id {
    type: string
    description: "用户 id"
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_is_deleted {
    type: yesno
    description: "账户是否已删除"
    sql: ${TABLE}.account_is_deleted ;;
  }

  dimension: app_device_id {
    type: string
    description: "在 mobile 端埋点上报的 device_id"
    sql: ${TABLE}.app_device_id ;;
  }

  dimension_group: device_created {
    type: time
    description: "设备创建时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.device_created_at ;;
  }

  dimension: device_id {
    type: string
    description: "devices 表主键"
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_language {
    type: string
    description: "设备语言，格式为 {language_code}{-script_code?}{_region_code}"
    sql: ${TABLE}.device_language ;;
  }

  dimension: device_name {
    type: string
    description: "设备名"
    sql: ${TABLE}.device_name ;;
  }

  dimension: device_token {
    type: string
    description: "fcm-token，也就是 firebase 推送时使用的 token 信息"
    sql: ${TABLE}.device_token ;;
  }

  dimension: email {
    type: string
    description: "用户邮件地址"
    sql: ${TABLE}.email ;;
  }

  dimension: email_verified {
    type: yesno
    description: "用于Keycloak中email验证标记"
    sql: ${TABLE}.email_verified ;;
  }

  dimension: enabled {
    type: yesno
    description: "用于Keycloak中对用户的enabled和disabled管理"
    sql: ${TABLE}.enabled ;;
  }

  dimension: first_name {
    type: string
    description: "first name"
    sql: ${TABLE}.first_name ;;
  }

  dimension: is_register {
    type: yesno
    description: "是否注册，该值在 2021-05-21 之前有 bug，请使用该字段在 2021-05-21 之后分区"
    sql: ${TABLE}.is_register ;;
  }

  dimension: last_name {
    type: string
    description: "last name"
    sql: ${TABLE}.last_name ;;
  }

  dimension: legacy_id {
    type: string
    description: "legacy id"
    sql: ${TABLE}.legacy_id ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: mobile_device_id {
    type: string
    description: "Mobile device id，android 是在每次卸载重装后会重新计算，ios 使用系统生成的 uuid"
    sql: ${TABLE}.mobile_device_id ;;
  }

  dimension: mobile_phone_country {
    type: string
    description: "用户手机所属国家, country or region code"
    sql: ${TABLE}.mobile_phone_country ;;
  }

  dimension: mobile_phone_number {
    type: string
    description: "用户手机号码"
    sql: ${TABLE}.mobile_phone_number ;;
  }

  dimension: os_type {
    type: string
    description: "device 的操作系统类型，例如: android, ios"
    sql: ${TABLE}.os_type ;;
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

  dimension: realm_id {
    type: string
    sql: ${TABLE}.realm_id ;;
  }

  dimension: status {
    type: string
    description: "设备状态，启用设备或禁用设备"
    sql: ${TABLE}.status ;;
  }

  dimension: timezone {
    type: number
    description: "timezone"
    sql: ${TABLE}.timezone ;;
  }

  dimension: timezone_identifier {
    type: string
    sql: ${TABLE}.timezone_identifier ;;
  }

  dimension_group: user_first_touch_timestamp {
    type: time
    description: "ga 标记的该设备首次点击屏幕时间，即使该设备删除过 app"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_pseudo_id {
    type: string
    description: "ga 设备 id，可用于与 firebase"
    sql: ${TABLE}.user_pseudo_id ;;
  }

  dimension: username {
    type: string
    description: "用户名"
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name, first_name, last_name, username]
  }
}
