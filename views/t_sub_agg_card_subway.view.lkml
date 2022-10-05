view: t_sub_agg_card_subway {
  sql_table_name: `subdw_hands_on.t_sub_agg_card_subway`
    ;;

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: holiday {
    type: string
    sql: ${TABLE}.holiday ;;
  }

  dimension: net_cnt {
    type: number
    sql: ${TABLE}.net_cnt ;;
  }

  dimension: off_cnt {
    type: number
    sql: ${TABLE}.off_cnt ;;
  }

  dimension: on_cnt {
    type: number
    sql: ${TABLE}.on_cnt ;;
  }

  dimension: share_rate {
    type: number
    sql: ${TABLE}.share_rate ;;
  }

  dimension: station_line {
    type: string
    sql: ${TABLE}.station_line ;;
  }

  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
  }

  dimension: total_cnt {
    type: number
    sql: ${TABLE}.total_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
