Create Table `mdcmaliwat-project202608.data_processed.data_no_outliers_daily_trip_count_by_member_casual` AS
SELECT
  member_casual,
  day_of_week,
  CASE day_of_week
    WHEN 1 THEN 'sunday'
    WHEN 2 THEN 'monday'
    WHEN 3 THEN 'tuesday'
    WHEN 4 THEN 'wednesday'
    WHEN 5 THEN 'thursday'
    WHEN 6 THEN 'friday'
    WHEN 7 THEN 'saturday'
  END AS day_name,
  COUNT(*) AS day_trip_count
FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week

--calculates avg daily trip count per day by rider type