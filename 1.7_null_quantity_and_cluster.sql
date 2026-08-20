SELECT 
  COUNT(*) AS total_rows,
  COUNTIF(start_station_id IS NULL) AS null_start_station,
  COUNTIF(end_station_id IS NULL) AS null_end_station,
  COUNTIF(start_station_name IS NULL) AS null_start_name,
  COUNTIF(end_station_name IS NULL) AS null_end_name
 FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week`