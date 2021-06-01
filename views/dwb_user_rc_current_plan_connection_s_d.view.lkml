view: dwb_user_rc_current_plan_connection_s_d {
  sql_table_name: `dwb_utc_00.dwb_user_rc_current_plan_connection_s_d`
    ;;

  dimension: amount {
    type: number
    description: "当前订阅金额"
    sql: ${TABLE}.amount ;;
  }

  dimension: current_plan {
    type: string
    description: "当前订阅plan"
    sql: ${TABLE}.current_plan ;;
  }

  dimension_group: first_connected {
    type: time
    description: "首次连接时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_connected_at ;;
  }

  dimension: is_updated_demo_return_status {
    type: yesno
    description: "是否更新了demo return 状态"
    sql: ${TABLE}.is_updated_demo_return_status ;;
  }

  dimension_group: org_created {
    type: time
    description: "org创建时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.org_created ;;
  }

  dimension: organization_id {
    type: string
    description: "organization_id"
    sql: ${TABLE}.organization_id ;;
  }

  dimension: owner_email {
    type: string
    description: "owner邮箱"
    sql: ${TABLE}.owner_email ;;
  }

  dimension_group: period_end {
    type: time
    description: "当前订阅结束时间"
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
    sql: ${TABLE}.period_end ;;
  }

  dimension_group: period_start {
    type: time
    description: "当前订阅开始时间"
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
    sql: ${TABLE}.period_start ;;
  }

  dimension: platform_connected_lists_current {
    type: string
    description: "当前连接的platform"
    sql: ${TABLE}.platform_connected_lists_current ;;
  }

  dimension: platform_deleted_lists_current {
    type: string
    description: "当前deleted platform"
    sql: ${TABLE}.platform_deleted_lists_current ;;
  }

  dimension: platform_disconnected_lists_current {
    type: string
    description: "当前disconnected platform"
    sql: ${TABLE}.platform_disconnected_lists_current ;;
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

  dimension: shop_id {
    type: string
    description: "shop_id"
    sql: ${TABLE}.shop_id ;;
  }

  dimension: url {
    type: string
    description: "url"
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
