create database Hotel Resev 

create table HotelName(
HotelID int not null,
HotelName varchar(45) not null,
primary key(HotelID)
);

create table Employee(
EmployeeID int,
FirstName varchar(45) not null ,
LastName varchar(45) not null,
primary key(EmployeeID)
);

create table Room(
RoomID int,
FloorNum int,
RoomNum int,
Hotel_ID int
primary key (RoomID),
foreign key(Hotel_ID) references HotelName(HotelID)
);


create table Customer(
CustomerID int,
FirstName varchar(45),
LastName varchar(45),
Email varchar,
BirthDate date,
Employee_ID int
primary key(CustomerID)
foreign key(Employee_ID) references Employee(EmployeeID)
);

create table Reservation(
ReservationID int,
Customer_ID int,
Price decimal(12,2),
primary key(ReservationID),
foreign key(Customer_ID) references Customer(CustomerID)
);

create table RoomReservation (
RoomReservationID int,
Room_ID int,
Resevation_ID int,
StartDate date,
EndDate date,
primary key(RoomReservationID),
foreign key (Room_ID)references Room (RoomID),
foreign key (Resevation_ID)references Reservation (ReservationID)
);








