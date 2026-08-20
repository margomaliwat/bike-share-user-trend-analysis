SELECT
  rideable_type,
  COUNT(*) AS total_rides,
  COUNTIF(start_station_id IS NULL) AS null_start_station
FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week`
GROUP BY rideable_type