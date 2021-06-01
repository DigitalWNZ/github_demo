view: dwb_platform_at_email_parser_order_rule_i_d {
  sql_table_name: `dwb_utc_00.dwb_platform_at_email_parser_order_rule_i_d`
    ;;

  dimension: acct_id {
    type: string
    description: "Account id"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: brand_name {
    type: string
    description: "email 属于哪个 brand"
    sql: ${TABLE}.brand_name ;;
  }

  dimension: email_id {
    type: string
    description: "email 的唯一标识"
    sql: ${TABLE}.email_id ;;
  }

  dimension: email_url {
    type: string
    description: "\"记录 email 存放的路径。只有以下 case 会记录 email_url: 1. 命中了 Accept Rule 的 email 2. 最终没有命中任何 Rule 的 email，由于数据量可能很大，故抽样 1% 进行记录\""
    sql: ${TABLE}.email_url ;;
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

  dimension: is_matched_rule {
    type: yesno
    description: "是否 match 当前 rule_id 对应的 rule，false 时也会记录一条 log，如果是黑名单也记录 match 了哪个 keyword 到 matched_reason"
    sql: ${TABLE}.is_matched_rule ;;
  }

  dimension: matched_reason {
    type: string
    description: "匹配到的具体原因，比如匹配上哪个具体的关键词，通过记录这个方便进一步分析"
    sql: ${TABLE}.matched_reason ;;
  }

  dimension: order_number {
    type: string
    description: "匹配到 rule ID 后，传给 parser 对应的 parser id，parser 识别到 order number 则返回，填到这个字段，这个字段为空串表示 match rule 后 parse failed"
    sql: ${TABLE}.order_number ;;
  }

  dimension: parser_id {
    type: string
    description: "匹配到 rule ID 后，传给 parser 对应的 parser id"
    sql: ${TABLE}.parser_id ;;
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
    description: "匹配到的 Rule ID，这个字段为空串表示走完所有 rule，最后一个 rule 都没有匹配"
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_type {
    type: number
    description: "匹配到的 Rule 的 Type，1 为 Deny Rule，2 为 Specific Accept Rule，3 为 Generic Accept Rule"
    sql: ${TABLE}.rule_type ;;
  }

  dimension: shop_domain {
    type: string
    description: "parser 成功之后，从 shop_ur l或 email from 里面提取 order 的 shop_domain，这个字段为空串也表示 match rule 后 parse failed，即要 order_number 和 shop_domain 都不为空才是 parse 成功"
    sql: ${TABLE}.shop_domain ;;
  }

  dimension: shop_url {
    type: string
    description: "parser 解析到 order 的 shop_url"
    sql: ${TABLE}.shop_url ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_name]
  }
}
