use [Hotel Resev]
/*what if we want to view all records in table*/
/*Select * From Customer*/

/*if we want to count the customers in database*/
/*select count (CustomerID) FROM Customer WHERE CustomerID>=1;*/

/*if we need to know number of rooms in the floor*/
/*select count (RoomNum) FROM Room where FloorNum>2;*/

/* when we want to select the average of price*/
/*select AVG (Price) FROM Reservation*/

/*When we want to select the Smallest price*/
/*select MIN(Price) As SmallestPrice from Reservation*/

/* When we want to select the largest price
select MAX(Price) AS LargestPrice from Reservation*/

/* When we want to view Datetime*/
/*select CAST(StartDate As decimal)from RoomReservation

Select CAST(EndDate As decimal )From RoomReservation
Select SUM(StartDate-EndDate)from RoomReservation As Lease where RoomReservationID=1*/

/*when we want to know the days of room reservation*/
/*SELECT (CAST(RIGHT (EndDate,2)as int)- CAST(RIGHT(StartDate,2)As int))  from RoomReservation where Room_ID=1*/

/* when we want to Know the earning*/
/*select SUM(Price) As Earning From Reservation*/

/*when we want to insert all customers with similar first name*/
/*Select * FROM Customer Where FirstName Like 'ahmed%'*/

/*what if we want to make sure from room datails such as null field we use COALESCE to return the first non-null value*/
/*SELECT COALESCE(RoomID,FloorNum,RoomNum)From Room ;*/

/* what if we want to make a list to show all reservation price more than 500 with column to explains More ore Less*/ 
/*Select ReservationID,Price,IIF (Price>500,'MORE', 'LESS') from Reservation*/

/*what if we want to return firstname if employeeID is null*/
/*Select ISNULL(EmployeeID,FirstName) from Employee*/

/*what if we want to know full name of caustomer*/
/*Select CONCAT(FirstName,LastName)As FullName from Customer*/

/*When we want to view Custome FullData*/
/*Select CONCAT_WS('-',FirstName,LastName,' Email: ',Email,' BD: ',BirthDate) As FullData From Customer*/

/*When we want to know how many months of the room reservation*/
/*Select DATEDIFF(MONTH,StartDate,EndDate) from RoomReservation where RoomReservationID=2*/

/*When we want to know the lenght of every name*/
/*Select LEN(FirstName) AS namelength From Customer*/

/* what if we want to  select jsut top 3 Resevation*/
/*SELECT Top 3* From Reservation*/

/* What if we want to view day of reservation
Select RIGHT(StartDate,2) As Day From RoomReservation*/

/*What if Receptionist add spaces before the name and that make a trouble in search*/
/*Select LTRIM(FirstName) From Employee*/

/*What if we want FirstName of Customer in Upper cas*/
/*Select UPPER(FirstName) From Customer*/
