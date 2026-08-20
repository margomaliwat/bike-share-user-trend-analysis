CREATE TABLE `mdcmaliwat-project202608.202507_202606_trip_data.202507_202606_combined` AS
SELECT * FROM `202507_202606_trip_data.202507_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202508_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202509_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202510_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202511_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202512_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202601_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202602_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202603_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202604_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202605_trip_data`
UNION ALL
SELECT * FROM `202507_202606_trip_data.202606_trip_data`

--combines data from all tables from 2025.07 to 2026.06