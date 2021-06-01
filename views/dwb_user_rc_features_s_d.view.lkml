view: dwb_user_rc_features_s_d {
  sql_table_name: `dwb_utc_00.dwb_user_rc_features_s_d`
    ;;

  dimension: amount {
    type: number
    description: "当前订阅金额"
    sql: ${TABLE}.amount ;;
  }

  dimension: as_current_payment_gateway {
    type: string
    description: "aftership当前订阅支付网关"
    sql: ${TABLE}.as_current_payment_gateway ;;
  }

  dimension_group: as_current_period_end {
    type: time
    description: "aftership当前订阅结束时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.as_current_period_end ;;
  }

  dimension_group: as_current_period_start {
    type: time
    description: "aftership当前订阅开始时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.as_current_period_start ;;
  }

  dimension: as_current_plan_amt {
    type: number
    description: "aftership当前订阅金额"
    sql: ${TABLE}.as_current_plan_amt ;;
  }

  dimension: as_current_plan_code {
    type: string
    description: "aftership当前订阅plan"
    sql: ${TABLE}.as_current_plan_code ;;
  }

  dimension: current_plan {
    type: string
    description: "当前订阅plan"
    sql: ${TABLE}.current_plan ;;
  }

  dimension: customer_courier_enabled {
    type: yesno
    description: "是否enable 了 return method=customer_courier"
    sql: ${TABLE}.customer_courier_enabled ;;
  }

  dimension: default_language {
    type: string
    description: "branded returns page默认语言"
    sql: ${TABLE}.default_language ;;
  }

  dimension: exchange_active {
    type: yesno
    description: "是否enable了 exchange"
    sql: ${TABLE}.exchange_active ;;
  }

  dimension: exchange_rule_item_price_enabled {
    type: yesno
    description: "是否enable了 exchange选variant 的时候的价格比较"
    sql: ${TABLE}.exchange_rule_item_price_enabled ;;
  }

  dimension_group: first_connected {
    type: time
    description: "首次连接时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_connected_at ;;
  }

  dimension: in_store_enabled {
    type: yesno
    description: "是否enable 了 return method=in_store"
    sql: ${TABLE}.in_store_enabled ;;
  }

  dimension: is_aftership_connected_current {
    type: yesno
    description: "当前aftership是否是connected状态"
    sql: ${TABLE}.is_aftership_connected_current ;;
  }

  dimension: is_allowing_discounted_items_to_return {
    type: yesno
    description: "是否设置了discount商品不能退"
    sql: ${TABLE}.is_allowing_discounted_items_to_return ;;
  }

  dimension: is_allowing_multiple_returns_per_order {
    type: yesno
    description: "否设置了 multiple returns per order"
    sql: ${TABLE}.is_allowing_multiple_returns_per_order ;;
  }

  dimension: is_auto_approval_enabled {
    type: yesno
    description: "是否启用了auto approval"
    sql: ${TABLE}.is_auto_approval_enabled ;;
  }

  dimension: is_exchange_variant_enabled {
    type: yesno
    description: "是否enable了 exchange variant"
    sql: ${TABLE}.is_exchange_variant_enabled ;;
  }

  dimension: is_postmen_connected_current {
    type: yesno
    description: "当前postmen是否是connected状态"
    sql: ${TABLE}.is_postmen_connected_current ;;
  }

  dimension: is_postmen_connection_set_up {
    type: yesno
    description: "该用户是否关联了Postmen来打 return label"
    sql: ${TABLE}.is_postmen_connection_set_up ;;
  }

  dimension: is_qr_code_enabled {
    type: yesno
    description: "是否enable了 qr_code"
    sql: ${TABLE}.is_qr_code_enabled ;;
  }

  dimension: is_showing_powered_by_in_email {
    type: yesno
    description: "是否留着email 里面的powered by"
    sql: ${TABLE}.is_showing_powered_by_in_email ;;
  }

  dimension: is_updated_demo_return_status {
    type: yesno
    description: "是否更新了demo return 状态"
    sql: ${TABLE}.is_updated_demo_return_status ;;
  }

  dimension: is_using_ineligible_product_tags {
    type: yesno
    description: "是否设置了 Ineligible tags 规则"
    sql: ${TABLE}.is_using_ineligible_product_tags ;;
  }

  dimension: is_using_ineligible_product_types {
    type: yesno
    description: "是否设置了 ineligible categories"
    sql: ${TABLE}.is_using_ineligible_product_types ;;
  }

  dimension: is_using_marketing_assets {
    type: yesno
    description: "是否在return page 添加了 marketing assets"
    sql: ${TABLE}.is_using_marketing_assets ;;
  }

  dimension: is_using_menu_items {
    type: yesno
    description: "否在return page 使用了 menu items"
    sql: ${TABLE}.is_using_menu_items ;;
  }

  dimension: is_using_our_return_policy_page {
    type: yesno
    description: "是否在使用RC 提供的return policy page"
    sql: ${TABLE}.is_using_our_return_policy_page ;;
  }

  dimension: is_using_return_window {
    type: yesno
    description: "是否设置了 return window"
    sql: ${TABLE}.is_using_return_window ;;
  }

  dimension: is_using_social_links {
    type: yesno
    description: "是否添加了FB, Twitter, INS social link"
    sql: ${TABLE}.is_using_social_links ;;
  }

  dimension: label_latest30d {
    type: number
    description: "近30天的lables统计"
    sql: ${TABLE}.label_latest30d ;;
  }

  dimension: number_of_branded_template {
    type: number
    description: "number_of_branded_template"
    sql: ${TABLE}.number_of_branded_template ;;
  }

  dimension: number_of_custom_html_template {
    type: number
    description: "number_of_custom_html_template"
    sql: ${TABLE}.number_of_custom_html_template ;;
  }

  dimension: number_of_rules {
    type: number
    description: "用户一共有多少个 routing rule"
    sql: ${TABLE}.number_of_rules ;;
  }

  dimension: order_tags_rules {
    type: number
    description: "condition type = order_tags 的rule个数"
    sql: ${TABLE}.order_tags_rules ;;
  }

  dimension_group: org_created {
    type: time
    description: "org创建时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.org_created ;;
  }

  dimension: organization_id {
    type: string
    description: "organization_id"
    sql: ${TABLE}.organization_id ;;
  }

  dimension: owner_email {
    type: string
    description: "owner邮箱"
    sql: ${TABLE}.owner_email ;;
  }

  dimension_group: period_end {
    type: time
    description: "当前订阅结束时间"
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
    sql: ${TABLE}.period_end ;;
  }

  dimension_group: period_start {
    type: time
    description: "当前订阅开始时间"
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
    sql: ${TABLE}.period_start ;;
  }

  dimension: platform_connected_lists_current {
    type: string
    description: "当前连接的platform"
    sql: ${TABLE}.platform_connected_lists_current ;;
  }

  dimension: platform_deleted_lists_current {
    type: string
    description: "当前deleted platform"
    sql: ${TABLE}.platform_deleted_lists_current ;;
  }

  dimension: platform_disconnected_lists_current {
    type: string
    description: "当前disconnected platform"
    sql: ${TABLE}.platform_disconnected_lists_current ;;
  }

  dimension_group: processing {
    type: time
    description: "数据处理时间"
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

  dimension: product_types_rules {
    type: number
    description: "condition type = product_types 的rule个数"
    sql: ${TABLE}.product_types_rules ;;
  }

  dimension: refund_to_original_payment_active {
    type: yesno
    description: "是否enable了 refund_to_original_payment"
    sql: ${TABLE}.refund_to_original_payment_active ;;
  }

  dimension: refund_to_store_credit_active {
    type: yesno
    description: "是否enable了 refund_to_store_credit"
    sql: ${TABLE}.refund_to_store_credit_active ;;
  }

  dimension: resolutions_rules {
    type: number
    description: "condition type = resolutions 的rule个数"
    sql: ${TABLE}.resolutions_rules ;;
  }

  dimension: retailer_label_enabled {
    type: yesno
    description: "是否enable 了 return method=retailer_label"
    sql: ${TABLE}.retailer_label_enabled ;;
  }

  dimension: return_reasons_rules {
    type: number
    description: "condition type = return reasons 的rule个数"
    sql: ${TABLE}.return_reasons_rules ;;
  }

  dimension: returns_latest30d {
    type: number
    description: "最近30天的returns数，排除demo"
    sql: ${TABLE}.returns_latest30d ;;
  }

  dimension: shipments_latest30d {
    type: number
    description: "近30天的shipments统计"
    sql: ${TABLE}.shipments_latest30d ;;
  }

  dimension: shop_id {
    type: string
    description: "shop_id"
    sql: ${TABLE}.shop_id ;;
  }

  dimension: show_returns_page_powered_by {
    type: yesno
    description: "branded returns page是否有powered by AfterShip Returns Center"
    sql: ${TABLE}.show_returns_page_powered_by ;;
  }

  dimension: sync_returns_shipment_to_aftership {
    type: yesno
    description: "是否打开了AS tracking syncing"
    sql: ${TABLE}.sync_returns_shipment_to_aftership ;;
  }

  dimension: url {
    type: string
    description: "url"
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
