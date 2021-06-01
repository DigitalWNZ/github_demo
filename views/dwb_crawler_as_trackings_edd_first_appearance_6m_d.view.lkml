view: dwb_crawler_as_trackings_edd_first_appearance_6m_d {
  sql_table_name: `dwb_utc_00.dwb_crawler_as_trackings_edd_first_appearance_6m_d`
    ;;

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: edd_first_appearance {
    type: time
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
    sql: ${TABLE}.edd_first_appearance ;;
  }

  dimension: edd_type {
    type: string
    description: "EDD 类型"
    sql: ${TABLE}.EDD_type ;;
  }

  dimension: estimated_delivery {
    type: string
    sql: ${TABLE}.estimated_delivery ;;
  }

  dimension: max_promised_delivery {
    type: string
    sql: ${TABLE}.max_promised_delivery ;;
  }

  dimension: min_promised_delivery {
    type: string
    sql: ${TABLE}.min_promised_delivery ;;
  }

  dimension_group: order_promised_delivery {
    type: time
    description: "订单承诺送达日期"
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
    sql: ${TABLE}.order_promised_delivery_date ;;
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

  dimension: scheduled_delivery {
    type: string
    sql: ${TABLE}.scheduled_delivery ;;
  }

  dimension: specific_promised_delivery {
    type: string
    sql: ${TABLE}.specific_promised_delivery ;;
  }

  dimension: tracking_id {
    type: string
    sql: ${TABLE}.tracking_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
