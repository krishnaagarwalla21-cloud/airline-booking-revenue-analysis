
-- Airline Booking & Revenue Analytics
-- Airline and route analysis
-- Dataset: Synthetic airline data

-- 1. Inspect flight-instance status distribution
SELECT
    status,
    COUNT(*) AS flight_instance_count
FROM flight_instances
GROUP BY status
ORDER BY flight_instance_count DESC;


-- 2. Rank airline-route combinations by arrived flight instances
SELECT
    a.name AS airline,
    a.iata_code AS airline_code,
    dep_city.name AS departure_city,
    arr_city.name AS arrival_city,
    COUNT(fi.id) AS arrived_flight_instances
FROM flight_instances fi
JOIN flights f
    ON fi.flight_id = f.id
JOIN airlines a
    ON f.airline_id = a.id
JOIN airports dep
    ON f.departure_airport_id = dep.id
JOIN cities dep_city
    ON dep.city_id = dep_city.id
JOIN airports arr
    ON f.arrival_airport_id = arr.id
JOIN cities arr_city
    ON arr.city_id = arr_city.id
WHERE fi.status = 'arrived'
GROUP BY
    a.name,
    a.iata_code,
    dep_city.name,
    arr_city.name
ORDER BY arrived_flight_instances DESC
LIMIT 15;
