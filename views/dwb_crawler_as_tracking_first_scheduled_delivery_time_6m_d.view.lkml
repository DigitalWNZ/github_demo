view: dwb_crawler_as_tracking_first_scheduled_delivery_time_6m_d {
  sql_table_name: `dwb_utc_00.dwb_crawler_as_tracking_first_scheduled_delivery_time_6m_d`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    description: "tracking id"
    sql: ${TABLE}.id ;;
  }

  dimension: first_scheduled_delivery_time {
    type: string
    description: "第一次预定的交货时间"
    sql: ${TABLE}.first_scheduled_delivery_time ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
