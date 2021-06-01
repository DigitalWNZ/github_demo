connection: "looker_poc_testing_connection"

# include all the views
include: "/views/**/*.view"

datagroup: github_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: github_demo_default_datagroup

explore: dwb_crawler_as_tracking_first_delivery_time_mapping_3y_s_d {}

explore: dwb_crawler_as_tracking_first_scheduled_delivery_time_6m_d {}

explore: dwb_crawler_as_tracking_ontime_status_6m_d {}

explore: dwb_crawler_as_tracking_ontime_status_i_d {}

explore: dwb_crawler_as_trackings_edd_f_d {}

explore: dwb_crawler_as_trackings_edd_first_appearance_6m_d {}

explore: dwb_flow_am_web_click_i_d {
  join: dwb_flow_am_web_click_i_d__items {
    view_label: "Dwb Flow Am Web Click I D: Items"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_click_i_d.items}) as dwb_flow_am_web_click_i_d__items ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_click_i_d__event_params {
    view_label: "Dwb Flow Am Web Click I D: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_click_i_d.event_params}) as dwb_flow_am_web_click_i_d__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_click_i_d__user_properties {
    view_label: "Dwb Flow Am Web Click I D: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_click_i_d.user_properties}) as dwb_flow_am_web_click_i_d__user_properties ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_click_i_d__page__page_event_params {
    view_label: "Dwb Flow Am Web Click I D: Page Page Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_click_i_d.page__page_event_params}) as dwb_flow_am_web_click_i_d__page__page_event_params ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_am_web_event_i_d {
  join: dwb_flow_am_web_event_i_d__items {
    view_label: "Dwb Flow Am Web Event I D: Items"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_event_i_d.items}) as dwb_flow_am_web_event_i_d__items ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_event_i_d__event_params {
    view_label: "Dwb Flow Am Web Event I D: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_event_i_d.event_params}) as dwb_flow_am_web_event_i_d__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_event_i_d__user_properties {
    view_label: "Dwb Flow Am Web Event I D: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_event_i_d.user_properties}) as dwb_flow_am_web_event_i_d__user_properties ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_event_i_d__page__page_event_params {
    view_label: "Dwb Flow Am Web Event I D: Page Page Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_event_i_d.page__page_event_params}) as dwb_flow_am_web_event_i_d__page__page_event_params ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_am_web_impr_i_d {
  join: dwb_flow_am_web_impr_i_d__items {
    view_label: "Dwb Flow Am Web Impr I D: Items"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_impr_i_d.items}) as dwb_flow_am_web_impr_i_d__items ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_impr_i_d__event_params {
    view_label: "Dwb Flow Am Web Impr I D: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_impr_i_d.event_params}) as dwb_flow_am_web_impr_i_d__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_impr_i_d__user_properties {
    view_label: "Dwb Flow Am Web Impr I D: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_impr_i_d.user_properties}) as dwb_flow_am_web_impr_i_d__user_properties ;;
    relationship: one_to_many
  }

  join: dwb_flow_am_web_impr_i_d__page__page_event_params {
    view_label: "Dwb Flow Am Web Impr I D: Page Page Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_am_web_impr_i_d.page__page_event_params}) as dwb_flow_am_web_impr_i_d__page__page_event_params ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_as_pageview_i_d {}

explore: dwb_flow_at_app_dynamic_link_open_i_d {
  join: dwb_flow_at_app_dynamic_link_open_i_d__event_params {
    view_label: "Dwb Flow At App Dynamic Link Open I D: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_app_dynamic_link_open_i_d.event_params}) as dwb_flow_at_app_dynamic_link_open_i_d__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_app_dynamic_link_open_i_d__user_properties {
    view_label: "Dwb Flow At App Dynamic Link Open I D: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_app_dynamic_link_open_i_d.user_properties}) as dwb_flow_at_app_dynamic_link_open_i_d__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_databus_created_orders_i_d {}

explore: dwb_flow_at_databus_created_tracking_i_d {}

explore: dwb_flow_at_databus_tracking_suggest_result_i_d {
  join: dwb_flow_at_databus_tracking_suggest_result_i_d__courier_detect_data__slugs {
    view_label: "Dwb Flow At Databus Tracking Suggest Result I D: Courier Detect Data Slugs"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_databus_tracking_suggest_result_i_d.courier_detect_data__slugs}) as dwb_flow_at_databus_tracking_suggest_result_i_d__courier_detect_data__slugs ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_dev_debug_event_i_d {
  join: dwb_flow_at_dev_debug_event_i_d__event_params {
    view_label: "Dwb Flow At Dev Debug Event I D: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_dev_debug_event_i_d.event_params}) as dwb_flow_at_dev_debug_event_i_d__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_dev_debug_event_i_d__user_properties {
    view_label: "Dwb Flow At Dev Debug Event I D: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_dev_debug_event_i_d.user_properties}) as dwb_flow_at_dev_debug_event_i_d__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200628 {
  join: dwb_flow_at_mobile_app_event_i_d_20200628__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200628: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200628.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200628__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200628__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200628: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200628.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200628__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200629 {
  join: dwb_flow_at_mobile_app_event_i_d_20200629__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200629: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200629.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200629__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200629__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200629: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200629.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200629__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200630 {
  join: dwb_flow_at_mobile_app_event_i_d_20200630__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200630: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200630.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200630__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200630__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200630: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200630.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200630__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200701 {
  join: dwb_flow_at_mobile_app_event_i_d_20200701__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200701: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200701.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200701__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200701__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200701: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200701.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200701__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200702 {
  join: dwb_flow_at_mobile_app_event_i_d_20200702__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200702: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200702.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200702__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200702__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200702: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200702.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200702__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200703 {
  join: dwb_flow_at_mobile_app_event_i_d_20200703__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200703: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200703.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200703__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200703__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200703: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200703.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200703__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200704 {
  join: dwb_flow_at_mobile_app_event_i_d_20200704__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200704: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200704.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200704__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200704__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200704: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200704.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200704__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200705 {
  join: dwb_flow_at_mobile_app_event_i_d_20200705__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200705: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200705.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200705__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200705__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200705: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200705.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200705__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200706 {
  join: dwb_flow_at_mobile_app_event_i_d_20200706__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200706: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200706.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200706__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200706__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200706: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200706.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200706__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200707 {
  join: dwb_flow_at_mobile_app_event_i_d_20200707__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200707: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200707.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200707__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200707__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200707: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200707.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200707__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200708 {
  join: dwb_flow_at_mobile_app_event_i_d_20200708__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200708: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200708.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200708__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200708__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200708: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200708.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200708__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200709 {
  join: dwb_flow_at_mobile_app_event_i_d_20200709__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200709: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200709.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200709__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200709__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200709: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200709.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200709__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200710 {
  join: dwb_flow_at_mobile_app_event_i_d_20200710__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200710: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200710.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200710__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200710__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200710: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200710.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200710__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200711 {
  join: dwb_flow_at_mobile_app_event_i_d_20200711__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200711: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200711.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200711__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200711__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200711: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200711.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200711__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200712 {
  join: dwb_flow_at_mobile_app_event_i_d_20200712__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200712: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200712.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200712__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200712__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200712: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200712.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200712__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200713 {
  join: dwb_flow_at_mobile_app_event_i_d_20200713__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200713: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200713.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200713__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200713__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200713: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200713.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200713__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200714 {
  join: dwb_flow_at_mobile_app_event_i_d_20200714__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200714: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200714.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200714__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200714__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200714: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200714.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200714__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200715 {
  join: dwb_flow_at_mobile_app_event_i_d_20200715__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200715: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200715.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200715__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200715__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200715: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200715.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200715__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200716 {
  join: dwb_flow_at_mobile_app_event_i_d_20200716__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200716: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200716.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200716__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200716__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200716: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200716.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200716__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200717 {
  join: dwb_flow_at_mobile_app_event_i_d_20200717__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200717: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200717.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200717__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200717__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200717: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200717.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200717__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200718 {
  join: dwb_flow_at_mobile_app_event_i_d_20200718__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200718: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200718.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200718__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200718__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200718: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200718.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200718__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200719 {
  join: dwb_flow_at_mobile_app_event_i_d_20200719__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200719: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200719.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200719__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200719__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200719: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200719.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200719__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200720 {
  join: dwb_flow_at_mobile_app_event_i_d_20200720__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200720: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200720.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200720__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200720__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200720: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200720.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200720__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200721 {
  join: dwb_flow_at_mobile_app_event_i_d_20200721__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200721: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200721.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200721__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200721__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200721: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200721.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200721__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200722 {
  join: dwb_flow_at_mobile_app_event_i_d_20200722__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200722: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200722.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200722__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200722__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200722: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200722.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200722__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200723 {
  join: dwb_flow_at_mobile_app_event_i_d_20200723__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200723: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200723.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200723__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200723__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200723: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200723.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200723__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200724 {
  join: dwb_flow_at_mobile_app_event_i_d_20200724__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200724: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200724.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200724__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200724__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200724: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200724.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200724__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200725 {
  join: dwb_flow_at_mobile_app_event_i_d_20200725__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200725: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200725.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200725__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200725__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200725: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200725.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200725__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200726 {
  join: dwb_flow_at_mobile_app_event_i_d_20200726__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200726: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200726.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200726__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200726__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200726: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200726.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200726__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200727 {
  join: dwb_flow_at_mobile_app_event_i_d_20200727__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200727: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200727.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200727__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200727__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200727: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200727.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200727__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200728 {
  join: dwb_flow_at_mobile_app_event_i_d_20200728__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200728: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200728.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200728__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200728__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200728: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200728.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200728__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200729 {
  join: dwb_flow_at_mobile_app_event_i_d_20200729__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200729: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200729.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200729__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200729__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200729: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200729.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200729__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200730 {
  join: dwb_flow_at_mobile_app_event_i_d_20200730__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200730: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200730.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200730__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200730__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200730: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200730.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200730__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200731 {
  join: dwb_flow_at_mobile_app_event_i_d_20200731__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200731: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200731.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200731__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200731__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200731: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200731.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200731__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200801 {
  join: dwb_flow_at_mobile_app_event_i_d_20200801__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200801: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200801.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200801__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200801__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200801: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200801.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200801__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200802 {
  join: dwb_flow_at_mobile_app_event_i_d_20200802__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200802: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200802.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200802__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200802__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200802: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200802.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200802__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200803 {
  join: dwb_flow_at_mobile_app_event_i_d_20200803__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200803: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200803.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200803__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200803__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200803: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200803.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200803__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200804 {
  join: dwb_flow_at_mobile_app_event_i_d_20200804__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200804: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200804.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200804__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200804__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200804: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200804.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200804__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200805 {
  join: dwb_flow_at_mobile_app_event_i_d_20200805__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200805: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200805.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200805__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200805__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200805: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200805.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200805__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200806 {
  join: dwb_flow_at_mobile_app_event_i_d_20200806__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200806: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200806.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200806__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200806__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200806: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200806.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200806__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200807 {
  join: dwb_flow_at_mobile_app_event_i_d_20200807__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200807: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200807.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200807__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200807__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200807: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200807.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200807__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200808 {
  join: dwb_flow_at_mobile_app_event_i_d_20200808__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200808: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200808.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200808__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200808__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200808: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200808.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200808__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200809 {
  join: dwb_flow_at_mobile_app_event_i_d_20200809__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200809: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200809.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200809__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200809__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200809: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200809.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200809__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200810 {
  join: dwb_flow_at_mobile_app_event_i_d_20200810__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200810: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200810.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200810__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200810__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200810: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200810.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200810__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200811 {
  join: dwb_flow_at_mobile_app_event_i_d_20200811__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200811: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200811.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200811__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200811__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200811: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200811.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200811__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200812 {
  join: dwb_flow_at_mobile_app_event_i_d_20200812__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200812: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200812.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200812__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200812__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200812: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200812.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200812__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200813 {
  join: dwb_flow_at_mobile_app_event_i_d_20200813__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200813: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200813.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200813__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200813__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200813: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200813.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200813__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200814 {
  join: dwb_flow_at_mobile_app_event_i_d_20200814__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200814: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200814.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200814__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200814__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200814: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200814.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200814__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200815 {
  join: dwb_flow_at_mobile_app_event_i_d_20200815__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200815: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200815.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200815__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200815__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200815: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200815.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200815__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200816 {
  join: dwb_flow_at_mobile_app_event_i_d_20200816__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200816: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200816.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200816__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200816__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200816: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200816.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200816__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200817 {
  join: dwb_flow_at_mobile_app_event_i_d_20200817__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200817: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200817.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200817__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200817__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200817: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200817.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200817__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200818 {
  join: dwb_flow_at_mobile_app_event_i_d_20200818__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200818: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200818.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200818__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200818__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200818: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200818.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200818__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200819 {
  join: dwb_flow_at_mobile_app_event_i_d_20200819__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200819: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200819.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200819__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200819__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200819: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200819.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200819__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200820 {
  join: dwb_flow_at_mobile_app_event_i_d_20200820__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200820: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200820.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200820__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200820__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200820: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200820.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200820__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200821 {
  join: dwb_flow_at_mobile_app_event_i_d_20200821__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200821: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200821.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200821__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200821__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200821: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200821.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200821__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200822 {
  join: dwb_flow_at_mobile_app_event_i_d_20200822__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200822: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200822.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200822__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200822__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200822: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200822.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200822__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200823 {
  join: dwb_flow_at_mobile_app_event_i_d_20200823__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200823: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200823.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200823__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200823__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200823: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200823.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200823__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200824 {
  join: dwb_flow_at_mobile_app_event_i_d_20200824__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200824: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200824.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200824__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200824__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200824: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200824.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200824__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200825 {
  join: dwb_flow_at_mobile_app_event_i_d_20200825__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200825: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200825.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200825__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200825__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200825: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200825.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200825__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200826 {
  join: dwb_flow_at_mobile_app_event_i_d_20200826__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200826: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200826.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200826__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200826__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200826: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200826.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200826__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200827 {
  join: dwb_flow_at_mobile_app_event_i_d_20200827__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200827: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200827.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200827__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200827__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200827: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200827.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200827__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200828 {
  join: dwb_flow_at_mobile_app_event_i_d_20200828__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200828: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200828.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200828__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200828__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200828: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200828.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200828__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200829 {
  join: dwb_flow_at_mobile_app_event_i_d_20200829__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200829: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200829.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200829__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200829__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200829: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200829.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200829__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200830 {
  join: dwb_flow_at_mobile_app_event_i_d_20200830__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200830: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200830.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200830__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200830__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200830: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200830.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200830__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200831 {
  join: dwb_flow_at_mobile_app_event_i_d_20200831__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200831: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200831.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200831__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200831__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200831: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200831.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200831__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200901 {
  join: dwb_flow_at_mobile_app_event_i_d_20200901__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200901: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200901.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200901__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200901__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200901: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200901.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200901__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200902 {
  join: dwb_flow_at_mobile_app_event_i_d_20200902__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200902: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200902.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200902__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200902__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200902: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200902.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200902__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200903 {
  join: dwb_flow_at_mobile_app_event_i_d_20200903__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200903: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200903.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200903__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200903__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200903: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200903.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200903__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200904 {
  join: dwb_flow_at_mobile_app_event_i_d_20200904__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200904: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200904.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200904__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200904__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200904: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200904.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200904__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200905 {
  join: dwb_flow_at_mobile_app_event_i_d_20200905__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200905: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200905.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200905__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200905__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200905: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200905.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200905__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200906 {
  join: dwb_flow_at_mobile_app_event_i_d_20200906__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200906: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200906.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200906__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200906__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200906: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200906.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200906__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200907 {
  join: dwb_flow_at_mobile_app_event_i_d_20200907__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200907: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200907.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200907__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200907__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200907: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200907.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200907__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200908 {
  join: dwb_flow_at_mobile_app_event_i_d_20200908__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200908: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200908.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200908__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200908__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200908: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200908.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200908__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200909 {
  join: dwb_flow_at_mobile_app_event_i_d_20200909__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200909: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200909.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200909__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200909__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200909: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200909.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200909__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200910 {
  join: dwb_flow_at_mobile_app_event_i_d_20200910__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200910: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200910.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200910__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200910__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200910: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200910.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200910__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200911 {
  join: dwb_flow_at_mobile_app_event_i_d_20200911__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200911: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200911.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200911__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200911__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200911: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200911.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200911__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200912 {
  join: dwb_flow_at_mobile_app_event_i_d_20200912__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200912: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200912.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200912__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200912__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200912: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200912.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200912__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200913 {
  join: dwb_flow_at_mobile_app_event_i_d_20200913__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200913: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200913.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200913__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200913__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200913: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200913.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200913__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200914 {
  join: dwb_flow_at_mobile_app_event_i_d_20200914__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200914: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200914.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200914__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200914__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200914: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200914.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200914__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200915 {
  join: dwb_flow_at_mobile_app_event_i_d_20200915__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200915: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200915.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200915__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200915__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200915: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200915.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200915__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200916 {
  join: dwb_flow_at_mobile_app_event_i_d_20200916__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200916: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200916.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200916__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200916__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200916: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200916.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200916__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200917 {
  join: dwb_flow_at_mobile_app_event_i_d_20200917__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200917: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200917.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200917__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200917__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200917: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200917.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200917__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200918 {
  join: dwb_flow_at_mobile_app_event_i_d_20200918__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200918: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200918.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200918__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200918__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200918: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200918.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200918__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200919 {
  join: dwb_flow_at_mobile_app_event_i_d_20200919__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200919: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200919.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200919__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200919__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200919: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200919.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200919__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200920 {
  join: dwb_flow_at_mobile_app_event_i_d_20200920__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200920: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200920.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200920__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200920__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200920: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200920.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200920__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200921 {
  join: dwb_flow_at_mobile_app_event_i_d_20200921__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200921: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200921.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200921__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200921__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200921: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200921.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200921__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200922 {
  join: dwb_flow_at_mobile_app_event_i_d_20200922__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200922: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200922.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200922__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200922__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200922: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200922.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200922__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200923 {
  join: dwb_flow_at_mobile_app_event_i_d_20200923__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200923: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200923.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200923__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200923__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200923: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200923.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200923__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200924 {
  join: dwb_flow_at_mobile_app_event_i_d_20200924__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200924: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200924.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200924__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200924__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200924: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200924.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200924__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200925 {
  join: dwb_flow_at_mobile_app_event_i_d_20200925__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200925: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200925.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200925__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200925__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200925: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200925.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200925__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200926 {
  join: dwb_flow_at_mobile_app_event_i_d_20200926__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200926: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200926.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200926__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200926__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200926: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200926.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200926__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200927 {
  join: dwb_flow_at_mobile_app_event_i_d_20200927__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200927: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200927.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200927__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200927__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200927: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200927.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200927__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200928 {
  join: dwb_flow_at_mobile_app_event_i_d_20200928__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200928: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200928.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200928__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200928__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200928: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200928.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200928__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200929 {
  join: dwb_flow_at_mobile_app_event_i_d_20200929__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200929: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200929.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200929__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200929__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200929: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200929.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200929__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20200930 {
  join: dwb_flow_at_mobile_app_event_i_d_20200930__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20200930: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200930.event_params}) as dwb_flow_at_mobile_app_event_i_d_20200930__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20200930__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20200930: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20200930.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20200930__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201001 {
  join: dwb_flow_at_mobile_app_event_i_d_20201001__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201001: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201001.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201001__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201001__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201001: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201001.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201001__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201002 {
  join: dwb_flow_at_mobile_app_event_i_d_20201002__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201002: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201002.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201002__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201002__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201002: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201002.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201002__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201003 {
  join: dwb_flow_at_mobile_app_event_i_d_20201003__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201003: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201003.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201003__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201003__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201003: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201003.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201003__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201004 {
  join: dwb_flow_at_mobile_app_event_i_d_20201004__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201004: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201004.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201004__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201004__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201004: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201004.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201004__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201005 {
  join: dwb_flow_at_mobile_app_event_i_d_20201005__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201005: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201005.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201005__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201005__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201005: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201005.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201005__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201006 {
  join: dwb_flow_at_mobile_app_event_i_d_20201006__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201006: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201006.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201006__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201006__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201006: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201006.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201006__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201007 {
  join: dwb_flow_at_mobile_app_event_i_d_20201007__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201007: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201007.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201007__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201007__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201007: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201007.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201007__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201008 {
  join: dwb_flow_at_mobile_app_event_i_d_20201008__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201008: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201008.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201008__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201008__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201008: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201008.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201008__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201009 {
  join: dwb_flow_at_mobile_app_event_i_d_20201009__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201009: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201009.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201009__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201009__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201009: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201009.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201009__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201010 {
  join: dwb_flow_at_mobile_app_event_i_d_20201010__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201010: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201010.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201010__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201010__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201010: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201010.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201010__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201011 {
  join: dwb_flow_at_mobile_app_event_i_d_20201011__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201011: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201011.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201011__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201011__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201011: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201011.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201011__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201012 {
  join: dwb_flow_at_mobile_app_event_i_d_20201012__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201012: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201012.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201012__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201012__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201012: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201012.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201012__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201013 {
  join: dwb_flow_at_mobile_app_event_i_d_20201013__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201013: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201013.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201013__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201013__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201013: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201013.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201013__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201014 {
  join: dwb_flow_at_mobile_app_event_i_d_20201014__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201014: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201014.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201014__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201014__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201014: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201014.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201014__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201015 {
  join: dwb_flow_at_mobile_app_event_i_d_20201015__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201015: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201015.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201015__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201015__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201015: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201015.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201015__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201016 {
  join: dwb_flow_at_mobile_app_event_i_d_20201016__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201016: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201016.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201016__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201016__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201016: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201016.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201016__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201017 {
  join: dwb_flow_at_mobile_app_event_i_d_20201017__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201017: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201017.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201017__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201017__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201017: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201017.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201017__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201018 {
  join: dwb_flow_at_mobile_app_event_i_d_20201018__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201018: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201018.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201018__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201018__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201018: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201018.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201018__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201019 {
  join: dwb_flow_at_mobile_app_event_i_d_20201019__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201019: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201019.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201019__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201019__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201019: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201019.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201019__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201020 {
  join: dwb_flow_at_mobile_app_event_i_d_20201020__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201020: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201020.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201020__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201020__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201020: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201020.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201020__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201021 {
  join: dwb_flow_at_mobile_app_event_i_d_20201021__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201021: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201021.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201021__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201021__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201021: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201021.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201021__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201022 {
  join: dwb_flow_at_mobile_app_event_i_d_20201022__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201022: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201022.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201022__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201022__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201022: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201022.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201022__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201023 {
  join: dwb_flow_at_mobile_app_event_i_d_20201023__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201023: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201023.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201023__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201023__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201023: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201023.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201023__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201024 {
  join: dwb_flow_at_mobile_app_event_i_d_20201024__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201024: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201024.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201024__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201024__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201024: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201024.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201024__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201025 {
  join: dwb_flow_at_mobile_app_event_i_d_20201025__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201025: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201025.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201025__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201025__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201025: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201025.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201025__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201026 {
  join: dwb_flow_at_mobile_app_event_i_d_20201026__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201026: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201026.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201026__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201026__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201026: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201026.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201026__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201027 {
  join: dwb_flow_at_mobile_app_event_i_d_20201027__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201027: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201027.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201027__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201027__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201027: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201027.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201027__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201028 {
  join: dwb_flow_at_mobile_app_event_i_d_20201028__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201028: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201028.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201028__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201028__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201028: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201028.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201028__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201029 {
  join: dwb_flow_at_mobile_app_event_i_d_20201029__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201029: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201029.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201029__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201029__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201029: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201029.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201029__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201030 {
  join: dwb_flow_at_mobile_app_event_i_d_20201030__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201030: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201030.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201030__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201030__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201030: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201030.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201030__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201031 {
  join: dwb_flow_at_mobile_app_event_i_d_20201031__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201031: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201031.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201031__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201031__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201031: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201031.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201031__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201101 {
  join: dwb_flow_at_mobile_app_event_i_d_20201101__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201101: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201101.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201101__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201101__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201101: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201101.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201101__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201102 {
  join: dwb_flow_at_mobile_app_event_i_d_20201102__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201102: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201102.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201102__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201102__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201102: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201102.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201102__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201103 {
  join: dwb_flow_at_mobile_app_event_i_d_20201103__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201103: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201103.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201103__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201103__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201103: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201103.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201103__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201104 {
  join: dwb_flow_at_mobile_app_event_i_d_20201104__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201104: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201104.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201104__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201104__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201104: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201104.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201104__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201105 {
  join: dwb_flow_at_mobile_app_event_i_d_20201105__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201105: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201105.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201105__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201105__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201105: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201105.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201105__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201106 {
  join: dwb_flow_at_mobile_app_event_i_d_20201106__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201106: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201106.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201106__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201106__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201106: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201106.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201106__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201107 {
  join: dwb_flow_at_mobile_app_event_i_d_20201107__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201107: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201107.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201107__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201107__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201107: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201107.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201107__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201108 {
  join: dwb_flow_at_mobile_app_event_i_d_20201108__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201108: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201108.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201108__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201108__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201108: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201108.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201108__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201109 {
  join: dwb_flow_at_mobile_app_event_i_d_20201109__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201109: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201109.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201109__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201109__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201109: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201109.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201109__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201110 {
  join: dwb_flow_at_mobile_app_event_i_d_20201110__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201110: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201110.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201110__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201110__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201110: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201110.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201110__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201111 {
  join: dwb_flow_at_mobile_app_event_i_d_20201111__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201111: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201111.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201111__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201111__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201111: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201111.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201111__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201112 {
  join: dwb_flow_at_mobile_app_event_i_d_20201112__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201112: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201112.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201112__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201112__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201112: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201112.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201112__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201113 {
  join: dwb_flow_at_mobile_app_event_i_d_20201113__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201113: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201113.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201113__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201113__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201113: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201113.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201113__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201114 {
  join: dwb_flow_at_mobile_app_event_i_d_20201114__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201114: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201114.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201114__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201114__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201114: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201114.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201114__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201115 {
  join: dwb_flow_at_mobile_app_event_i_d_20201115__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201115: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201115.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201115__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201115__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201115: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201115.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201115__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201116 {
  join: dwb_flow_at_mobile_app_event_i_d_20201116__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201116: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201116.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201116__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201116__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201116: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201116.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201116__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201117 {
  join: dwb_flow_at_mobile_app_event_i_d_20201117__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201117: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201117.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201117__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201117__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201117: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201117.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201117__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201118 {
  join: dwb_flow_at_mobile_app_event_i_d_20201118__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201118: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201118.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201118__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201118__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201118: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201118.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201118__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201119 {
  join: dwb_flow_at_mobile_app_event_i_d_20201119__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201119: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201119.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201119__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201119__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201119: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201119.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201119__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201120 {
  join: dwb_flow_at_mobile_app_event_i_d_20201120__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201120: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201120.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201120__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201120__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201120: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201120.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201120__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201121 {
  join: dwb_flow_at_mobile_app_event_i_d_20201121__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201121: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201121.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201121__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201121__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201121: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201121.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201121__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201122 {
  join: dwb_flow_at_mobile_app_event_i_d_20201122__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201122: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201122.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201122__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201122__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201122: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201122.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201122__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201123 {
  join: dwb_flow_at_mobile_app_event_i_d_20201123__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201123: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201123.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201123__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201123__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201123: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201123.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201123__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201124 {
  join: dwb_flow_at_mobile_app_event_i_d_20201124__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201124: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201124.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201124__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201124__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201124: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201124.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201124__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201125 {
  join: dwb_flow_at_mobile_app_event_i_d_20201125__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201125: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201125.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201125__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201125__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201125: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201125.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201125__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201126 {
  join: dwb_flow_at_mobile_app_event_i_d_20201126__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201126: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201126.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201126__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201126__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201126: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201126.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201126__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201127 {
  join: dwb_flow_at_mobile_app_event_i_d_20201127__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201127: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201127.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201127__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201127__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201127: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201127.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201127__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201128 {
  join: dwb_flow_at_mobile_app_event_i_d_20201128__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201128: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201128.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201128__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201128__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201128: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201128.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201128__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201129 {
  join: dwb_flow_at_mobile_app_event_i_d_20201129__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201129: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201129.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201129__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201129__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201129: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201129.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201129__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201130 {
  join: dwb_flow_at_mobile_app_event_i_d_20201130__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201130: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201130.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201130__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201130__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201130: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201130.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201130__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201201 {
  join: dwb_flow_at_mobile_app_event_i_d_20201201__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201201: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201201.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201201__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201201__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201201: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201201.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201201__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201202 {
  join: dwb_flow_at_mobile_app_event_i_d_20201202__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201202: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201202.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201202__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201202__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201202: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201202.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201202__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201203 {
  join: dwb_flow_at_mobile_app_event_i_d_20201203__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201203: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201203.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201203__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201203__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201203: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201203.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201203__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201204 {
  join: dwb_flow_at_mobile_app_event_i_d_20201204__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201204: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201204.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201204__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201204__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201204: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201204.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201204__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201205 {
  join: dwb_flow_at_mobile_app_event_i_d_20201205__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201205: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201205.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201205__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201205__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201205: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201205.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201205__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201206 {
  join: dwb_flow_at_mobile_app_event_i_d_20201206__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201206: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201206.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201206__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201206__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201206: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201206.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201206__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201207 {
  join: dwb_flow_at_mobile_app_event_i_d_20201207__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201207: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201207.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201207__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201207__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201207: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201207.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201207__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201208 {
  join: dwb_flow_at_mobile_app_event_i_d_20201208__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201208: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201208.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201208__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201208__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201208: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201208.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201208__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201209 {
  join: dwb_flow_at_mobile_app_event_i_d_20201209__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201209: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201209.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201209__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201209__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201209: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201209.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201209__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201210 {
  join: dwb_flow_at_mobile_app_event_i_d_20201210__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201210: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201210.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201210__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201210__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201210: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201210.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201210__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201211 {
  join: dwb_flow_at_mobile_app_event_i_d_20201211__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201211: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201211.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201211__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201211__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201211: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201211.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201211__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201212 {
  join: dwb_flow_at_mobile_app_event_i_d_20201212__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201212: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201212.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201212__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201212__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201212: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201212.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201212__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201213 {
  join: dwb_flow_at_mobile_app_event_i_d_20201213__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201213: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201213.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201213__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201213__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201213: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201213.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201213__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201214 {
  join: dwb_flow_at_mobile_app_event_i_d_20201214__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201214: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201214.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201214__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201214__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201214: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201214.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201214__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201215 {
  join: dwb_flow_at_mobile_app_event_i_d_20201215__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201215: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201215.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201215__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201215__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201215: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201215.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201215__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201216 {
  join: dwb_flow_at_mobile_app_event_i_d_20201216__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201216: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201216.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201216__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201216__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201216: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201216.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201216__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201217 {
  join: dwb_flow_at_mobile_app_event_i_d_20201217__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201217: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201217.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201217__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201217__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201217: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201217.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201217__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201218 {
  join: dwb_flow_at_mobile_app_event_i_d_20201218__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201218: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201218.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201218__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201218__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201218: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201218.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201218__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201219 {
  join: dwb_flow_at_mobile_app_event_i_d_20201219__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201219: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201219.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201219__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201219__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201219: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201219.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201219__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201220 {
  join: dwb_flow_at_mobile_app_event_i_d_20201220__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201220: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201220.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201220__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201220__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201220: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201220.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201220__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201221 {
  join: dwb_flow_at_mobile_app_event_i_d_20201221__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201221: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201221.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201221__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201221__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201221: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201221.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201221__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201222 {
  join: dwb_flow_at_mobile_app_event_i_d_20201222__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201222: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201222.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201222__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201222__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201222: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201222.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201222__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201223 {
  join: dwb_flow_at_mobile_app_event_i_d_20201223__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201223: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201223.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201223__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201223__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201223: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201223.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201223__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201224 {
  join: dwb_flow_at_mobile_app_event_i_d_20201224__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201224: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201224.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201224__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201224__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201224: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201224.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201224__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201225 {
  join: dwb_flow_at_mobile_app_event_i_d_20201225__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201225: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201225.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201225__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201225__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201225: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201225.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201225__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201226 {
  join: dwb_flow_at_mobile_app_event_i_d_20201226__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201226: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201226.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201226__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201226__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201226: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201226.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201226__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201227 {
  join: dwb_flow_at_mobile_app_event_i_d_20201227__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201227: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201227.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201227__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201227__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201227: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201227.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201227__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201228 {
  join: dwb_flow_at_mobile_app_event_i_d_20201228__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201228: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201228.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201228__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201228__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201228: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201228.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201228__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201229 {
  join: dwb_flow_at_mobile_app_event_i_d_20201229__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201229: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201229.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201229__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201229__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201229: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201229.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201229__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201230 {
  join: dwb_flow_at_mobile_app_event_i_d_20201230__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201230: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201230.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201230__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201230__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201230: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201230.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201230__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20201231 {
  join: dwb_flow_at_mobile_app_event_i_d_20201231__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20201231: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201231.event_params}) as dwb_flow_at_mobile_app_event_i_d_20201231__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20201231__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20201231: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20201231.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20201231__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210101 {
  join: dwb_flow_at_mobile_app_event_i_d_20210101__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210101: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210101.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210101__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210101__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210101: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210101.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210101__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210102 {
  join: dwb_flow_at_mobile_app_event_i_d_20210102__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210102: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210102.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210102__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210102__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210102: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210102.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210102__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210103 {
  join: dwb_flow_at_mobile_app_event_i_d_20210103__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210103: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210103.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210103__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210103__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210103: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210103.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210103__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210104 {
  join: dwb_flow_at_mobile_app_event_i_d_20210104__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210104: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210104.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210104__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210104__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210104: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210104.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210104__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210105 {
  join: dwb_flow_at_mobile_app_event_i_d_20210105__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210105: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210105.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210105__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210105__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210105: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210105.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210105__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210106 {
  join: dwb_flow_at_mobile_app_event_i_d_20210106__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210106: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210106.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210106__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210106__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210106: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210106.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210106__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210107 {
  join: dwb_flow_at_mobile_app_event_i_d_20210107__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210107: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210107.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210107__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210107__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210107: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210107.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210107__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210108 {
  join: dwb_flow_at_mobile_app_event_i_d_20210108__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210108: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210108.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210108__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210108__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210108: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210108.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210108__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210109 {
  join: dwb_flow_at_mobile_app_event_i_d_20210109__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210109: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210109.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210109__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210109__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210109: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210109.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210109__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210110 {
  join: dwb_flow_at_mobile_app_event_i_d_20210110__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210110: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210110.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210110__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210110__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210110: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210110.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210110__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210111 {
  join: dwb_flow_at_mobile_app_event_i_d_20210111__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210111: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210111.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210111__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210111__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210111: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210111.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210111__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210112 {
  join: dwb_flow_at_mobile_app_event_i_d_20210112__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210112: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210112.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210112__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210112__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210112: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210112.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210112__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210113 {
  join: dwb_flow_at_mobile_app_event_i_d_20210113__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210113: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210113.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210113__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210113__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210113: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210113.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210113__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210114 {
  join: dwb_flow_at_mobile_app_event_i_d_20210114__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210114: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210114.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210114__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210114__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210114: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210114.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210114__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210115 {
  join: dwb_flow_at_mobile_app_event_i_d_20210115__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210115: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210115.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210115__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210115__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210115: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210115.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210115__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210116 {
  join: dwb_flow_at_mobile_app_event_i_d_20210116__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210116: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210116.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210116__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210116__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210116: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210116.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210116__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210117 {
  join: dwb_flow_at_mobile_app_event_i_d_20210117__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210117: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210117.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210117__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210117__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210117: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210117.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210117__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210118 {
  join: dwb_flow_at_mobile_app_event_i_d_20210118__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210118: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210118.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210118__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210118__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210118: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210118.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210118__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210119 {
  join: dwb_flow_at_mobile_app_event_i_d_20210119__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210119: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210119.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210119__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210119__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210119: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210119.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210119__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210120 {
  join: dwb_flow_at_mobile_app_event_i_d_20210120__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210120: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210120.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210120__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210120__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210120: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210120.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210120__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210121 {
  join: dwb_flow_at_mobile_app_event_i_d_20210121__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210121: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210121.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210121__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210121__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210121: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210121.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210121__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210122 {
  join: dwb_flow_at_mobile_app_event_i_d_20210122__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210122: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210122.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210122__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210122__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210122: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210122.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210122__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210123 {
  join: dwb_flow_at_mobile_app_event_i_d_20210123__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210123: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210123.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210123__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210123__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210123: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210123.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210123__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210124 {
  join: dwb_flow_at_mobile_app_event_i_d_20210124__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210124: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210124.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210124__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210124__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210124: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210124.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210124__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210125 {
  join: dwb_flow_at_mobile_app_event_i_d_20210125__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210125: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210125.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210125__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210125__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210125: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210125.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210125__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210126 {
  join: dwb_flow_at_mobile_app_event_i_d_20210126__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210126: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210126.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210126__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210126__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210126: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210126.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210126__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210127 {
  join: dwb_flow_at_mobile_app_event_i_d_20210127__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210127: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210127.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210127__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210127__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210127: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210127.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210127__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210128 {
  join: dwb_flow_at_mobile_app_event_i_d_20210128__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210128: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210128.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210128__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210128__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210128: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210128.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210128__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210129 {
  join: dwb_flow_at_mobile_app_event_i_d_20210129__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210129: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210129.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210129__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210129__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210129: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210129.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210129__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210130 {
  join: dwb_flow_at_mobile_app_event_i_d_20210130__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210130: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210130.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210130__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210130__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210130: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210130.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210130__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210131 {
  join: dwb_flow_at_mobile_app_event_i_d_20210131__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210131: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210131.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210131__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210131__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210131: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210131.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210131__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210201 {
  join: dwb_flow_at_mobile_app_event_i_d_20210201__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210201: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210201.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210201__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210201__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210201: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210201.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210201__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210202 {
  join: dwb_flow_at_mobile_app_event_i_d_20210202__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210202: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210202.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210202__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210202__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210202: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210202.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210202__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210203 {
  join: dwb_flow_at_mobile_app_event_i_d_20210203__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210203: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210203.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210203__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210203__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210203: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210203.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210203__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210204 {
  join: dwb_flow_at_mobile_app_event_i_d_20210204__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210204: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210204.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210204__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210204__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210204: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210204.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210204__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210205 {
  join: dwb_flow_at_mobile_app_event_i_d_20210205__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210205: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210205.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210205__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210205__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210205: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210205.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210205__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210206 {
  join: dwb_flow_at_mobile_app_event_i_d_20210206__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210206: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210206.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210206__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210206__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210206: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210206.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210206__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210207 {
  join: dwb_flow_at_mobile_app_event_i_d_20210207__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210207: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210207.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210207__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210207__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210207: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210207.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210207__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210208 {
  join: dwb_flow_at_mobile_app_event_i_d_20210208__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210208: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210208.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210208__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210208__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210208: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210208.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210208__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210209 {
  join: dwb_flow_at_mobile_app_event_i_d_20210209__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210209: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210209.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210209__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210209__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210209: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210209.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210209__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210210 {
  join: dwb_flow_at_mobile_app_event_i_d_20210210__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210210: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210210.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210210__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210210__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210210: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210210.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210210__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210211 {
  join: dwb_flow_at_mobile_app_event_i_d_20210211__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210211: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210211.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210211__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210211__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210211: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210211.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210211__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210212 {
  join: dwb_flow_at_mobile_app_event_i_d_20210212__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210212: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210212.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210212__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210212__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210212: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210212.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210212__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210213 {
  join: dwb_flow_at_mobile_app_event_i_d_20210213__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210213: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210213.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210213__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210213__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210213: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210213.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210213__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210214 {
  join: dwb_flow_at_mobile_app_event_i_d_20210214__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210214: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210214.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210214__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210214__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210214: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210214.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210214__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210215 {
  join: dwb_flow_at_mobile_app_event_i_d_20210215__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210215: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210215.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210215__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210215__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210215: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210215.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210215__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210216 {
  join: dwb_flow_at_mobile_app_event_i_d_20210216__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210216: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210216.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210216__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210216__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210216: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210216.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210216__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210217 {
  join: dwb_flow_at_mobile_app_event_i_d_20210217__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210217: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210217.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210217__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210217__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210217: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210217.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210217__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210218 {
  join: dwb_flow_at_mobile_app_event_i_d_20210218__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210218: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210218.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210218__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210218__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210218: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210218.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210218__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210219 {
  join: dwb_flow_at_mobile_app_event_i_d_20210219__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210219: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210219.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210219__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210219__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210219: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210219.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210219__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210220 {
  join: dwb_flow_at_mobile_app_event_i_d_20210220__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210220: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210220.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210220__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210220__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210220: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210220.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210220__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210221 {
  join: dwb_flow_at_mobile_app_event_i_d_20210221__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210221: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210221.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210221__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210221__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210221: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210221.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210221__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210222 {
  join: dwb_flow_at_mobile_app_event_i_d_20210222__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210222: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210222.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210222__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210222__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210222: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210222.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210222__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210223 {
  join: dwb_flow_at_mobile_app_event_i_d_20210223__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210223: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210223.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210223__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210223__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210223: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210223.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210223__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210224 {
  join: dwb_flow_at_mobile_app_event_i_d_20210224__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210224: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210224.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210224__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210224__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210224: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210224.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210224__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210225 {
  join: dwb_flow_at_mobile_app_event_i_d_20210225__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210225: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210225.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210225__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210225__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210225: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210225.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210225__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210226 {
  join: dwb_flow_at_mobile_app_event_i_d_20210226__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210226: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210226.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210226__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210226__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210226: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210226.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210226__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210227 {
  join: dwb_flow_at_mobile_app_event_i_d_20210227__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210227: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210227.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210227__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210227__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210227: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210227.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210227__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210228 {
  join: dwb_flow_at_mobile_app_event_i_d_20210228__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210228: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210228.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210228__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210228__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210228: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210228.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210228__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210301 {
  join: dwb_flow_at_mobile_app_event_i_d_20210301__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210301: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210301.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210301__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210301__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210301: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210301.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210301__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210302 {
  join: dwb_flow_at_mobile_app_event_i_d_20210302__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210302: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210302.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210302__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210302__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210302: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210302.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210302__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210303 {
  join: dwb_flow_at_mobile_app_event_i_d_20210303__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210303: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210303.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210303__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210303__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210303: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210303.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210303__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210304 {
  join: dwb_flow_at_mobile_app_event_i_d_20210304__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210304: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210304.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210304__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210304__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210304: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210304.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210304__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210305 {
  join: dwb_flow_at_mobile_app_event_i_d_20210305__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210305: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210305.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210305__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210305__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210305: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210305.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210305__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210306 {
  join: dwb_flow_at_mobile_app_event_i_d_20210306__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210306: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210306.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210306__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210306__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210306: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210306.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210306__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210307 {
  join: dwb_flow_at_mobile_app_event_i_d_20210307__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210307: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210307.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210307__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210307__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210307: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210307.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210307__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210308 {
  join: dwb_flow_at_mobile_app_event_i_d_20210308__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210308: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210308.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210308__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210308__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210308: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210308.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210308__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210309 {
  join: dwb_flow_at_mobile_app_event_i_d_20210309__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210309: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210309.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210309__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210309__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210309: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210309.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210309__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210310 {
  join: dwb_flow_at_mobile_app_event_i_d_20210310__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210310: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210310.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210310__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210310__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210310: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210310.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210310__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210311 {
  join: dwb_flow_at_mobile_app_event_i_d_20210311__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210311: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210311.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210311__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210311__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210311: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210311.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210311__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210312 {
  join: dwb_flow_at_mobile_app_event_i_d_20210312__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210312: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210312.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210312__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210312__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210312: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210312.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210312__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210313 {
  join: dwb_flow_at_mobile_app_event_i_d_20210313__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210313: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210313.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210313__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210313__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210313: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210313.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210313__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210314 {
  join: dwb_flow_at_mobile_app_event_i_d_20210314__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210314: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210314.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210314__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210314__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210314: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210314.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210314__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210315 {
  join: dwb_flow_at_mobile_app_event_i_d_20210315__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210315: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210315.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210315__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210315__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210315: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210315.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210315__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210316 {
  join: dwb_flow_at_mobile_app_event_i_d_20210316__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210316: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210316.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210316__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210316__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210316: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210316.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210316__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210317 {
  join: dwb_flow_at_mobile_app_event_i_d_20210317__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210317: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210317.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210317__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210317__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210317: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210317.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210317__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210318 {
  join: dwb_flow_at_mobile_app_event_i_d_20210318__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210318: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210318.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210318__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210318__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210318: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210318.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210318__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210319 {
  join: dwb_flow_at_mobile_app_event_i_d_20210319__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210319: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210319.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210319__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210319__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210319: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210319.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210319__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210320 {
  join: dwb_flow_at_mobile_app_event_i_d_20210320__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210320: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210320.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210320__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210320__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210320: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210320.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210320__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210321 {
  join: dwb_flow_at_mobile_app_event_i_d_20210321__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210321: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210321.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210321__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210321__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210321: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210321.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210321__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210322 {
  join: dwb_flow_at_mobile_app_event_i_d_20210322__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210322: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210322.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210322__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210322__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210322: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210322.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210322__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210323 {
  join: dwb_flow_at_mobile_app_event_i_d_20210323__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210323: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210323.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210323__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210323__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210323: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210323.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210323__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210324 {
  join: dwb_flow_at_mobile_app_event_i_d_20210324__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210324: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210324.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210324__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210324__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210324: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210324.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210324__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210325 {
  join: dwb_flow_at_mobile_app_event_i_d_20210325__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210325: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210325.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210325__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210325__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210325: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210325.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210325__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210326 {
  join: dwb_flow_at_mobile_app_event_i_d_20210326__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210326: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210326.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210326__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210326__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210326: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210326.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210326__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210327 {
  join: dwb_flow_at_mobile_app_event_i_d_20210327__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210327: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210327.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210327__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210327__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210327: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210327.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210327__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210328 {
  join: dwb_flow_at_mobile_app_event_i_d_20210328__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210328: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210328.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210328__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210328__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210328: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210328.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210328__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210329 {
  join: dwb_flow_at_mobile_app_event_i_d_20210329__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210329: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210329.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210329__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210329__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210329: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210329.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210329__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210330 {
  join: dwb_flow_at_mobile_app_event_i_d_20210330__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210330: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210330.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210330__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210330__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210330: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210330.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210330__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210331 {
  join: dwb_flow_at_mobile_app_event_i_d_20210331__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210331: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210331.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210331__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210331__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210331: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210331.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210331__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210401 {
  join: dwb_flow_at_mobile_app_event_i_d_20210401__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210401: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210401.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210401__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210401__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210401: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210401.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210401__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210402 {
  join: dwb_flow_at_mobile_app_event_i_d_20210402__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210402: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210402.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210402__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210402__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210402: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210402.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210402__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210403 {
  join: dwb_flow_at_mobile_app_event_i_d_20210403__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210403: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210403.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210403__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210403__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210403: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210403.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210403__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210404 {
  join: dwb_flow_at_mobile_app_event_i_d_20210404__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210404: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210404.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210404__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210404__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210404: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210404.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210404__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210405 {
  join: dwb_flow_at_mobile_app_event_i_d_20210405__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210405: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210405.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210405__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210405__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210405: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210405.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210405__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210406 {
  join: dwb_flow_at_mobile_app_event_i_d_20210406__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210406: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210406.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210406__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210406__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210406: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210406.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210406__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210407 {
  join: dwb_flow_at_mobile_app_event_i_d_20210407__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210407: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210407.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210407__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210407__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210407: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210407.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210407__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210408 {
  join: dwb_flow_at_mobile_app_event_i_d_20210408__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210408: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210408.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210408__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210408__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210408: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210408.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210408__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210409 {
  join: dwb_flow_at_mobile_app_event_i_d_20210409__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210409: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210409.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210409__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210409__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210409: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210409.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210409__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210410 {
  join: dwb_flow_at_mobile_app_event_i_d_20210410__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210410: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210410.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210410__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210410__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210410: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210410.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210410__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210411 {
  join: dwb_flow_at_mobile_app_event_i_d_20210411__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210411: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210411.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210411__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210411__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210411: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210411.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210411__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210412 {
  join: dwb_flow_at_mobile_app_event_i_d_20210412__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210412: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210412.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210412__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210412__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210412: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210412.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210412__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210413 {
  join: dwb_flow_at_mobile_app_event_i_d_20210413__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210413: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210413.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210413__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210413__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210413: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210413.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210413__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210414 {
  join: dwb_flow_at_mobile_app_event_i_d_20210414__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210414: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210414.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210414__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210414__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210414: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210414.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210414__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210415 {
  join: dwb_flow_at_mobile_app_event_i_d_20210415__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210415: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210415.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210415__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210415__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210415: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210415.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210415__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210416 {
  join: dwb_flow_at_mobile_app_event_i_d_20210416__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210416: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210416.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210416__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210416__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210416: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210416.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210416__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210417 {
  join: dwb_flow_at_mobile_app_event_i_d_20210417__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210417: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210417.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210417__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210417__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210417: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210417.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210417__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210418 {
  join: dwb_flow_at_mobile_app_event_i_d_20210418__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210418: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210418.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210418__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210418__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210418: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210418.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210418__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210419 {
  join: dwb_flow_at_mobile_app_event_i_d_20210419__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210419: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210419.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210419__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210419__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210419: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210419.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210419__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210420 {
  join: dwb_flow_at_mobile_app_event_i_d_20210420__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210420: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210420.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210420__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210420__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210420: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210420.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210420__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210421 {
  join: dwb_flow_at_mobile_app_event_i_d_20210421__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210421: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210421.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210421__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210421__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210421: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210421.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210421__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210422 {
  join: dwb_flow_at_mobile_app_event_i_d_20210422__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210422: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210422.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210422__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210422__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210422: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210422.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210422__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210423 {
  join: dwb_flow_at_mobile_app_event_i_d_20210423__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210423: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210423.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210423__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210423__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210423: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210423.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210423__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210424 {
  join: dwb_flow_at_mobile_app_event_i_d_20210424__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210424: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210424.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210424__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210424__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210424: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210424.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210424__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210425 {
  join: dwb_flow_at_mobile_app_event_i_d_20210425__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210425: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210425.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210425__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210425__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210425: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210425.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210425__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210426 {
  join: dwb_flow_at_mobile_app_event_i_d_20210426__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210426: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210426.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210426__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210426__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210426: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210426.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210426__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210427 {
  join: dwb_flow_at_mobile_app_event_i_d_20210427__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210427: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210427.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210427__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210427__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210427: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210427.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210427__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210428 {
  join: dwb_flow_at_mobile_app_event_i_d_20210428__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210428: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210428.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210428__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210428__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210428: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210428.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210428__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210429 {
  join: dwb_flow_at_mobile_app_event_i_d_20210429__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210429: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210429.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210429__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210429__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210429: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210429.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210429__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210430 {
  join: dwb_flow_at_mobile_app_event_i_d_20210430__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210430: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210430.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210430__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210430__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210430: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210430.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210430__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210501 {
  join: dwb_flow_at_mobile_app_event_i_d_20210501__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210501: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210501.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210501__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210501__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210501: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210501.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210501__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210502 {
  join: dwb_flow_at_mobile_app_event_i_d_20210502__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210502: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210502.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210502__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210502__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210502: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210502.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210502__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210503 {
  join: dwb_flow_at_mobile_app_event_i_d_20210503__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210503: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210503.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210503__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210503__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210503: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210503.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210503__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210504 {
  join: dwb_flow_at_mobile_app_event_i_d_20210504__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210504: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210504.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210504__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210504__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210504: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210504.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210504__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210505 {
  join: dwb_flow_at_mobile_app_event_i_d_20210505__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210505: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210505.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210505__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210505__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210505: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210505.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210505__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210506 {
  join: dwb_flow_at_mobile_app_event_i_d_20210506__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210506: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210506.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210506__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210506__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210506: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210506.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210506__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210507 {
  join: dwb_flow_at_mobile_app_event_i_d_20210507__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210507: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210507.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210507__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210507__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210507: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210507.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210507__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210508 {
  join: dwb_flow_at_mobile_app_event_i_d_20210508__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210508: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210508.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210508__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210508__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210508: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210508.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210508__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210509 {
  join: dwb_flow_at_mobile_app_event_i_d_20210509__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210509: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210509.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210509__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210509__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210509: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210509.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210509__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210510 {
  join: dwb_flow_at_mobile_app_event_i_d_20210510__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210510: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210510.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210510__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210510__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210510: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210510.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210510__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210511 {
  join: dwb_flow_at_mobile_app_event_i_d_20210511__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210511: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210511.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210511__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210511__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210511: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210511.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210511__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210512 {
  join: dwb_flow_at_mobile_app_event_i_d_20210512__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210512: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210512.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210512__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210512__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210512: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210512.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210512__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210513 {
  join: dwb_flow_at_mobile_app_event_i_d_20210513__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210513: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210513.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210513__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210513__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210513: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210513.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210513__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210514 {
  join: dwb_flow_at_mobile_app_event_i_d_20210514__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210514: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210514.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210514__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210514__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210514: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210514.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210514__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210515 {
  join: dwb_flow_at_mobile_app_event_i_d_20210515__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210515: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210515.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210515__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210515__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210515: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210515.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210515__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210516 {
  join: dwb_flow_at_mobile_app_event_i_d_20210516__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210516: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210516.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210516__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210516__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210516: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210516.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210516__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210517 {
  join: dwb_flow_at_mobile_app_event_i_d_20210517__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210517: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210517.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210517__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210517__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210517: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210517.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210517__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210518 {
  join: dwb_flow_at_mobile_app_event_i_d_20210518__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210518: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210518.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210518__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210518__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210518: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210518.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210518__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210519 {
  join: dwb_flow_at_mobile_app_event_i_d_20210519__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210519: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210519.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210519__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210519__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210519: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210519.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210519__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210520 {
  join: dwb_flow_at_mobile_app_event_i_d_20210520__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210520: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210520.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210520__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210520__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210520: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210520.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210520__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210521 {
  join: dwb_flow_at_mobile_app_event_i_d_20210521__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210521: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210521.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210521__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210521__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210521: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210521.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210521__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210522 {
  join: dwb_flow_at_mobile_app_event_i_d_20210522__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210522: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210522.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210522__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210522__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210522: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210522.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210522__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210523 {
  join: dwb_flow_at_mobile_app_event_i_d_20210523__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210523: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210523.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210523__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210523__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210523: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210523.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210523__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210524 {
  join: dwb_flow_at_mobile_app_event_i_d_20210524__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210524: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210524.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210524__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210524__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210524: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210524.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210524__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210525 {
  join: dwb_flow_at_mobile_app_event_i_d_20210525__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210525: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210525.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210525__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210525__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210525: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210525.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210525__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210526 {
  join: dwb_flow_at_mobile_app_event_i_d_20210526__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210526: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210526.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210526__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210526__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210526: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210526.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210526__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210527 {
  join: dwb_flow_at_mobile_app_event_i_d_20210527__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210527: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210527.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210527__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210527__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210527: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210527.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210527__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210528 {
  join: dwb_flow_at_mobile_app_event_i_d_20210528__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210528: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210528.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210528__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210528__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210528: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210528.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210528__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210529 {
  join: dwb_flow_at_mobile_app_event_i_d_20210529__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210529: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210529.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210529__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210529__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210529: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210529.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210529__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_mobile_app_event_i_d_20210530 {
  join: dwb_flow_at_mobile_app_event_i_d_20210530__event_params {
    view_label: "Dwb Flow At Mobile App Event I D 20210530: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210530.event_params}) as dwb_flow_at_mobile_app_event_i_d_20210530__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_mobile_app_event_i_d_20210530__user_properties {
    view_label: "Dwb Flow At Mobile App Event I D 20210530: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_mobile_app_event_i_d_20210530.user_properties}) as dwb_flow_at_mobile_app_event_i_d_20210530__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200628 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200628__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200628: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200628.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200628__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200628__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200628: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200628.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200628__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200629 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200629__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200629: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200629.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200629__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200629__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200629: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200629.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200629__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200630 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200630__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200630: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200630.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200630__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200630__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200630: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200630.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200630__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200701 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200701__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200701: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200701.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200701__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200701__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200701: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200701.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200701__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200702 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200702__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200702: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200702.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200702__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200702__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200702: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200702.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200702__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200703 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200703__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200703: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200703.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200703__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200703__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200703: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200703.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200703__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200704 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200704__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200704: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200704.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200704__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200704__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200704: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200704.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200704__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200705 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200705__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200705: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200705.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200705__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200705__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200705: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200705.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200705__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200706 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200706__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200706: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200706.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200706__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200706__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200706: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200706.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200706__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200707 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200707__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200707: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200707.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200707__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200707__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200707: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200707.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200707__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200708 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200708__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200708: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200708.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200708__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200708__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200708: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200708.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200708__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200709 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200709__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200709: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200709.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200709__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200709__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200709: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200709.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200709__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200710 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200710__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200710: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200710.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200710__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200710__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200710: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200710.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200710__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200711 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200711__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200711: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200711.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200711__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200711__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200711: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200711.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200711__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200712 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200712__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200712: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200712.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200712__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200712__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200712: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200712.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200712__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200713 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200713__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200713: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200713.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200713__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200713__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200713: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200713.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200713__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200714 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200714__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200714: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200714.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200714__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200714__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200714: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200714.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200714__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200715 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200715__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200715: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200715.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200715__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200715__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200715: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200715.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200715__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200716 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200716__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200716: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200716.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200716__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200716__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200716: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200716.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200716__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200717 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200717__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200717: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200717.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200717__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200717__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200717: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200717.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200717__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200718 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200718__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200718: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200718.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200718__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200718__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200718: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200718.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200718__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200719 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200719__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200719: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200719.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200719__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200719__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200719: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200719.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200719__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200720 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200720__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200720: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200720.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200720__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200720__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200720: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200720.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200720__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200721 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200721__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200721: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200721.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200721__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200721__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200721: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200721.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200721__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200722 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200722__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200722: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200722.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200722__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200722__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200722: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200722.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200722__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200723 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200723__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200723: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200723.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200723__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200723__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200723: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200723.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200723__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200724 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200724__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200724: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200724.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200724__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200724__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200724: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200724.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200724__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200725 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200725__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200725: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200725.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200725__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200725__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200725: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200725.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200725__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200726 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200726__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200726: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200726.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200726__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200726__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200726: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200726.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200726__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200727 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200727__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200727: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200727.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200727__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200727__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200727: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200727.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200727__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200728 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200728__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200728: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200728.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200728__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200728__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200728: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200728.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200728__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200729 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200729__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200729: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200729.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200729__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200729__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200729: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200729.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200729__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200730 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200730__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200730: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200730.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200730__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200730__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200730: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200730.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200730__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200731 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200731__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200731: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200731.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200731__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200731__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200731: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200731.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200731__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200801 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200801__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200801: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200801.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200801__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200801__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200801: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200801.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200801__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200802 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200802__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200802: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200802.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200802__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200802__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200802: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200802.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200802__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200803 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200803__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200803: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200803.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200803__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200803__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200803: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200803.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200803__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200804 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200804__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200804: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200804.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200804__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200804__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200804: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200804.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200804__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200805 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200805__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200805: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200805.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200805__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200805__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200805: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200805.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200805__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200806 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200806__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200806: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200806.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200806__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200806__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200806: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200806.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200806__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200807 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200807__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200807: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200807.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200807__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200807__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200807: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200807.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200807__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200808 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200808__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200808: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200808.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200808__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200808__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200808: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200808.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200808__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200809 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200809__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200809: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200809.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200809__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200809__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200809: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200809.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200809__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200810 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200810__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200810: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200810.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200810__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200810__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200810: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200810.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200810__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200811 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200811__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200811: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200811.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200811__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200811__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200811: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200811.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200811__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200812 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200812__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200812: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200812.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200812__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200812__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200812: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200812.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200812__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200813 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200813__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200813: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200813.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200813__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200813__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200813: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200813.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200813__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200814 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200814__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200814: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200814.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200814__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200814__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200814: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200814.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200814__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200815 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200815__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200815: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200815.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200815__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200815__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200815: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200815.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200815__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200816 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200816__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200816: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200816.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200816__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200816__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200816: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200816.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200816__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200817 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200817__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200817: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200817.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200817__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200817__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200817: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200817.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200817__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200818 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200818__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200818: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200818.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200818__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200818__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200818: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200818.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200818__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200819 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200819__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200819: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200819.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200819__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200819__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200819: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200819.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200819__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200820 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200820__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200820: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200820.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200820__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200820__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200820: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200820.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200820__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200821 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200821__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200821: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200821.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200821__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200821__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200821: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200821.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200821__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200822 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200822__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200822: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200822.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200822__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200822__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200822: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200822.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200822__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200823 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200823__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200823: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200823.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200823__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200823__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200823: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200823.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200823__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200824 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200824__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200824: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200824.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200824__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200824__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200824: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200824.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200824__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200825 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200825__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200825: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200825.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200825__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200825__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200825: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200825.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200825__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200826 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200826__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200826: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200826.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200826__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200826__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200826: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200826.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200826__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200827 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200827__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200827: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200827.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200827__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200827__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200827: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200827.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200827__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200828 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200828__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200828: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200828.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200828__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200828__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200828: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200828.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200828__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200829 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200829__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200829: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200829.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200829__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200829__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200829: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200829.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200829__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200830 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200830__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200830: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200830.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200830__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200830__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200830: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200830.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200830__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200831 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200831__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200831: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200831.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200831__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200831__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200831: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200831.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200831__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200901 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200901__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200901: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200901.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200901__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200901__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200901: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200901.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200901__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200902 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200902__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200902: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200902.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200902__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200902__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200902: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200902.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200902__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200903 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200903__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200903: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200903.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200903__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200903__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200903: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200903.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200903__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200904 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200904__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200904: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200904.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200904__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200904__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200904: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200904.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200904__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200905 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200905__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200905: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200905.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200905__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200905__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200905: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200905.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200905__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200906 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200906__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200906: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200906.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200906__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200906__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200906: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200906.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200906__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200907 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200907__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200907: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200907.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200907__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200907__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200907: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200907.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200907__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200908 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200908__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200908: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200908.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200908__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200908__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200908: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200908.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200908__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200909 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200909__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200909: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200909.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200909__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200909__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200909: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200909.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200909__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200910 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200910__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200910: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200910.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200910__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200910__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200910: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200910.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200910__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200911 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200911__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200911: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200911.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200911__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200911__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200911: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200911.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200911__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200912 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200912__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200912: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200912.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200912__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200912__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200912: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200912.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200912__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200913 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200913__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200913: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200913.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200913__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200913__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200913: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200913.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200913__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200914 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200914__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200914: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200914.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200914__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200914__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200914: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200914.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200914__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200915 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200915__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200915: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200915.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200915__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200915__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200915: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200915.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200915__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200916 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200916__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200916: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200916.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200916__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200916__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200916: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200916.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200916__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200917 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200917__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200917: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200917.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200917__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200917__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200917: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200917.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200917__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200918 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200918__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200918: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200918.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200918__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200918__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200918: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200918.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200918__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200919 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200919__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200919: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200919.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200919__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200919__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200919: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200919.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200919__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200920 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200920__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200920: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200920.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200920__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200920__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200920: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200920.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200920__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200921 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200921__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200921: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200921.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200921__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200921__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200921: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200921.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200921__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200922 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200922__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200922: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200922.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200922__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200922__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200922: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200922.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200922__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200923 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200923__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200923: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200923.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200923__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200923__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200923: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200923.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200923__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200924 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200924__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200924: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200924.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200924__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200924__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200924: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200924.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200924__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200925 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200925__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200925: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200925.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200925__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200925__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200925: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200925.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200925__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200926 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200926__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200926: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200926.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200926__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200926__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200926: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200926.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200926__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200927 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200927__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200927: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200927.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200927__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200927__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200927: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200927.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200927__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200928 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200928__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200928: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200928.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200928__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200928__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200928: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200928.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200928__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200929 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200929__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200929: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200929.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200929__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200929__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200929: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200929.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200929__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20200930 {
  join: dwb_flow_at_toc_mobile_event_i_d_20200930__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200930: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200930.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20200930__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20200930__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20200930: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20200930.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20200930__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201001 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201001__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201001: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201001.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201001__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201001__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201001: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201001.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201001__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201002 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201002__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201002: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201002.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201002__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201002__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201002: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201002.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201002__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201003 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201003__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201003: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201003.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201003__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201003__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201003: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201003.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201003__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201004 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201004__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201004: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201004.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201004__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201004__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201004: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201004.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201004__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201005 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201005__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201005: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201005.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201005__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201005__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201005: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201005.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201005__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201006 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201006__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201006: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201006.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201006__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201006__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201006: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201006.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201006__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201007 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201007__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201007: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201007.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201007__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201007__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201007: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201007.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201007__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201008 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201008__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201008: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201008.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201008__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201008__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201008: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201008.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201008__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201009 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201009__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201009: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201009.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201009__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201009__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201009: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201009.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201009__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201010 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201010__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201010: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201010.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201010__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201010__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201010: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201010.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201010__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201011 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201011__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201011: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201011.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201011__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201011__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201011: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201011.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201011__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201012 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201012__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201012: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201012.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201012__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201012__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201012: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201012.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201012__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201013 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201013__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201013: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201013.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201013__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201013__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201013: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201013.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201013__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201014 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201014__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201014: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201014.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201014__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201014__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201014: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201014.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201014__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201015 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201015__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201015: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201015.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201015__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201015__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201015: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201015.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201015__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201016 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201016__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201016: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201016.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201016__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201016__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201016: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201016.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201016__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201017 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201017__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201017: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201017.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201017__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201017__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201017: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201017.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201017__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201018 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201018__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201018: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201018.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201018__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201018__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201018: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201018.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201018__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201019 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201019__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201019: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201019.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201019__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201019__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201019: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201019.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201019__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201020 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201020__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201020: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201020.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201020__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201020__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201020: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201020.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201020__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201021 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201021__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201021: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201021.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201021__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201021__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201021: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201021.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201021__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201022 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201022__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201022: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201022.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201022__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201022__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201022: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201022.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201022__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201023 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201023__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201023: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201023.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201023__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201023__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201023: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201023.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201023__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201024 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201024__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201024: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201024.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201024__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201024__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201024: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201024.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201024__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201025 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201025__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201025: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201025.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201025__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201025__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201025: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201025.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201025__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201026 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201026__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201026: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201026.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201026__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201026__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201026: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201026.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201026__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201027 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201027__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201027: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201027.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201027__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201027__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201027: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201027.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201027__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201028 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201028__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201028: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201028.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201028__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201028__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201028: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201028.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201028__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201029 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201029__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201029: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201029.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201029__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201029__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201029: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201029.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201029__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201030 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201030__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201030: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201030.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201030__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201030__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201030: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201030.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201030__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201031 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201031__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201031: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201031.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201031__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201031__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201031: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201031.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201031__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201101 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201101__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201101: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201101.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201101__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201101__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201101: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201101.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201101__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201102 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201102__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201102: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201102.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201102__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201102__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201102: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201102.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201102__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201103 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201103__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201103: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201103.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201103__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201103__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201103: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201103.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201103__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201104 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201104__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201104: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201104.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201104__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201104__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201104: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201104.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201104__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201105 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201105__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201105: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201105.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201105__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201105__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201105: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201105.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201105__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201106 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201106__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201106: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201106.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201106__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201106__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201106: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201106.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201106__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201107 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201107__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201107: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201107.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201107__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201107__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201107: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201107.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201107__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201108 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201108__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201108: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201108.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201108__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201108__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201108: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201108.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201108__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201109 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201109__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201109: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201109.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201109__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201109__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201109: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201109.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201109__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201110 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201110__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201110: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201110.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201110__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201110__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201110: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201110.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201110__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201111 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201111__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201111: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201111.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201111__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201111__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201111: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201111.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201111__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201112 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201112__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201112: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201112.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201112__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201112__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201112: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201112.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201112__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201113 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201113__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201113: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201113.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201113__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201113__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201113: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201113.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201113__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201114 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201114__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201114: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201114.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201114__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201114__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201114: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201114.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201114__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201115 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201115__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201115: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201115.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201115__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201115__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201115: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201115.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201115__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201116 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201116__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201116: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201116.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201116__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201116__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201116: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201116.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201116__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201117 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201117__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201117: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201117.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201117__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201117__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201117: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201117.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201117__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201118 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201118__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201118: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201118.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201118__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201118__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201118: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201118.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201118__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201119 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201119__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201119: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201119.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201119__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201119__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201119: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201119.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201119__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201120 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201120__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201120: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201120.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201120__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201120__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201120: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201120.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201120__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201121 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201121__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201121: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201121.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201121__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201121__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201121: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201121.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201121__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201122 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201122__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201122: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201122.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201122__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201122__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201122: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201122.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201122__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201123 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201123__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201123: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201123.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201123__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201123__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201123: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201123.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201123__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201124 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201124__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201124: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201124.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201124__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201124__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201124: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201124.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201124__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201125 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201125__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201125: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201125.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201125__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201125__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201125: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201125.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201125__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201126 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201126__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201126: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201126.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201126__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201126__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201126: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201126.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201126__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201127 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201127__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201127: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201127.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201127__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201127__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201127: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201127.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201127__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201128 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201128__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201128: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201128.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201128__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201128__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201128: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201128.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201128__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201129 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201129__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201129: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201129.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201129__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201129__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201129: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201129.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201129__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201130 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201130__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201130: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201130.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201130__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201130__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201130: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201130.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201130__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201201 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201201__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201201: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201201.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201201__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201201__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201201: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201201.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201201__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201202 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201202__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201202: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201202.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201202__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201202__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201202: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201202.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201202__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201203 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201203__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201203: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201203.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201203__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201203__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201203: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201203.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201203__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201204 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201204__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201204: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201204.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201204__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201204__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201204: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201204.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201204__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201205 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201205__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201205: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201205.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201205__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201205__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201205: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201205.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201205__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201206 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201206__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201206: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201206.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201206__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201206__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201206: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201206.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201206__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201207 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201207__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201207: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201207.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201207__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201207__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201207: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201207.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201207__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201208 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201208__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201208: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201208.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201208__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201208__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201208: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201208.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201208__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201209 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201209__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201209: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201209.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201209__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201209__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201209: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201209.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201209__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201210 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201210__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201210: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201210.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201210__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201210__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201210: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201210.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201210__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201211 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201211__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201211: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201211.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201211__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201211__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201211: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201211.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201211__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201212 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201212__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201212: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201212.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201212__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201212__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201212: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201212.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201212__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201213 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201213__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201213: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201213.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201213__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201213__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201213: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201213.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201213__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201214 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201214__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201214: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201214.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201214__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201214__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201214: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201214.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201214__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201215 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201215__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201215: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201215.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201215__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201215__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201215: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201215.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201215__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201216 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201216__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201216: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201216.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201216__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201216__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201216: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201216.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201216__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201217 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201217__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201217: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201217.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201217__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201217__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201217: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201217.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201217__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201218 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201218__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201218: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201218.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201218__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201218__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201218: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201218.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201218__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201219 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201219__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201219: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201219.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201219__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201219__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201219: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201219.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201219__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201220 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201220__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201220: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201220.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201220__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201220__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201220: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201220.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201220__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201221 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201221__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201221: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201221.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201221__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201221__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201221: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201221.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201221__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201222 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201222__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201222: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201222.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201222__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201222__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201222: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201222.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201222__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201223 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201223__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201223: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201223.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201223__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201223__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201223: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201223.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201223__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201224 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201224__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201224: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201224.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201224__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201224__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201224: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201224.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201224__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201225 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201225__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201225: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201225.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201225__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201225__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201225: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201225.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201225__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201226 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201226__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201226: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201226.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201226__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201226__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201226: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201226.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201226__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201227 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201227__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201227: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201227.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201227__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201227__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201227: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201227.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201227__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201228 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201228__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201228: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201228.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201228__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201228__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201228: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201228.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201228__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201229 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201229__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201229: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201229.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201229__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201229__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201229: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201229.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201229__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201230 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201230__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201230: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201230.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201230__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201230__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201230: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201230.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201230__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20201231 {
  join: dwb_flow_at_toc_mobile_event_i_d_20201231__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201231: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201231.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20201231__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20201231__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20201231: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20201231.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20201231__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210101 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210101__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210101: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210101.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210101__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210101__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210101: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210101.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210101__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210102 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210102__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210102: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210102.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210102__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210102__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210102: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210102.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210102__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210103 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210103__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210103: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210103.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210103__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210103__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210103: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210103.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210103__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210104 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210104__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210104: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210104.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210104__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210104__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210104: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210104.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210104__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210105 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210105__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210105: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210105.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210105__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210105__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210105: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210105.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210105__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210106 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210106__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210106: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210106.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210106__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210106__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210106: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210106.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210106__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210107 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210107__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210107: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210107.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210107__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210107__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210107: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210107.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210107__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210108 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210108__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210108: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210108.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210108__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210108__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210108: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210108.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210108__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210109 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210109__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210109: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210109.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210109__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210109__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210109: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210109.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210109__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210110 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210110__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210110: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210110.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210110__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210110__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210110: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210110.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210110__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210111 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210111__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210111: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210111.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210111__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210111__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210111: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210111.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210111__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210112 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210112__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210112: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210112.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210112__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210112__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210112: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210112.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210112__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210113 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210113__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210113: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210113.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210113__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210113__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210113: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210113.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210113__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210114 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210114__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210114: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210114.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210114__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210114__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210114: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210114.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210114__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210115 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210115__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210115: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210115.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210115__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210115__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210115: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210115.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210115__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210116 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210116__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210116: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210116.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210116__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210116__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210116: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210116.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210116__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210117 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210117__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210117: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210117.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210117__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210117__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210117: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210117.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210117__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210118 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210118__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210118: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210118.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210118__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210118__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210118: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210118.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210118__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210119 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210119__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210119: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210119.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210119__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210119__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210119: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210119.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210119__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210120 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210120__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210120: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210120.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210120__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210120__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210120: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210120.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210120__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210121 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210121__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210121: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210121.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210121__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210121__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210121: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210121.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210121__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210122 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210122__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210122: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210122.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210122__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210122__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210122: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210122.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210122__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210123 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210123__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210123: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210123.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210123__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210123__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210123: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210123.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210123__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210124 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210124__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210124: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210124.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210124__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210124__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210124: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210124.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210124__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210125 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210125__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210125: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210125.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210125__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210125__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210125: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210125.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210125__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210126 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210126__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210126: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210126.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210126__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210126__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210126: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210126.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210126__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210127 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210127__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210127: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210127.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210127__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210127__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210127: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210127.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210127__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210128 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210128__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210128: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210128.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210128__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210128__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210128: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210128.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210128__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210129 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210129__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210129: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210129.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210129__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210129__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210129: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210129.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210129__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210130 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210130__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210130: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210130.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210130__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210130__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210130: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210130.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210130__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210131 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210131__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210131: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210131.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210131__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210131__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210131: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210131.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210131__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210201 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210201__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210201: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210201.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210201__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210201__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210201: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210201.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210201__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210202 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210202__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210202: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210202.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210202__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210202__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210202: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210202.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210202__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210203 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210203__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210203: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210203.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210203__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210203__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210203: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210203.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210203__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210204 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210204__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210204: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210204.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210204__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210204__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210204: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210204.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210204__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210205 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210205__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210205: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210205.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210205__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210205__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210205: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210205.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210205__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210206 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210206__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210206: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210206.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210206__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210206__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210206: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210206.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210206__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210207 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210207__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210207: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210207.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210207__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210207__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210207: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210207.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210207__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210208 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210208__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210208: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210208.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210208__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210208__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210208: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210208.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210208__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210209 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210209__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210209: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210209.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210209__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210209__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210209: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210209.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210209__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210210 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210210__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210210: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210210.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210210__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210210__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210210: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210210.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210210__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210211 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210211__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210211: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210211.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210211__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210211__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210211: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210211.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210211__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210212 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210212__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210212: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210212.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210212__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210212__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210212: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210212.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210212__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210213 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210213__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210213: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210213.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210213__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210213__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210213: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210213.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210213__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210214 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210214__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210214: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210214.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210214__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210214__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210214: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210214.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210214__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210215 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210215__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210215: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210215.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210215__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210215__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210215: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210215.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210215__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210216 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210216__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210216: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210216.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210216__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210216__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210216: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210216.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210216__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210217 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210217__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210217: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210217.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210217__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210217__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210217: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210217.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210217__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210218 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210218__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210218: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210218.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210218__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210218__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210218: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210218.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210218__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210219 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210219__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210219: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210219.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210219__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210219__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210219: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210219.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210219__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210220 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210220__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210220: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210220.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210220__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210220__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210220: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210220.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210220__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210221 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210221__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210221: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210221.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210221__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210221__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210221: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210221.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210221__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210222 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210222__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210222: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210222.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210222__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210222__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210222: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210222.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210222__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210223 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210223__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210223: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210223.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210223__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210223__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210223: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210223.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210223__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210224 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210224__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210224: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210224.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210224__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210224__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210224: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210224.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210224__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210225 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210225__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210225: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210225.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210225__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210225__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210225: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210225.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210225__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210226 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210226__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210226: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210226.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210226__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210226__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210226: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210226.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210226__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210227 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210227__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210227: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210227.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210227__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210227__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210227: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210227.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210227__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210228 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210228__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210228: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210228.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210228__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210228__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210228: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210228.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210228__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210301 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210301__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210301: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210301.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210301__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210301__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210301: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210301.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210301__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210302 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210302__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210302: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210302.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210302__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210302__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210302: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210302.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210302__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210303 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210303__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210303: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210303.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210303__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210303__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210303: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210303.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210303__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210304 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210304__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210304: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210304.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210304__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210304__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210304: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210304.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210304__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210305 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210305__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210305: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210305.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210305__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210305__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210305: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210305.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210305__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210306 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210306__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210306: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210306.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210306__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210306__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210306: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210306.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210306__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210307 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210307__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210307: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210307.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210307__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210307__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210307: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210307.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210307__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210308 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210308__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210308: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210308.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210308__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210308__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210308: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210308.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210308__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210309 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210309__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210309: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210309.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210309__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210309__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210309: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210309.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210309__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210310 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210310__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210310: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210310.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210310__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210310__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210310: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210310.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210310__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210311 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210311__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210311: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210311.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210311__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210311__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210311: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210311.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210311__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210312 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210312__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210312: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210312.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210312__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210312__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210312: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210312.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210312__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210313 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210313__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210313: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210313.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210313__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210313__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210313: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210313.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210313__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210314 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210314__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210314: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210314.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210314__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210314__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210314: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210314.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210314__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210315 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210315__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210315: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210315.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210315__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210315__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210315: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210315.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210315__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210316 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210316__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210316: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210316.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210316__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210316__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210316: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210316.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210316__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210317 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210317__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210317: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210317.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210317__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210317__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210317: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210317.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210317__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210318 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210318__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210318: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210318.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210318__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210318__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210318: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210318.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210318__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210319 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210319__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210319: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210319.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210319__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210319__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210319: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210319.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210319__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210320 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210320__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210320: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210320.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210320__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210320__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210320: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210320.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210320__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210321 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210321__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210321: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210321.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210321__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210321__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210321: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210321.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210321__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210322 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210322__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210322: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210322.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210322__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210322__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210322: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210322.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210322__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210323 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210323__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210323: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210323.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210323__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210323__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210323: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210323.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210323__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210324 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210324__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210324: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210324.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210324__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210324__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210324: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210324.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210324__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210325 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210325__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210325: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210325.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210325__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210325__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210325: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210325.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210325__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210326 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210326__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210326: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210326.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210326__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210326__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210326: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210326.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210326__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210327 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210327__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210327: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210327.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210327__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210327__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210327: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210327.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210327__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210328 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210328__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210328: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210328.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210328__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210328__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210328: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210328.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210328__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210329 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210329__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210329: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210329.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210329__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210329__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210329: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210329.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210329__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210330 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210330__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210330: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210330.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210330__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210330__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210330: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210330.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210330__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210331 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210331__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210331: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210331.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210331__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210331__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210331: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210331.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210331__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210401 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210401__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210401: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210401.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210401__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210401__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210401: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210401.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210401__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210402 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210402__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210402: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210402.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210402__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210402__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210402: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210402.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210402__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210403 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210403__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210403: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210403.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210403__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210403__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210403: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210403.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210403__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210404 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210404__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210404: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210404.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210404__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210404__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210404: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210404.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210404__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210405 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210405__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210405: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210405.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210405__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210405__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210405: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210405.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210405__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210406 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210406__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210406: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210406.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210406__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210406__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210406: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210406.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210406__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210407 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210407__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210407: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210407.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210407__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210407__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210407: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210407.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210407__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210408 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210408__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210408: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210408.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210408__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210408__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210408: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210408.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210408__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210409 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210409__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210409: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210409.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210409__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210409__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210409: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210409.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210409__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210410 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210410__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210410: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210410.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210410__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210410__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210410: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210410.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210410__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210411 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210411__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210411: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210411.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210411__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210411__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210411: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210411.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210411__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210412 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210412__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210412: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210412.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210412__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210412__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210412: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210412.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210412__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210413 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210413__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210413: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210413.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210413__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210413__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210413: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210413.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210413__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210414 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210414__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210414: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210414.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210414__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210414__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210414: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210414.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210414__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210415 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210415__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210415: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210415.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210415__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210415__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210415: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210415.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210415__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210416 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210416__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210416: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210416.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210416__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210416__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210416: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210416.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210416__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210417 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210417__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210417: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210417.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210417__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210417__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210417: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210417.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210417__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210418 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210418__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210418: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210418.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210418__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210418__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210418: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210418.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210418__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210419 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210419__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210419: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210419.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210419__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210419__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210419: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210419.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210419__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210420 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210420__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210420: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210420.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210420__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210420__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210420: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210420.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210420__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210421 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210421__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210421: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210421.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210421__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210421__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210421: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210421.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210421__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210422 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210422__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210422: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210422.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210422__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210422__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210422: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210422.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210422__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210423 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210423__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210423: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210423.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210423__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210423__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210423: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210423.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210423__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210424 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210424__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210424: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210424.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210424__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210424__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210424: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210424.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210424__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210425 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210425__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210425: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210425.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210425__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210425__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210425: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210425.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210425__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210426 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210426__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210426: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210426.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210426__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210426__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210426: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210426.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210426__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210427 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210427__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210427: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210427.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210427__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210427__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210427: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210427.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210427__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210428 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210428__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210428: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210428.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210428__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210428__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210428: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210428.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210428__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210429 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210429__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210429: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210429.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210429__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210429__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210429: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210429.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210429__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210430 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210430__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210430: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210430.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210430__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210430__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210430: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210430.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210430__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210501 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210501__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210501: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210501.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210501__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210501__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210501: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210501.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210501__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210502 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210502__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210502: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210502.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210502__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210502__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210502: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210502.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210502__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210503 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210503__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210503: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210503.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210503__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210503__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210503: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210503.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210503__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210504 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210504__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210504: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210504.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210504__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210504__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210504: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210504.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210504__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210505 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210505__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210505: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210505.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210505__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210505__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210505: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210505.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210505__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210506 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210506__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210506: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210506.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210506__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210506__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210506: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210506.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210506__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210507 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210507__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210507: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210507.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210507__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210507__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210507: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210507.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210507__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210508 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210508__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210508: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210508.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210508__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210508__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210508: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210508.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210508__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210509 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210509__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210509: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210509.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210509__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210509__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210509: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210509.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210509__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210510 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210510__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210510: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210510.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210510__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210510__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210510: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210510.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210510__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210511 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210511__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210511: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210511.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210511__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210511__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210511: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210511.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210511__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210512 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210512__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210512: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210512.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210512__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210512__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210512: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210512.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210512__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210513 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210513__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210513: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210513.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210513__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210513__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210513: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210513.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210513__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210514 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210514__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210514: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210514.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210514__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210514__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210514: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210514.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210514__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210515 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210515__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210515: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210515.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210515__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210515__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210515: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210515.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210515__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210516 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210516__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210516: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210516.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210516__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210516__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210516: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210516.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210516__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210517 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210517__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210517: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210517.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210517__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210517__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210517: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210517.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210517__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210518 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210518__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210518: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210518.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210518__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210518__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210518: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210518.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210518__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210519 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210519__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210519: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210519.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210519__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210519__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210519: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210519.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210519__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210520 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210520__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210520: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210520.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210520__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210520__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210520: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210520.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210520__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210521 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210521__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210521: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210521.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210521__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210521__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210521: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210521.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210521__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210522 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210522__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210522: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210522.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210522__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210522__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210522: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210522.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210522__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210523 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210523__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210523: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210523.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210523__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210523__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210523: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210523.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210523__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210524 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210524__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210524: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210524.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210524__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210524__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210524: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210524.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210524__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210525 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210525__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210525: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210525.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210525__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210525__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210525: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210525.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210525__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210526 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210526__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210526: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210526.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210526__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210526__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210526: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210526.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210526__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210527 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210527__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210527: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210527.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210527__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210527__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210527: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210527.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210527__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210528 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210528__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210528: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210528.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210528__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210528__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210528: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210528.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210528__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210529 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210529__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210529: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210529.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210529__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210529__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210529: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210529.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210529__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_toc_mobile_event_i_d_20210530 {
  join: dwb_flow_at_toc_mobile_event_i_d_20210530__event_params {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210530: Event Params"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210530.event_params}) as dwb_flow_at_toc_mobile_event_i_d_20210530__event_params ;;
    relationship: one_to_many
  }

  join: dwb_flow_at_toc_mobile_event_i_d_20210530__user_properties {
    view_label: "Dwb Flow At Toc Mobile Event I D 20210530: User Properties"
    sql: LEFT JOIN UNNEST(${dwb_flow_at_toc_mobile_event_i_d_20210530.user_properties}) as dwb_flow_at_toc_mobile_event_i_d_20210530__user_properties ;;
    relationship: one_to_many
  }
}

explore: dwb_flow_at_trackings_stats_i_d {}

explore: dwb_message_at_databus_pushed_message_i_d {}

explore: dwb_message_rv_email_status_f_d {}

explore: dwb_message_rv_email_status_i_d {}

explore: dwb_platform_am_dw_monitoring_ga_export_data_s_d {}

explore: dwb_platform_at_completed_email_parse_events_i_d {
  join: dwb_platform_at_completed_email_parse_events_i_d__accounts {
    view_label: "Dwb Platform At Completed Email Parse Events I D: Accounts"
    sql: LEFT JOIN UNNEST(${dwb_platform_at_completed_email_parse_events_i_d.accounts}) as dwb_platform_at_completed_email_parse_events_i_d__accounts ;;
    relationship: one_to_many
  }

  join: dwb_platform_at_completed_email_parse_events_i_d__scenarios {
    view_label: "Dwb Platform At Completed Email Parse Events I D: Scenarios"
    sql: LEFT JOIN UNNEST(${dwb_platform_at_completed_email_parse_events_i_d.scenarios}) as dwb_platform_at_completed_email_parse_events_i_d__scenarios ;;
    relationship: one_to_many
  }

  join: dwb_platform_at_completed_email_parse_events_i_d__tracking_ids {
    view_label: "Dwb Platform At Completed Email Parse Events I D: Tracking Ids"
    sql: LEFT JOIN UNNEST(${dwb_platform_at_completed_email_parse_events_i_d.tracking_ids}) as dwb_platform_at_completed_email_parse_events_i_d__tracking_ids ;;
    relationship: one_to_many
  }
}

explore: dwb_platform_at_email_parser_order_rule_i_d {}

explore: dwb_platform_at_email_parser_tracking_rule_i_d {}

explore: dwb_platform_at_order_tracking_brand_id_mapping_f_d {}

explore: dwb_product_at_databus_reported_issue_i_d {}

explore: dwb_product_at_order_connector_i_d {}

explore: dwb_product_at_order_created_tracking_status_z_d {}

explore: dwb_product_mt_popup_orders_i_d {}

explore: dwb_product_rc_labels_created_i_d {}

explore: dwb_user_am_accounts_register_traffic_i_d {}

explore: dwb_user_am_new_account_registered_traffic_source_i_d {}

explore: dwb_user_at_device_user_info_s_d {}

explore: dwb_user_at_user_mobile_id_mapping_s_d {}

explore: dwb_user_rc_current_plan_connection_s_d {}

explore: dwb_user_rc_features_s_d {}
