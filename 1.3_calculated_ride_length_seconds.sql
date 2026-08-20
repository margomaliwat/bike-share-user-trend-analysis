CREATE TABLE `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length` AS
SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length
FROM `mdcmaliwat-project202608.202507_202606_trip_data.202507_202606_combined`