view: dwb_user_at_user_mobile_id_mapping_s_d {
  sql_table_name: `dwb_utc_00.dwb_user_at_user_mobile_id_mapping_s_d`
    ;;

  dimension: device_id {
    type: string
    description: "mobile device id"
    sql: ${TABLE}.device_id ;;
  }

  dimension_group: user_first_touch_timestamp {
    type: time
    description: "用户首次触碰设备屏幕时间，一个设备可能有多个用户，一个用户也可能有多个设备"
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

  dimension: user_id {
    type: string
    description: "用户 id"
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_pseudo_id {
    type: string
    description: "ga 设备 ID"
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
