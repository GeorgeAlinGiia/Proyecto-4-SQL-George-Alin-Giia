-- Ejercicio 1. George Alin Giia

    SELECT flight_id, flight_no
    FROM flights
    WHERE status = 'On Time';

-- Ejercicio 2. George Alin Giia

    SELECT *
    FROM bookings
    WHERE total_amount > 1000000;

-- Ejercicio 3. George Alin Giia

    SELECT *
    FROM aircrafts_data;

-- Ejercicio 4. George Alin Giia


    SELECT flight_no
    FROM flights
    WHERE aircraft_code = '733';

-- Ejercicio 5. George Alin Giia

    SELECT *
    FROM tickets
    WHERE passenger_name ILIKE '%Irina%';

-----------------------------------------------------------------------------
-- A partir de aquí son queries opcionales para continuar practicando:  -----
-----------------------------------------------------------------------------

-- Ejercicio 6. George Alin Giia   
        SELECT city, COUNT(*) AS total_aeropuertos
        FROM airports_data
        GROUP BY city
        ORDER BY total_aeropuertos DESC;

-- Ejercicio 7. George Alin Giia
        SELECT aircraft_code, COUNT(*) AS numVuelos
        FROM flights
        GROUP BY aircraft_code 
        ORDER BY aircraft_code DESC;

-- Ejercicio 8. George Alin Giia  
        SELECT book_ref, COUNT(*) AS billetesReserva
        FROM tickets
        GROUP BY book_ref
        HAVING COUNT(*) > 1
        ORDER BY billetesReserva DESC;

-- Ejercicio 9. George Alin Giia
        SELECT *
        FROM flights
        WHERE actual_departure - scheduled_departure > INTERVAL '1 hour'; 