--SQL Questions:
select * from Bookings
where booking_status = 'Success'

create view successful_bookings as
select * from Bookings
where booking_status = 'Success'


--1. Retrieve all successful bookings:
select * from successful_bookings

select Vehicle_Type, 
AVG(Ride_Distance) as 'Average Distance' from Bookings
group by Vehicle_Type

create view average_vehicle_ride_distance as
select Vehicle_Type, 
AVG(Ride_Distance) as 'Average Distance' from Bookings
group by Vehicle_Type


--2. Find the average ride distance for each vehicle type:
select * from average_vehicle_ride_distance



create view cancelled_rides_by_customers as
select count(*)as 'Canceled by Customer' from Bookings
where Booking_Status = 'Canceled by Customer'

--3. Get the total number of cancelled rides by customers:
select * from cancelled_rides_by_customers


--4. List the top 5 customers who booked the highest number of rides:
SELECT * FROM TOP_5_CUSTOMERS

CREATE VIEW TOP_5_CUSTOMERS AS
SELECT TOP 5 
CUSTOMER_ID, 
COUNT(BOOKING_ID) AS 'TOTAL_RIDES' 
FROM BOOKINGS
GROUP BY CUSTOMER_ID
ORDER BY TOTAL_RIDES DESC


--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM RIDES_CANCELLED_BY_DRIVERS_P_C_ISSUES

CREATE VIEW RIDES_CANCELLED_BY_DRIVERS_P_C_ISSUES AS
SELECT * FROM(
SELECT Booking_Status,
COUNT(Booking_ID) AS TOT
FROM Bookings
WHERE Canceled_Rides_by_Driver ='Personal & Car related issue'
GROUP BY Booking_Status
)AS CANCELLED_BY_DRIVERS


--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM MAX_MIN_DRIVER_RATINGS

CREATE VIEW MAX_MIN_DRIVER_RATINGS AS
SELECT
Vehicle_Type,
MAX(Driver_Ratings) AS 'MAX RATINGS',
MIN(Driver_Ratings) AS 'MIN RATINGS' 
FROM Bookings
WHERE Vehicle_Type = 'Prime Sedan'
GROUP BY Vehicle_Type



--7. Retrieve all rides where payment was made using UPI:
select * from upi_payment

CREATE VIEW upi_payment as 
SELECT * FROM Bookings
WHERE Payment_Method = 'UPI'

--8. Find the average customer rating per vehicle type:
select * from average_customer_rating_per_vehicle

create view average_customer_rating_per_vehicle
as
select Vehicle_Type,
AVG(Customer_Rating) as 'average customer rating'
from Bookings
group by Vehicle_Type

--9. Calculate the total booking value of rides completed successfully:
select * from total_completed_rides

create view total_completed_rides
as
select count(Booking_ID) as 'total booking' from Bookings
where Booking_Status = 'Success'

--10. List all incomplete rides along with the reason:
select * from all_incomplete_ride_with_reason

create view all_incomplete_ride_with_reason as
select Booking_ID,Incomplete_Rides_Reason from Bookings
where Incomplete_Rides = 1
