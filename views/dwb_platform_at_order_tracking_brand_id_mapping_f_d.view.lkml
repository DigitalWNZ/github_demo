view: dwb_platform_at_order_tracking_brand_id_mapping_f_d {
  sql_table_name: `dwb_utc_00.dwb_platform_at_order_tracking_brand_id_mapping_f_d`
    ;;

  dimension: acct_id {
    type: string
    sql: ${TABLE}.acct_id ;;
  }

  dimension: brand_domain {
    type: string
    sql: ${TABLE}.brand_domain ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}.brand_id ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: is_empty_tracking {
    type: yesno
    sql: ${TABLE}.is_empty_tracking ;;
  }

  dimension: is_top_1k_brands {
    type: yesno
    sql: ${TABLE}.is_top_1k_brands ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}.order_created_at ;;
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

  dimension_group: stats_week {
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
    sql: ${TABLE}.stats_week ;;
  }

  dimension_group: tracking_created {
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
    sql: ${TABLE}.tracking_created_at ;;
  }

  dimension: tracking_id {
    type: string
    sql: ${TABLE}.tracking_id ;;
  }

  dimension: tracking_order_id {
    type: string
    sql: ${TABLE}.tracking_order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_name]
  }
}
