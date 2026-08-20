SELECT COUNT(*) 
FROM `mdcmaliwat-project202608.202507_202606_trip_data.data_with_ride_length_and_day_of_week`
WHERE ride_length > 86400 -- rides longer than 24 hours