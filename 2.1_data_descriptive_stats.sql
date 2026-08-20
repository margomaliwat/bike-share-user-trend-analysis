CREATE TABLE `mdcmaliwat-project202608.data_processed.data_descriptive_stats_` AS
SELECT
  AVG(ride_length) AS mean_ride_length,
  MAX(ride_length) AS max_ride_length,
  (SELECT day_of_week
    FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week`
    GROUP BY (day_of_week)
    ORDER BY COUNT(day_of_week) DESC
    LIMIT 1) AS mode_day_of_week
 FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week`