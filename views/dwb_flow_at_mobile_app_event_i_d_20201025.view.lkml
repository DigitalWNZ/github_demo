view: dwb_flow_at_mobile_app_event_i_d_20201025 {
  sql_table_name: `dwb_utc_00.dwb_flow_at_mobile_app_event_i_d_20201025`
    ;;

  dimension: app_info__id {
    type: string
    sql: ${TABLE}.app_info.id ;;
    group_label: "App Info"
    group_item_label: "ID"
  }

  dimension: app_info__install_source {
    type: string
    sql: ${TABLE}.app_info.install_source ;;
    group_label: "App Info"
    group_item_label: "Install Source"
  }

  dimension: app_info__version {
    type: string
    sql: ${TABLE}.app_info.version ;;
    group_label: "App Info"
    group_item_label: "Version"
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
    sql: ${TABLE}.device.LANGUAGE ;;
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

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_params {
    hidden: yes
    sql: ${TABLE}.event_params ;;
  }

  dimension_group: event_previous_timestamp {
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
    sql: ${TABLE}.event_previous_timestamp ;;
  }

  dimension_group: event_server_timestamp {
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
    sql: ${TABLE}.event_server_timestamp ;;
  }

  dimension_group: event_timestamp {
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

  dimension: page__is_virtual {
    type: yesno
    sql: ${TABLE}.page.is_virtual ;;
    group_label: "Page"
    group_item_label: "Is Virtual"
  }

  dimension: page__page_description {
    type: string
    sql: ${TABLE}.page.page_description ;;
    group_label: "Page"
    group_item_label: "Page Description"
  }

  dimension: page__page_el_description {
    type: string
    sql: ${TABLE}.page.page_el_description ;;
    group_label: "Page"
    group_item_label: "Page El Description"
  }

  dimension: page__page_el_sn {
    type: string
    sql: ${TABLE}.page.page_el_sn ;;
    group_label: "Page"
    group_item_label: "Page El Sn"
  }

  dimension: page__page_sn {
    type: string
    sql: ${TABLE}.page.page_sn ;;
    group_label: "Page"
    group_item_label: "Page Sn"
  }

  dimension: page__page_st_description {
    type: string
    sql: ${TABLE}.page.page_st_description ;;
    group_label: "Page"
    group_item_label: "Page St Description"
  }

  dimension: page__page_st_sn {
    type: string
    sql: ${TABLE}.page.page_st_sn ;;
    group_label: "Page"
    group_item_label: "Page St Sn"
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: track__advertising_id {
    type: string
    sql: ${TABLE}.track.advertising_id ;;
    group_label: "Track"
    group_item_label: "Advertising ID"
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

  dimension: track__ga_session_id {
    type: string
    sql: ${TABLE}.track.ga_session_id ;;
    group_label: "Track"
    group_item_label: "Ga Session ID"
  }

  dimension: track__install_id {
    type: string
    sql: ${TABLE}.track.install_id ;;
    group_label: "Track"
    group_item_label: "Install ID"
  }

  dimension: track__is_logged {
    type: number
    sql: ${TABLE}.track.is_logged ;;
    group_label: "Track"
    group_item_label: "Is Logged"
  }

  dimension: track__log_id {
    type: string
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

  dimension: track__user_id {
    type: string
    sql: ${TABLE}.track.user_id ;;
    group_label: "Track"
    group_item_label: "User ID"
  }

  dimension: user_first_touch_timestamp {
    type: number
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_properties {
    hidden: yes
    sql: ${TABLE}.user_properties ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name, device__mobile_model_name, device__mobile_brand_name, device__mobile_marketing_name]
  }
}

view: dwb_flow_at_mobile_app_event_i_d_20201025__event_params {
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

view: dwb_flow_at_mobile_app_event_i_d_20201025__user_properties {
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
