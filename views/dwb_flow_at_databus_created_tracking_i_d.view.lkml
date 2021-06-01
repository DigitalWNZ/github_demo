view: dwb_flow_at_databus_created_tracking_i_d {
  sql_table_name: `dwb_utc_00.dwb_flow_at_databus_created_tracking_i_d`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: acct_id {
    type: string
    description: "Account id"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: brand__domain {
    type: string
    description: "品牌域名"
    sql: ${TABLE}.brand.domain ;;
    group_label: "Brand"
    group_item_label: "Domain"
  }

  dimension: brand__id {
    type: string
    description: "brand唯一标识"
    sql: ${TABLE}.brand.id ;;
    group_label: "Brand"
    group_item_label: "ID"
  }

  dimension: brand__name {
    type: string
    description: "品牌名称"
    sql: ${TABLE}.brand.name ;;
    group_label: "Brand"
    group_item_label: "Name"
  }

  dimension: brand__status {
    type: string
    description: "品牌状态，枚举值"
    sql: ${TABLE}.brand.status ;;
    group_label: "Brand"
    group_item_label: "Status"
  }

  dimension: checkpoint_status {
    type: string
    description: "checkpoint状态"
    sql: ${TABLE}.checkpoint_status ;;
  }

  dimension: event {
    type: string
    description: "事件名"
    sql: ${TABLE}.event ;;
  }

  dimension_group: event_ts {
    type: time
    description: "事件发生时间戳"
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

  dimension: tracking_id {
    type: string
    description: "tracking的唯一标识"
    sql: ${TABLE}.tracking_id ;;
  }

  dimension: tracking_order_id {
    type: string
    description: "tracking 关联的 order_id"
    sql: ${TABLE}.tracking_order_id ;;
  }

  dimension: tracking_source {
    type: string
    description: "tracking来源"
    sql: ${TABLE}.tracking_source ;;
  }

  dimension: tracking_subsource {
    type: string
    description: "tracking 细分来源"
    sql: ${TABLE}.tracking_subsource ;;
  }

  measure: count {
    type: count
    drill_fields: [id, brand__name]
  }
}
