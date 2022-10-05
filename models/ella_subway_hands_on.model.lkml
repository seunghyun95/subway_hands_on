connection: "ella_subway_handson"

# include all the views
include: "/views/**/*.view"

datagroup: ella_subway_hands_on_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ella_subway_hands_on_default_datagroup

explore: t_ext_subway_card {}

explore: t_sub_card {}

explore: t_sub_etl_log {}

explore: t_ext_subway_card_raw {}

explore: t_ext_subway_raw {}

explore: t_sub_mas_holiday {}

explore: t_sub_agg_card_subway {}

explore: t_sub_agg_subway {}

explore: t_sub_passenger {}

explore: t_sub_mas_station_info {}

explore: t_sub_mas_station_info_tmp {}

explore: t_sub_mas_time_range {}

explore: t_sub_mas_passenger_type {}
