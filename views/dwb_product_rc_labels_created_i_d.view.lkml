view: dwb_product_rc_labels_created_i_d {
  sql_table_name: `dwb_utc_00.dwb_product_rc_labels_created_i_d`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    description: "id"
    sql: ${TABLE}.id ;;
  }

  dimension: courier_slug {
    type: string
    description: "供应商"
    sql: ${TABLE}.courier_slug ;;
  }

  dimension_group: label_created {
    type: time
    description: "创建面单时间"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.label_created_at ;;
  }

  dimension: organization_id {
    type: string
    description: "org"
    sql: ${TABLE}.organization_id ;;
  }

  dimension: postmen_label_id {
    type: string
    description: "postmen面单id"
    sql: ${TABLE}.postmen_label_id ;;
  }

  dimension_group: returns_created {
    type: time
    description: "退货创建日期"
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
    sql: ${TABLE}.returns_created_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
