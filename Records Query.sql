use [Hotel Resev]


/*Insert statement 
1-Insert into Room (RoomID,FloorNum,RoomNum)Values(1,1,1)
2-insert into Reservation(ReservationID,Price)Values(1,2500)
insert into Reservation(ReservationID,Price)Values(2,5000)
insert into Reservation(ReservationID,Price)Values(3,1500)
3-insert into HotelName(HotelID,HotelName)Values(1587564,'BaseProject'
4-insert into Customer(CustomerID,FirstName,LastName,Email,BirthDate)values(1,'Ahmed','Farid','ahmedfarid@gmail.com','2000-9-18')
5-inset into RoomReservation(RoomReservationID,Room_ID,Reservation_ID,StartDate,EndDate)values(1,1,1,'2020-5-10','2020-5-18')
*/


/*Delete statement
1-Delete From Room where RoomNum='1'
2-Delete from Customer
3-Delete from RoomReservation Where RoomReservationID='1'
4-Delete from Reservation where price='1500'
Delete from Reservation where ReservationID='2'
5-Delete from HotelName Where HotelName='BaseProject'
*/


/*Update statement
Update Reservation set Price=1140 where ReservationID=3

update HotelName set HotelID=1892 Where HotelName='DBProject'

update Customer set BirthDate='1999-5-20' where CustomerID=1

update Employee set FirstName='said' where EmployeeID=2

update RoomReservation set EndDate='2020-8-6' where RoomReservationID=2
*/


/*SUB Query Statmnets
1- select price from Reservarion Where ReservationID IN (Select RoomID from Room Where FloorNum>3);
2-Select RoomID from room Where RoomNum =11;
3-Select FirstName,LastName,BirthDate,resrvamount=(Select COUNT(o.ReservationID)FROM [Reservation] O 
Where o.Customer_ID=C.CustomerID From Customer C;*/


/*joins statement
1-Select Customer,CustomerID,Employee.FirstName From Customer
Right join Employee on Customer.Employee_ID=Employee.EmployeeID Ordered by Custmer. CustomerID;
2-Select Customer,CustomerID,Customer.FirstName from Customer Inner Join Reservation on Reservation.Customer_ID=Customer.CustomerID;
3-Select Customer,FirstName,Reservation.ReservationID From Customer Left join Reservation on Customer.CustomerID=Reservation.Customer_ID
order by Customer.FirstName
4-Select Customer,FirstName,Reservation.ReservationID From Customer Full Outer Join Reservation on Customer.CusomerID=Reservation.Customer_ID
5-Select A.FirstName As CustomerName1,B.FirstName As CustomerName2,A.Email
From Customer A,Customer B
Where A.CustomerID <> B.CustomerID
And A.LastName=B.LastName
Order by A.LastName;*/


/*Select Statements using Count and Group Functions
1-Select Email ,Count(*) From Customer Group by Email order by 2;
2-SELECT SUM(O.Price), C.FirstName, C.LastName
  FROM [Reservation] O JOIN Customer C 
    ON O.Customer_ID = C.CustomerID
 GROUP BY C.FirstName, C.LastName
 ORDER BY SUM(O.Price) DESC
*/





















