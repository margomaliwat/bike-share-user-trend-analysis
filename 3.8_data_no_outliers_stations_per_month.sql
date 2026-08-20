CREATE TABLE `mdcmaliwat-project202608.data_processed.data_no_outliers_stations_per_month` AS
WITH start_station_count AS (
  SELECT
    member_casual,
    start_station_name AS station_name,
    'start' AS station_type,
    rideable_type AS bike_type,
    EXTRACT(MONTH FROM started_at) AS month,
    COUNT(*) AS ride_count
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  WHERE start_station_id IS NOT NULL
  GROUP BY member_casual, start_station_name, rideable_type, EXTRACT(MONTH FROM started_at)
),
end_station_count AS (
  SELECT
    member_casual,
    end_station_name AS station_name,
    'end' AS station_type,
    rideable_type AS bike_type,
    EXTRACT(MONTH FROM started_at) AS month,
    COUNT(*) AS ride_count
  FROM `mdcmaliwat-project202608.data_processed.data_no_outliers`
  WHERE end_station_id IS NOT NULL
  GROUP BY member_casual, end_station_name, rideable_type, EXTRACT(MONTH FROM started_at)
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
  bike_type,
  month,
  ride_count
FROM combined
ORDER BY ride_count DESC

--returns start/end station bike counts per rider type