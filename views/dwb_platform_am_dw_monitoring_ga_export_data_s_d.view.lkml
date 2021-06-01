view: dwb_platform_am_dw_monitoring_ga_export_data_s_d {
  sql_table_name: `dwb_utc_00.dwb_platform_am_dw_monitoring_ga_export_data_s_d`
    ;;

  dimension_group: creation {
    type: time
    description: "创建时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creation_date ;;
  }

  dimension: draft_data_ratio {
    type: number
    description: "漂移率"
    sql: ${TABLE}.draft_data_ratio ;;
  }

  dimension: is_over_limit {
    type: number
    description: "历史累计超过阈值次数（失效）"
    sql: ${TABLE}.is_over_limit ;;
  }

  dimension_group: last_modified {
    type: time
    description: "最后修改时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: next_time_table_count {
    type: number
    description: "最终记录数"
    sql: ${TABLE}.next_time_table_count ;;
  }

  dimension: origin_row_count {
    type: number
    description: "最后一次同步前最小记录数"
    sql: ${TABLE}.origin_row_count ;;
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

  dimension: rou_count {
    type: number
    description: "最后一次同步前最大记录数"
    sql: ${TABLE}.rou_count ;;
  }

  dimension: table_id {
    type: string
    description: "表名"
    sql: ${TABLE}.table_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
