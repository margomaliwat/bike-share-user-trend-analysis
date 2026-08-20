CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_monthly_trip_count_difference` AS
SELECT
  EXTRACT(MONTH FROM started_at) AS month,
  COUNTIF(member_casual = 'member') AS member_count,
  COUNTIF(member_casual = 'casual') AS casual_count,
  ROUND((COUNTIF(member_casual = 'member') - COUNTIF(member_casual = 'casual'))
    * 100.0 / COUNTIF(member_casual = 'casual'), 2) AS pct_difference
FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
GROUP BY month
ORDER BY month
--calculates difference in average percentage of rides taken by annual members and casual riders per month