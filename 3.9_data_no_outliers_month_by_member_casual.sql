CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_month_member_casual` AS
WITH month_count AS (
  SELECT
    member_casual,
    EXTRACT(month FROM started_at) AS month,
    COUNT(*) AS ride_count
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  GROUP BY member_casual, EXTRACT(month FROM started_at)
)
SELECT
  member_casual,
  month AS month,
  ride_count
FROM month_count