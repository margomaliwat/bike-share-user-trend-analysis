CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_descriptive_stats` AS
SELECT
  AVG(ride_length) AS mean_ride_length,
  MAX(ride_length) AS max_ride_length,
  (SELECT day_of_week
    FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
    GROUP BY (day_of_week)
    ORDER BY COUNT(day_of_week) DESC
    LIMIT 1) AS mode_day_of_week
 FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`