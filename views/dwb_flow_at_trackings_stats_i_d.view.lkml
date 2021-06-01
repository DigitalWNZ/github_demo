view: dwb_flow_at_trackings_stats_i_d {
  sql_table_name: `dwb_utc_00.dwb_flow_at_trackings_stats_i_d`
    ;;

  dimension: brand_domain {
    type: string
    description: "该 tracking 对应 order 的品牌 domain, 仅当 tracking 是通过 email parser 系统创建时才应该有该值"
    sql: ${TABLE}.brand_domain ;;
  }

  dimension: brand_id {
    type: string
    description: "该 tracking 对应 order 的品牌 id, 仅当 tracking 是通过 email parser 系统创建时才应该有该值"
    sql: ${TABLE}.brand_id ;;
  }

  dimension: courier {
    type: string
    description: "tracking 所属 courier"
    sql: ${TABLE}.courier ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: device_country {
    type: string
    description: "创建时设备所属国家"
    sql: ${TABLE}.device_country ;;
  }

  dimension: is_deleted {
    type: yesno
    description: "该 tracking 是否已被用户手动删除"
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_register {
    type: yesno
    description: "是否是注册用户所创建的"
    sql: ${TABLE}.is_register ;;
  }

  dimension: last_status {
    type: string
    description: "tracking 最新状态"
    sql: ${TABLE}.last_status ;;
  }

  dimension: platform {
    type: string
    description: "创建时使用的客户端平台，如 iOS, Android"
    sql: ${TABLE}.platform ;;
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

  dimension: rule_id {
    type: string
    description: "仅当 tracking 是通过 email parser 系统创建时才应该有该值"
    sql: ${TABLE}.rule_id ;;
  }

  dimension: scene {
    type: string
    description: "tracking 创建所属场景"
    sql: ${TABLE}.scene ;;
  }

  dimension: tracking_id {
    type: string
    description: "tracking 唯一 ID"
    sql: ${TABLE}.tracking_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
