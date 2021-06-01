view: dwb_product_mt_popup_orders_i_d {
  sql_table_name: `dwb_utc_00.dwb_product_mt_popup_orders_i_d`
    ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}.order_created_at ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_owner_email {
    type: string
    sql: ${TABLE}.order_owner_email ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: popup_id {
    type: string
    sql: ${TABLE}.popup_id ;;
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

  dimension_group: subscribed {
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
    sql: ${TABLE}.subscribed_at ;;
  }

  dimension: subscriber_email {
    type: string
    sql: ${TABLE}.subscriber_email ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
