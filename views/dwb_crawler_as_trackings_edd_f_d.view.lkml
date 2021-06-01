view: dwb_crawler_as_trackings_edd_f_d {
  sql_table_name: `dwb_utc_00.dwb_crawler_as_trackings_edd_f_d`
    ;;

  dimension_group: created {
    type: time
    description: "shipment 创建时间"
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
    description: "目的地国家"
    sql: ${TABLE}.destination_country ;;
  }

  dimension: domestic_international {
    type: string
    description: "Domestic, International, Other"
    sql: ${TABLE}.domestic_international ;;
  }

  dimension_group: edd_first_appearance {
    type: time
    description: "EDD 首次出现的时间"
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

  dimension: gap {
    type: number
    description: "date(first attempt) - date(first estimated scheduled delivered)"
    sql: ${TABLE}.gap ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: origin_country {
    type: string
    sql: ${TABLE}.origin_country ;;
  }

  dimension: plan__plan_amt {
    type: number
    sql: ${TABLE}.plan.plan_amt ;;
    group_label: "Plan"
    group_item_label: "Plan Amt"
  }

  dimension: plan__plan_code {
    type: string
    sql: ${TABLE}.plan.plan_code ;;
    group_label: "Plan"
    group_item_label: "Plan Code"
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: source {
    type: string
    description: "tracking source"
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    description: "on-time status"
    sql: ${TABLE}.status ;;
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
