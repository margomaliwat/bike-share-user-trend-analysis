CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_max_ride_length_by_member_casual` AS
SELECT
  member_casual,
  MAX(ride_length) AS max_ride_length
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  GROUP BY(member_casual)