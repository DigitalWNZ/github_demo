view: dwb_flow_at_databus_created_orders_i_d {
  sql_table_name: `dwb_utc_00.dwb_flow_at_databus_created_orders_i_d`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: acct_id {
    type: string
    sql: ${TABLE}.acct_id ;;
  }

  dimension: app_key {
    type: string
    description: "店铺所属 app_key"
    sql: ${TABLE}.app_key ;;
  }

  dimension: brand_id {
    type: string
    description: "brand_id"
    sql: ${TABLE}.brand_id ;;
  }

  dimension: error_code {
    type: string
    description: "创建失败上报 error code，成功时为空字符串"
    sql: ${TABLE}.error_code ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension_group: event_ts {
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
    sql: ${TABLE}.event_ts ;;
  }

  dimension: order_number {
    type: string
    description: "order number"
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_scene {
    type: string
    description: "\"类似于： 1. connector 2. e_commerce\""
    sql: ${TABLE}.order_scene ;;
  }

  dimension: order_url {
    type: string
    description: "order url"
    sql: ${TABLE}.order_url ;;
  }

  dimension: platform {
    type: string
    description: "\"平台，对于 thank you page 需求暂时只支持 shopify,  对于 Order Connector 来说可能是 amazon_us\""
    sql: ${TABLE}.platform ;;
  }

  dimension_group: processing {
    type: time
    description: "处理时间"
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

  dimension: result {
    type: yesno
    description: "创建有结果后上报"
    sql: ${TABLE}.result ;;
  }

  dimension: shop_domain {
    type: string
    description: "shop domian"
    sql: ${TABLE}.shop_domain ;;
  }

  dimension: sid {
    type: string
    description: "客户端从 dynamic link 里拿到的 sid，用于标识一次用户行为"
    sql: ${TABLE}.sid ;;
  }

  dimension: tracking_order_id {
    type: string
    description: "order_id"
    sql: ${TABLE}.tracking_order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
