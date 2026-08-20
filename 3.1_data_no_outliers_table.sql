CREATE OR REPLACE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers` AS -- updated ride longer/short than to and equal to
SELECT*
FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week`
WHERE
  ride_length <= 86400 -- rides longer than 24 hours
  AND ride_length >= 60 -- rides shorter than 1 minute or negative