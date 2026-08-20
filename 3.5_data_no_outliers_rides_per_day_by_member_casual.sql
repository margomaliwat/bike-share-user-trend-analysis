CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_day_of_week` AS
WITH day_counts AS (
  SELECT
    member_casual,
    day_of_week,
    COUNT(*) AS ride_count
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  GROUP BY member_casual, day_of_week
)
SELECT
  member_casual,
  day_of_week AS day_of_week,
  ride_count
FROM day_counts

--creates a table with the amount of rides per day of the week for casual rides and members