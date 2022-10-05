view: t_sub_agg_subway {
  sql_table_name: `subdw_hands_on.t_sub_agg_subway`
    ;;

  dimension: ac_off_cnt {
    type: number
    sql: ${TABLE}.ac_off_cnt ;;
  }

  dimension: ac_on_cnt {
    type: number
    sql: ${TABLE}.ac_on_cnt ;;
  }

  dimension: ac_share_rate {
    type: number
    sql: ${TABLE}.ac_share_rate ;;
  }

  dimension: ac_total_cnt {
    type: number
    sql: ${TABLE}.ac_total_cnt ;;
  }

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

  dimension: net_cnt {
    type: number
    sql: ${TABLE}.net_cnt ;;
  }

  dimension: passenger_cd {
    type: string
    sql: ${TABLE}.passenger_cd ;;
  }

  dimension: pc_off_cnt {
    type: number
    sql: ${TABLE}.pc_off_cnt ;;
  }

  dimension: pc_on_cnt {
    type: number
    sql: ${TABLE}.pc_on_cnt ;;
  }

  dimension: pc_share_rate {
    type: number
    sql: ${TABLE}.pc_share_rate ;;
  }

  dimension: pc_total_cnt {
    type: number
    sql: ${TABLE}.pc_total_cnt ;;
  }

  dimension: share_rate {
    type: number
    sql: ${TABLE}.share_rate ;;
  }

  dimension: station_line {
    type: string
    sql: ${TABLE}.station_line ;;
  }

  dimension: station_no {
    type: string
    sql: ${TABLE}.station_no ;;
  }

  dimension: total_cnt {
    type: number
    sql: ${TABLE}.total_cnt ;;
  }

  dimension: total_off_cnt {
    type: number
    sql: ${TABLE}.total_off_cnt ;;
  }

  dimension: total_on_cnt {
    type: number
    sql: ${TABLE}.total_on_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
