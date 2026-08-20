CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_rideable_by_member_casual` AS
SELECT
  member_casual,
  rideable_type AS bike_type,
  COUNT(*) AS bike_count
FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
GROUP BY member_casual, rideable_type
ORDER BY member_casual