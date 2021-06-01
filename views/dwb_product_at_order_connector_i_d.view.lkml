view: dwb_product_at_order_connector_i_d {
  sql_table_name: `dwb_utc_00.dwb_product_at_order_connector_i_d`
    ;;

  dimension: acct_id {
    type: string
    description: "account_id"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: added_order_id {
    type: string
    description: "某次导入行为成功添加的其中一个订单的 order id"
    sql: ${TABLE}.added_order_id ;;
  }

  dimension: added_tracking_checkpoint_status {
    type: string
    description: "某次导入行为成功添加的其中一个订单的 tracking  checkpoint status"
    sql: ${TABLE}.added_tracking_checkpoint_status ;;
  }

  dimension: added_tracking_id {
    type: string
    description: "某次导入行为成功添加的其中一个订单的 tracking id"
    sql: ${TABLE}.added_tracking_id ;;
  }

  dimension_group: event_ts {
    type: time
    description: "事件时间，一条数据代表一次导入行为中「每一个 Order 的解析情况」或者「当没有 Order 解析到，这次导入行为只会有一条记录，记录下 order_list_count 的数」"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_ts ;;
  }

  dimension: order_list_count {
    type: number
    description: "某次导入行为识别到 order list 的 order 个数"
    sql: ${TABLE}.order_list_count ;;
  }

  dimension: parsed_courier_slug {
    type: string
    description: "某次导入行为解析到的其中一个订单的 courier slug"
    sql: ${TABLE}.parsed_courier_slug ;;
  }

  dimension: parsed_order_number {
    type: string
    description: "某次导入行为解析到的其中一个订单的 order number"
    sql: ${TABLE}.parsed_order_number ;;
  }

  dimension: parsed_shop_url {
    type: string
    description: "某次导入行为解析到的其中一个订单的 shop url"
    sql: ${TABLE}.parsed_shop_url ;;
  }

  dimension: parsed_tracking_number {
    type: string
    description: "某次导入行为解析到的其中一个订单的 tracking number"
    sql: ${TABLE}.parsed_tracking_number ;;
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

  dimension: store_platform {
    type: string
    description: "order connector 平台"
    sql: ${TABLE}.store_platform ;;
  }

  dimension: sync_id {
    type: string
    description: "某次导入行为唯一 ID"
    sql: ${TABLE}.sync_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
