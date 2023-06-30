-- lab question number 3:
Select count(distinct Aircraft) As count
from table2;

-- lab question number 4:
select avg(Distinct Flight_Mileage) AS average
From table2;

-- lab question number 5:
select avg(Distinct Total_aircraft_Seats) AS average
From table2;

-- lab question number 6:
SELECT customer_status, AVG(Flight_Mileage) AS average_miles
FROM table2
GROUP BY customer_status;


-- lab question number 7:
SELECT customer_status, MAX(Flight_Mileage) AS maximum_miles
FROM table2
GROUP BY customer_status;

-- lab question number8:
SELECT COUNT(distinct Flight_Number) AS total_Boeing_aircraft
FROM table2
WHERE Aircraft LIKE '%Boeing%';

-- lab question numnber 9:
SELECT *
FROM table2
WHERE Flight_Mileage >= 300 AND Flight_Mileage <= 2000;

-- lab question number 10 without join (correct ine):
SELECT Customer_Status, AVG(Flight_Mileage) AS average_flight_distance
from table2
GROUP BY Customer_Status;

-- lab question 10 using join:
SELECT c.Customer_Status, AVG(f.Flight_Mileage) AS average_flight_distance
FROM table2 AS c
JOIN table2 AS f ON c.Flight_Number = f.Flight_Number
GROUP BY c.Customer_Status;

-- lab question 11:
SELECT Aircraft, COUNT(*) AS bookings_count
FROM table2
WHERE Customer_Status = 'Gold'
GROUP BY Aircraft
ORDER BY bookings_count DESC
LIMIT 1;


