-- Q3)How many females and how many male passengers travelled for a minimum distance of 600 KM s?
-- ans :-
SELECT Gender, COUNT(*) AS Count
FROM PASSENGER
WHERE Distance >= 600
GROUP BY Gender;

-- 4) Find the minimum ticket price for Sleeper Bus.
SELECT MIN(Price) AS MinPrice
FROM PRICE
WHERE Bus_Type = 'Sleeper';

-- 5) Select passenger names whose names start with character 'S'
SELECT 
    Passenger_name
FROM
    PASSENGER
WHERE
    Passenger_name LIKE 'S%';

-- 6) Calculate price charged for each passenger displaying Passenger name, Boarding City,Destination City, Bus_Type, Price in the output
SELECT P.Passenger_name, P.Boarding_City, P.Destination_City, P.Bus_Type, PR.Price
FROM PASSENGER P
JOIN PRICE PR ON P.Bus_Type = PR.Bus_Type AND P.Distance = PR.Distance;

-- 7) What are the passenger name/s and his/her ticket price who travelled in the Sitting bus for a distance of 1000 KM s
SELECT P.Passenger_name, PR.Price
FROM PASSENGER P
JOIN PRICE PR ON P.Bus_Type = PR.Bus_Type AND P.Distance = PR.Distance
WHERE P.Bus_Type = 'Sitting' AND P.Distance = 1000;

-- 8) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
SELECT P.Bus_Type, PR.Price
FROM PASSENGER P
JOIN PRICE PR ON P.Bus_Type = PR.Bus_Type AND P.Distance = PR.Distance
WHERE P.Passenger_name = 'Pallavi' AND P.Boarding_City = 'Bangalore' AND P.Destination_City = 'Panaji';

-- 9) List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order.
SELECT Distance
FROM PASSENGER
GROUP BY Distance
HAVING COUNT(*) = 1
ORDER BY Distance DESC;

-- 10) Display the passenger name and percentage of distance travelled by that passenger from the total distance travelled by all passengers without using user variables
SELECT Passenger_name, (Distance * 100.0) / (SELECT SUM(Distance) FROM PASSENGER) AS DistancePercentage
FROM PASSENGER;

-- 11) Display the distance, price in three categories in table Price
-- a) Expensive if the cost is more than 1000
-- b) Average Cost if the cost is less than 1000 and greater than 500
-- c) Cheap otherwise
SELECT Distance, Price,
  CASE
    WHEN Price > 1000 THEN 'Expensive'
    WHEN Price > 500 THEN 'Average Cost'
    ELSE 'Cheap'
  END AS Category
FROM PRICE;