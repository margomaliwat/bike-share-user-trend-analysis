CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_stations_by_member_casual` AS
WITH start_station_count AS (
  SELECT
    member_casual,
    start_station_name AS station_name,
    'start' AS station_type,
    COUNT(*) AS station_count 
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  WHERE start_station_id IS NOT NULL
  GROUP BY member_casual, start_station_name
),
end_station_count AS (
  SELECT
    member_casual,
    end_station_name AS station_name,
    'end' AS station_type,
    COUNT(*) AS station_count 
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  WHERE end_station_id IS NOT NULL
  GROUP BY member_casual, end_station_name
),
combined AS (
  SELECT * FROM start_station_count
  UNION ALL
  SELECT * FROM end_station_count
)
SELECT
  member_casual,
  station_name,
  station_type,
  station_count
FROM combined
ORDER BY station_count DESC