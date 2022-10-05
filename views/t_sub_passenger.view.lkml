view: t_sub_passenger {
  sql_table_name: `subdw_hands_on.t_sub_passenger`
    ;;

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

  dimension: on_off_type {
    type: string
    sql: ${TABLE}.on_off_type ;;
  }

  dimension: passenger_type {
    type: string
    sql: ${TABLE}.passenger_type ;;
  }

  dimension: station_line {
    type: string
    sql: ${TABLE}.station_line ;;
  }

  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
  }

  dimension: station_no {
    type: string
    sql: ${TABLE}.station_no ;;
  }

  dimension: time_range {
    type: string
    sql: ${TABLE}.time_range ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: passenger_cnt {
    type: number
    sql: sum(${TABLE}.passenger_cnt) ;;
  }

  # measure : total_passenger_cnt {
  #   type :  number
  #   sql : sum(${TABLE}.passenger_cnt) ;;
  # }
}
