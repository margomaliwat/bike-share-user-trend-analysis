CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_overall_avg_percentage_ride_difference` AS
SELECT
  COUNTIF(member_casual = 'member') AS member_count,
  COUNTIF(member_casual = 'casual') AS casual_count,
  ROUND((COUNTIF(member_casual = 'member') - COUNTIF(member_casual = 'casual'))
    * 100.0 / COUNTIF(member_casual = 'casual'), 2) AS pct_difference
FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`

--calculates the difference in overall average percentage of rides by annual members then casual riders.