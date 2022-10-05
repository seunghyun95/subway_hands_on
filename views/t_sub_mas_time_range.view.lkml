view: t_sub_mas_time_range {
  sql_table_name: `subdw_hands_on.t_sub_mas_time_range`
    ;;

  dimension: commute_yn {
    type: string
    sql: ${TABLE}.commute_yn ;;
  }

  dimension: time_range {
    type: string
    sql: ${TABLE}.time_range ;;
  }

  dimension: time_range_cd {
    type: string
    sql: ${TABLE}.time_range_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
