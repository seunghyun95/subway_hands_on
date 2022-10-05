view: t_sub_card {
  sql_table_name: `subdw_hands_on.t_sub_card`
    ;;

  dimension_group: created_ymd {
    type: time
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
    sql: ${TABLE}.created_ymd ;;
  }

  dimension_group: dt {
    type: time
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
    sql: ${TABLE}.dt ;;
  }

  dimension: of_cnt {
    type: number
    sql: ${TABLE}.of_cnt ;;
  }

  dimension: on_cnt {
    type: number
    sql: ${TABLE}.on_cnt ;;
  }

  dimension: station_line {
    type: string
    sql: ${TABLE}.station_line ;;
  }

  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
