CREATE TABLE `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week` AS
SELECT
  *,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week
FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length`