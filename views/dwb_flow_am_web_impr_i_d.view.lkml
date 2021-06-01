view: dwb_flow_am_web_impr_i_d {
  sql_table_name: `dwb_utc_00.dwb_flow_am_web_impr_i_d`
    ;;

  dimension: device__advertising_id {
    type: string
    sql: ${TABLE}.device.advertising_id ;;
    group_label: "Device"
    group_item_label: "Advertising ID"
  }

  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
  }

  dimension: device__browser_version {
    type: string
    sql: ${TABLE}.device.browser_version ;;
    group_label: "Device"
    group_item_label: "Browser Version"
  }

  dimension: device__category {
    type: string
    sql: ${TABLE}.device.category ;;
    group_label: "Device"
    group_item_label: "Category"
  }

  dimension: device__is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device.is_limited_ad_tracking ;;
    group_label: "Device"
    group_item_label: "Is Limited Ad Tracking"
  }

  dimension: device__language {
    type: string
    sql: ${TABLE}.device.language ;;
    group_label: "Device"
    group_item_label: "Language"
  }

  dimension: device__mobile_brand_name {
    type: string
    sql: ${TABLE}.device.mobile_brand_name ;;
    group_label: "Device"
    group_item_label: "Mobile Brand Name"
  }

  dimension: device__mobile_marketing_name {
    type: string
    sql: ${TABLE}.device.mobile_marketing_name ;;
    group_label: "Device"
    group_item_label: "Mobile Marketing Name"
  }

  dimension: device__mobile_model_name {
    type: string
    sql: ${TABLE}.device.mobile_model_name ;;
    group_label: "Device"
    group_item_label: "Mobile Model Name"
  }

  dimension: device__mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.device.mobile_os_hardware_model ;;
    group_label: "Device"
    group_item_label: "Mobile OS Hardware Model"
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operating_system ;;
    group_label: "Device"
    group_item_label: "Operating System"
  }

  dimension: device__operating_system_version {
    type: string
    sql: ${TABLE}.device.operating_system_version ;;
    group_label: "Device"
    group_item_label: "Operating System Version"
  }

  dimension: device__time_zone_offset_seconds {
    type: number
    sql: ${TABLE}.device.time_zone_offset_seconds ;;
    group_label: "Device"
    group_item_label: "Time Zone Offset Seconds"
  }

  dimension: device__vendor_id {
    type: string
    sql: ${TABLE}.device.vendor_id ;;
    group_label: "Device"
    group_item_label: "Vendor ID"
  }

  dimension: device__web_info__browser {
    type: string
    sql: ${TABLE}.device.web_info.browser ;;
    group_label: "Device Web Info"
    group_item_label: "Browser"
  }

  dimension: device__web_info__browser_version {
    type: string
    sql: ${TABLE}.device.web_info.browser_version ;;
    group_label: "Device Web Info"
    group_item_label: "Browser Version"
  }

  dimension: device__web_info__hostname {
    type: string
    sql: ${TABLE}.device.web_info.hostname ;;
    group_label: "Device Web Info"
    group_item_label: "Hostname"
  }

  dimension: ecommerce__purchase_revenue {
    type: number
    sql: ${TABLE}.ecommerce.purchase_revenue ;;
    group_label: "Ecommerce"
    group_item_label: "Purchase Revenue"
  }

  dimension: ecommerce__purchase_revenue_in_usd {
    type: number
    sql: ${TABLE}.ecommerce.purchase_revenue_in_usd ;;
    group_label: "Ecommerce"
    group_item_label: "Purchase Revenue In USD"
  }

  dimension: ecommerce__refund_value {
    type: number
    sql: ${TABLE}.ecommerce.refund_value ;;
    group_label: "Ecommerce"
    group_item_label: "Refund Value"
  }

  dimension: ecommerce__refund_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce.refund_value_in_usd ;;
    group_label: "Ecommerce"
    group_item_label: "Refund Value In USD"
  }

  dimension: ecommerce__shipping_value {
    type: number
    sql: ${TABLE}.ecommerce.shipping_value ;;
    group_label: "Ecommerce"
    group_item_label: "Shipping Value"
  }

  dimension: ecommerce__shipping_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce.shipping_value_in_usd ;;
    group_label: "Ecommerce"
    group_item_label: "Shipping Value In USD"
  }

  dimension: ecommerce__tax_value {
    type: number
    sql: ${TABLE}.ecommerce.tax_value ;;
    group_label: "Ecommerce"
    group_item_label: "Tax Value"
  }

  dimension: ecommerce__tax_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce.tax_value_in_usd ;;
    group_label: "Ecommerce"
    group_item_label: "Tax Value In USD"
  }

  dimension: ecommerce__total_item_quantity {
    type: number
    sql: ${TABLE}.ecommerce.total_item_quantity ;;
    group_label: "Ecommerce"
    group_item_label: "Total Item Quantity"
  }

  dimension: ecommerce__transaction_id {
    type: string
    sql: ${TABLE}.ecommerce.transaction_id ;;
    group_label: "Ecommerce"
    group_item_label: "Transaction ID"
  }

  dimension: ecommerce__unique_items {
    type: number
    sql: ${TABLE}.ecommerce.unique_items ;;
    group_label: "Ecommerce"
    group_item_label: "Unique Items"
  }

  dimension: event_bundle_sequence_id {
    type: number
    sql: ${TABLE}.event_bundle_sequence_id ;;
  }

  dimension_group: event {
    type: time
    description: "事件发生日期"
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_name {
    type: string
    description: "事件名"
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_params {
    hidden: yes
    sql: ${TABLE}.event_params ;;
  }

  dimension: event_previous_timestamp {
    type: number
    description: "上个事件发生的时间戳"
    sql: ${TABLE}.event_previous_timestamp ;;
  }

  dimension: event_server_timestamp_offset {
    type: number
    description: "该事件发生时间与 firebase 服务器时间偏移量(差值)"
    sql: ${TABLE}.event_server_timestamp_offset ;;
  }

  dimension: event_timestamp {
    type: number
    description: "事件发生时间戳"
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: geo__city {
    type: string
    sql: ${TABLE}.geo.city ;;
    group_label: "Geo"
    group_item_label: "City"
  }

  dimension: geo__continent {
    type: string
    sql: ${TABLE}.geo.continent ;;
    group_label: "Geo"
    group_item_label: "Continent"
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo.country ;;
    group_label: "Geo"
    group_item_label: "Country"
  }

  dimension: geo__metro {
    type: string
    sql: ${TABLE}.geo.metro ;;
    group_label: "Geo"
    group_item_label: "Metro"
  }

  dimension: geo__region {
    type: string
    sql: ${TABLE}.geo.region ;;
    group_label: "Geo"
    group_item_label: "Region"
  }

  dimension: geo__sub_continent {
    type: string
    sql: ${TABLE}.geo.sub_continent ;;
    group_label: "Geo"
    group_item_label: "Sub Continent"
  }

  dimension: items {
    hidden: yes
    sql: ${TABLE}.items ;;
  }

  dimension: page__page_desc {
    type: string
    sql: ${TABLE}.page.page_desc ;;
    group_label: "Page"
    group_item_label: "Page Desc"
  }

  dimension: page__page_el_desc {
    type: string
    sql: ${TABLE}.page.page_el_desc ;;
    group_label: "Page"
    group_item_label: "Page El Desc"
  }

  dimension: page__page_el_sn {
    type: string
    sql: ${TABLE}.page.page_el_sn ;;
    group_label: "Page"
    group_item_label: "Page El Sn"
  }

  dimension: page__page_event_params {
    hidden: yes
    sql: ${TABLE}.page.page_event_params ;;
    group_label: "Page"
    group_item_label: "Page Event Params"
  }

  dimension: page__page_location {
    type: string
    sql: ${TABLE}.page.page_location ;;
    group_label: "Page"
    group_item_label: "Page Location"
  }

  dimension: page__page_sn {
    type: string
    sql: ${TABLE}.page.page_sn ;;
    group_label: "Page"
    group_item_label: "Page Sn"
  }

  dimension: page__page_st_desc {
    type: string
    sql: ${TABLE}.page.page_st_desc ;;
    group_label: "Page"
    group_item_label: "Page St Desc"
  }

  dimension: page__page_st_sn {
    type: string
    sql: ${TABLE}.page.page_st_sn ;;
    group_label: "Page"
    group_item_label: "Page St Sn"
  }

  dimension: page__page_title {
    type: string
    sql: ${TABLE}.page.page_title ;;
    group_label: "Page"
    group_item_label: "Page Title"
  }

  dimension: platform {
    type: string
    description: "设备所属平台，如 iOS"
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

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: track__app_instance_id {
    type: string
    sql: ${TABLE}.track.app_instance_id ;;
    group_label: "Track"
    group_item_label: "App Instance ID"
  }

  dimension: track__device_id {
    type: string
    sql: ${TABLE}.track.device_id ;;
    group_label: "Track"
    group_item_label: "Device ID"
  }

  dimension: track__is_logged {
    type: number
    sql: ${TABLE}.track.is_logged ;;
    group_label: "Track"
    group_item_label: "Is Logged"
  }

  dimension: track__log_id {
    type: number
    sql: ${TABLE}.track.log_id ;;
    group_label: "Track"
    group_item_label: "Log ID"
  }

  dimension: track__network {
    type: number
    sql: ${TABLE}.track.network ;;
    group_label: "Track"
    group_item_label: "Network"
  }

  dimension: track__network_operator {
    type: string
    sql: ${TABLE}.track.network_operator ;;
    group_label: "Track"
    group_item_label: "Network Operator"
  }

  dimension: track__session_id {
    type: string
    sql: ${TABLE}.track.session_id ;;
    group_label: "Track"
    group_item_label: "Session ID"
  }

  dimension: track__sid {
    type: string
    sql: ${TABLE}.track.sid ;;
    group_label: "Track"
    group_item_label: "Sid"
  }

  dimension: traffic_source__medium {
    type: string
    description: "一般对应 utm_medium"
    sql: ${TABLE}.traffic_source.medium ;;
    group_label: "Traffic Source"
    group_item_label: "Medium"
  }

  dimension: traffic_source__name {
    type: string
    sql: ${TABLE}.traffic_source.name ;;
    group_label: "Traffic Source"
    group_item_label: "Name"
  }

  dimension: traffic_source__source {
    type: string
    description: "一般对应 utm_source"
    sql: ${TABLE}.traffic_source.source ;;
    group_label: "Traffic Source"
    group_item_label: "Source"
  }

  dimension: user_first_touch_timestamp {
    type: number
    description: "用户首次交互时间，如在 app 客户端，为用户首次打开 app 的时间戳"
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_id {
    type: string
    description: "用户 ID，详见 https://docs.google.com/spreadsheets/d/1fnGUCE4vctuYhkt-6QVTEVLRzw7qZwDFnxAXnfeMJl0/edit#gid=291200159"
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ltv__currency {
    type: string
    sql: ${TABLE}.user_ltv.currency ;;
    group_label: "User Ltv"
    group_item_label: "Currency"
  }

  dimension: user_ltv__revenue {
    type: number
    sql: ${TABLE}.user_ltv.revenue ;;
    group_label: "User Ltv"
    group_item_label: "Revenue"
  }

  dimension: user_properties {
    hidden: yes
    sql: ${TABLE}.user_properties ;;
  }

  dimension: user_pseudo_id {
    type: string
    description: "GA4 自动生成的设备 id, 详见 https://firebase.google.com/docs/analytics/userid"
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      event_name,
      traffic_source__name,
      device__mobile_model_name,
      device__mobile_brand_name,
      device__web_info__hostname,
      device__mobile_marketing_name
    ]
  }
}

view: dwb_flow_am_web_impr_i_d__items {
  dimension: affiliation {
    type: string
    sql: ${TABLE}.affiliation ;;
  }

  dimension: coupon {
    type: string
    sql: ${TABLE}.coupon ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: creative_slot {
    type: string
    sql: ${TABLE}.creative_slot ;;
  }

  dimension: item_brand {
    type: string
    sql: ${TABLE}.item_brand ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.item_category ;;
  }

  dimension: item_category2 {
    type: string
    sql: ${TABLE}.item_category2 ;;
  }

  dimension: item_category3 {
    type: string
    sql: ${TABLE}.item_category3 ;;
  }

  dimension: item_category4 {
    type: string
    sql: ${TABLE}.item_category4 ;;
  }

  dimension: item_category5 {
    type: string
    sql: ${TABLE}.item_category5 ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_list_id {
    type: string
    sql: ${TABLE}.item_list_id ;;
  }

  dimension: item_list_index {
    type: string
    sql: ${TABLE}.item_list_index ;;
  }

  dimension: item_list_name {
    type: string
    sql: ${TABLE}.item_list_name ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: item_refund {
    type: number
    sql: ${TABLE}.item_refund ;;
  }

  dimension: item_refund_in_usd {
    type: number
    sql: ${TABLE}.item_refund_in_usd ;;
  }

  dimension: item_revenue {
    type: number
    sql: ${TABLE}.item_revenue ;;
  }

  dimension: item_revenue_in_usd {
    type: number
    sql: ${TABLE}.item_revenue_in_usd ;;
  }

  dimension: item_variant {
    type: string
    sql: ${TABLE}.item_variant ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_in_usd {
    type: number
    sql: ${TABLE}.price_in_usd ;;
  }

  dimension: promotion_id {
    type: string
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
}

view: dwb_flow_am_web_impr_i_d__event_params {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value__double_value {
    type: number
    sql: ${TABLE}.value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }

  dimension: value__float_value {
    type: number
    sql: ${TABLE}.value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }

  dimension: value__int_value {
    type: number
    sql: ${TABLE}.value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }
}

view: dwb_flow_am_web_impr_i_d__user_properties {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value__double_value {
    type: number
    sql: ${TABLE}.value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }

  dimension: value__float_value {
    type: number
    sql: ${TABLE}.value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }

  dimension: value__int_value {
    type: number
    sql: ${TABLE}.value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }

  dimension: value__set_timestamp_micros {
    type: number
    sql: ${TABLE}.value.set_timestamp_micros ;;
    group_label: "Value"
    group_item_label: "Set Timestamp Micros"
  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }
}

view: dwb_flow_am_web_impr_i_d__page__page_event_params {
  dimension: is_required {
    type: yesno
    sql: ${TABLE}.is_required ;;
  }

  dimension: param_name {
    type: string
    sql: ${TABLE}.param_name ;;
  }

  dimension: param_type {
    type: string
    sql: ${TABLE}.param_type ;;
  }
}
