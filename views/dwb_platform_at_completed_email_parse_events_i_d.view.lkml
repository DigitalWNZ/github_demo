view: dwb_platform_at_completed_email_parse_events_i_d {
  sql_table_name: `dwb_utc_00.dwb_platform_at_completed_email_parse_events_i_d`
    ;;

  dimension: accounts {
    hidden: yes
    sql: ${TABLE}.accounts ;;
  }

  dimension: acct_id {
    type: string
    description: "用户 id，在 email parser 中多为空"
    sql: ${TABLE}.acct_id ;;
  }

  dimension: brand__brand_domain {
    type: string
    description: "品牌域名"
    sql: ${TABLE}.brand.brand_domain ;;
    group_label: "Brand"
    group_item_label: "Brand Domain"
  }

  dimension: brand__brand_email {
    type: string
    description: "品牌email"
    sql: ${TABLE}.brand.brand_email ;;
    group_label: "Brand"
    group_item_label: "Brand Email"
  }

  dimension: brand__brand_name {
    type: string
    description: "品牌名称"
    sql: ${TABLE}.brand.brand_name ;;
    group_label: "Brand"
    group_item_label: "Brand Name"
  }

  dimension: email__email_message_id {
    type: string
    description: "gmail返回的 message_id"
    sql: ${TABLE}.email.email_message_id ;;
    group_label: "Email"
    group_item_label: "Email Message ID"
  }

  dimension: email__email_url {
    type: string
    description: "记录 email 存放的路径。只有存在备份行为的 email 才会上报 email_url"
    sql: ${TABLE}.email.email_url ;;
    group_label: "Email"
    group_item_label: "Email URL"
  }

  dimension: email__from_address {
    type: string
    description: "发件邮箱地址"
    sql: ${TABLE}.email.from_address ;;
    group_label: "Email"
    group_item_label: "From Address"
  }

  dimension: email__id {
    type: string
    description: "email 唯一标示，可以和 email_parser_rule_match、email_order_parser_rule_match 做关联"
    sql: ${TABLE}.email.id ;;
    group_label: "Email"
    group_item_label: "ID"
  }

  dimension: email__to_address {
    type: string
    description: "收件邮箱地址"
    sql: ${TABLE}.email.to_address ;;
    group_label: "Email"
    group_item_label: "To Address"
  }

  dimension: event {
    type: string
    description: "事件名"
    sql: ${TABLE}.event ;;
  }

  dimension_group: event_ts {
    type: time
    description: "事件时间"
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

  dimension: is_email_empty {
    type: yesno
    description: "邮件内容是否为空"
    sql: ${TABLE}.is_email_empty ;;
  }

  dimension: is_match_keywords {
    type: yesno
    description: "是否命中filter关键字"
    sql: ${TABLE}.is_match_keywords ;;
  }

  dimension: is_match_new_order_rules {
    type: yesno
    description: "是否命中新版系统 order 规则"
    sql: ${TABLE}.is_match_new_order_rules ;;
  }

  dimension: is_match_new_tracking_rules {
    type: yesno
    description: "是否命中新版系统 tracking 规则"
    sql: ${TABLE}.is_match_new_tracking_rules ;;
  }

  dimension: is_match_old_order_rules {
    type: yesno
    description: "是否命中旧版系统 order 规则"
    sql: ${TABLE}.is_match_old_order_rules ;;
  }

  dimension: is_match_old_tracking_rules {
    type: yesno
    description: "是否命中旧版系统 tracking 规则"
    sql: ${TABLE}.is_match_old_tracking_rules ;;
  }

  dimension: is_match_order_rules {
    type: yesno
    description: "是否命中 order 规则"
    sql: ${TABLE}.is_match_order_rules ;;
  }

  dimension: is_match_rules {
    type: yesno
    description: "是否命中 tracking 规则"
    sql: ${TABLE}.is_match_rules ;;
  }

  dimension: is_new_order_parse_success {
    type: yesno
    description: "命中新版系统 order 规则的是否解析成功"
    sql: ${TABLE}.is_new_order_parse_success ;;
  }

  dimension: is_new_tracking_parse_success {
    type: yesno
    description: "命中新版 tracking 系统规则的是否解析成功"
    sql: ${TABLE}.is_new_tracking_parse_success ;;
  }

  dimension: is_old_order_parse_success {
    type: yesno
    description: "命中旧版系统 order 规则的是否解析成功"
    sql: ${TABLE}.is_old_order_parse_success ;;
  }

  dimension: is_old_tracking_parse_success {
    type: yesno
    description: "命中旧版系统 tracking 规则的是否解析成功"
    sql: ${TABLE}.is_old_tracking_parse_success ;;
  }

  dimension: is_order_success {
    type: yesno
    description: "添加 order 是否成功"
    sql: ${TABLE}.is_order_success ;;
  }

  dimension: is_tracking_success {
    type: yesno
    description: "添加 tracking 是否成功"
    sql: ${TABLE}.is_tracking_success ;;
  }

  dimension: is_valid_user {
    type: yesno
    description: "是否为有效用户"
    sql: ${TABLE}.is_valid_user ;;
  }

  dimension: new_shipment_counter {
    type: number
    description: "新添加shipment数量"
    sql: ${TABLE}.new_shipment_counter ;;
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

  dimension: scenarios {
    hidden: yes
    sql: ${TABLE}.scenarios ;;
  }

  dimension: tracking_ids {
    hidden: yes
    sql: ${TABLE}.tracking_ids ;;
  }

  measure: count {
    type: count
    drill_fields: [brand__brand_name]
  }
}

view: dwb_platform_at_completed_email_parse_events_i_d__accounts {
  dimension: dwb_platform_at_completed_email_parse_events_i_d__accounts {
    type: string
    description: "有效用户 ID"
    sql: dwb_platform_at_completed_email_parse_events_i_d__accounts ;;
  }
}

view: dwb_platform_at_completed_email_parse_events_i_d__scenarios {
  dimension: dwb_platform_at_completed_email_parse_events_i_d__scenarios {
    type: string
    description: "保留原有场景上报字段，对于新场景，在此字段中上报当前这封邮件命中的新场景，当 value = null 时，代表当前场景没有命中"
    sql: dwb_platform_at_completed_email_parse_events_i_d__scenarios ;;
  }
}

view: dwb_platform_at_completed_email_parse_events_i_d__tracking_ids {
  dimension: dwb_platform_at_completed_email_parse_events_i_d__tracking_ids {
    type: string
    description: "添加成功的 tracking id"
    sql: dwb_platform_at_completed_email_parse_events_i_d__tracking_ids ;;
  }
}
