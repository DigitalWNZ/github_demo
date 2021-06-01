view: dwb_product_at_order_created_tracking_status_z_d {
  sql_table_name: `dwb_utc_00.dwb_product_at_order_created_tracking_status_z_d`
    ;;

  dimension: acct_id {
    type: string
    description: "Acccount id"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: checkpoint_status {
    type: string
    description: "最新 checkpoint 的状态"
    sql: ${TABLE}.checkpoint_status ;;
  }

  dimension_group: end {
    type: time
    description: "当前 tracking_id 在当前 checkpoint_status 的发生日期，当该日期是 9999-12-31 时代表该 tracking 仍然未达到最终状态"
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
    sql: ${TABLE}.end_at ;;
  }

  dimension: event {
    type: string
    description: "order_created_trackings"
    sql: ${TABLE}.event ;;
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

  dimension_group: start {
    type: time
    description: "当前 tracking_id 创建日期"
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
    sql: ${TABLE}.start_at ;;
  }

  dimension: tracking_id {
    type: string
    description: "tracking id"
    sql: ${TABLE}.tracking_id ;;
  }

  dimension: tracking_source {
    type: string
    description: "tracking 来源"
    sql: ${TABLE}.tracking_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
