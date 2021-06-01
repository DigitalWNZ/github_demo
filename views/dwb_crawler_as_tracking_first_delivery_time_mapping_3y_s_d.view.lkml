view: dwb_crawler_as_tracking_first_delivery_time_mapping_3y_s_d {
  sql_table_name: `dwb_utc_00.dwb_crawler_as_tracking_first_delivery_time_mapping_3y_s_d`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: original_scheduled_delivery_time {
    type: string
    sql: ${TABLE}.original_scheduled_delivery_time ;;
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

  measure: count {
    type: count
    drill_fields: [id]
    value_format_name: decimal_2
  }
}
