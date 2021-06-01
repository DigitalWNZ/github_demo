view: dwb_crawler_as_tracking_ontime_status_i_d {
  sql_table_name: `dwb_utc_00.dwb_crawler_as_tracking_ontime_status_i_d`
    ;;

  dimension_group: created {
    type: time
    description: "tracking_id 在我们系统的创建时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: destination_country {
    type: string
    description: "判断优先级优先级: user > courier"
    sql: ${TABLE}.destination_country ;;
  }

  dimension_group: first_attempted_datetime {
    type: time
    description: "first_attempted_datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_attempted_datetime ;;
  }

  dimension_group: first_estimated_delivery {
    type: time
    description: "FEDD"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_estimated_delivery_date ;;
  }

  dimension: gap {
    type: number
    description: "first_estimated_delivery_date - first_estimated_delivery_date, if>=7, 统一为7, if<=-7, 统一为-7"
    sql: ${TABLE}.gap ;;
  }

  dimension_group: latest_estimated_delivery {
    type: time
    description: "LEDD"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.latest_estimated_delivery_date ;;
  }

  dimension: organization_id {
    type: string
    description: "organization_id"
    sql: ${TABLE}.organization_id ;;
  }

  dimension: origin_country {
    type: string
    description: "判断优先级优先级: user > courier"
    sql: ${TABLE}.origin_country ;;
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

  dimension: service_type_name {
    type: string
    description: "service_type_name"
    sql: ${TABLE}.service_type_name ;;
  }

  dimension: shipping_method {
    type: string
    description: "shipping_method"
    sql: ${TABLE}.shipping_method ;;
  }

  dimension: slug {
    type: string
    description: "slug"
    sql: ${TABLE}.slug ;;
  }

  dimension: status {
    type: string
    description: "On-time, Late, Overdue, Trending late, Trending on-time, null"
    sql: ${TABLE}.status ;;
  }

  dimension: tracking_id {
    type: string
    description: "tracking_id"
    sql: ${TABLE}.tracking_id ;;
  }

  measure: count {
    type: count
    drill_fields: [service_type_name]
  }
}
