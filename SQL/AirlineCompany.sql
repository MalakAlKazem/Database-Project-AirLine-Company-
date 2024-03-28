create table AirlineCompany(
CName varchar (12)not null,
email varchar(20) not null,
Companylocation varchar(10) ,
phoneNumber varchar (10),
primary key(CName),
);
create table Airport(
code int,
country varchar(20),
Airportname varchar(40),
primary key(code),

);
create table AirplaneModel(
modelNumber int not null,
companyName varchar(12),
primary key(modelNumber),
foreign key(companyName) references AirlineCompany,
);


create table Airplane(
code int not null,
productionYear Date,
modelNumber int,
companyName varchar(12),
numberOfseats int,
primary key(code),
foreign key (modelNumber) references AirplaneModel,
foreign key(companyName) references AirlineCompany,

);
create table Seat(
seatNumber int not null,
airplaneCode int,
primary key (seatNumber),
foreign key (airplaneCode) references Airplane,
);
 create table Journey(
 dateOfjourney Date primary key,
 actualDepartureTime varchar(20),
 actualArrivalTime varchar(20),
 airplaneCode int,
 numberOfPassengers int,
 foreign key (airplaneCode) references Airplane,
 
 );
 create table Flight(
 flightNumber varchar(10) primary key,
 airportCode int not null,
 jDate Date not null,
 departingAirport varchar(35),
 arrivalAirport varchar(35),
 schedualDepartureTime varchar(20),
 schedualArrivalTime varchar(20),
 foreign key (jDate) references Journey,
 foreign key(airportCode) references Airport,
 );
 create table Passenger(
 journeyDate Date not null  ,
 seatNumber int ,
 age int,
 phoneNumber varchar(8),
 passengerName varchar(10),
 nationality varchar(20),
 primary key(journeyDate,seatNumber),
 foreign key(journeyDate) references Journey,
 foreign key(seatNumber) references Seat,
 );
  --insert into AirlineCompany
insert into AirlineCompany values('Qatar ','qatar@gmail.com','Qatar', '12369');
insert into AirlineCompany values('AirAsia','AirAsia@gmail.com','Malaysia', '12369');
insert into AirlineCompany values('Air china','airchaina@gmail.com','China', '1256');
insert into AirlineCompany values('ANA','ana@gmail.com','Japan', '36984');
insert into AirlineCompany values('airbus','asiana@gmail.com','Korea', '98741');
insert into AirlineCompany values('Cathy','cathy@gmail.com','China', '4796');
insert into AirlineCompany values('China','china@gmail.com','Taiwan', '3654');
insert into AirlineCompany values('JAL ','jal@gmail.com','Japan', '9871');
insert into AirlineCompany values('JetStar ','jetstar@gmail.com','Australia', '523197');
insert into AirlineCompany values('Lion ','lion@gmail.com','Indonesia', '2564');

insert into Airport values(123,'Emirates','Dubai International Airport');
insert into Airport values(147,'Kuala Lumpur','Kuala Lumpur International Airport');
insert into Airport values(741,'Hong Kong','Hong Kong International Airport');
insert into Airport values(258,'Emirates','Abu Dhabi Airport');
insert into Airport values(369,'Lebanon ','Beirut International Airport');
insert into Airport values(852,'Hong Kong','Hong Kong Airport');
insert into Airport values(654,'Taipei','Taiwan Taoyuan Aiport');
insert into Airport values(149,'Narita','Tokyo Airport');
insert into Airport values(987,'France','France International Airport');
insert into Airport values(321,'Melbourne','Melbourne Airport');

--insert Airplane model
insert into AirplaneModel values(123,'Air china');
insert into AirplaneModel values(147,'AirAsia');
insert into AirplaneModel values(369,'ANA');
insert into AirplaneModel values(126,'airbus');
insert into AirplaneModel values(325,'Cathy');
insert into AirplaneModel values(856,'China');
insert into AirplaneModel values(486,'JAL');
insert into AirplaneModel values(231,'JetStar');
insert into AirplaneModel values(741,'Lion');
insert into AirplaneModel values(637,'Qatar');

--insert into Airplane
insert into Airplane values (362,'1992-10-21',123,'ANA',250);
insert into Airplane values (361,'2000-03-21',126,'airbus',200);
insert into Airplane values (126,'2014-05-12',147,'AirAsia',300);
insert into Airplane values (862,'2018-06-03',231,'JetStar',233);
insert into Airplane values (486,'2003-09-24',325,'Cathy',125);
insert into Airplane values (143,'2016-08-09',369,'ANA',145);
insert into Airplane values (874,'1997-06-06',486,'JAL',250);
insert into Airplane values (985,'2018-07-25',637,'Qatar',150);
insert into Airplane values (369,'2001-03-03',741,'Lion',340);
insert into Airplane values (123,'1990-09-18',856,'China',200);

--insert into Seat
insert into Seat values(1,123);
insert into Seat values(2,126);
insert into Seat values(3,143);
insert into Seat values(4,362);
insert into Seat values(5,369);
insert into Seat values(6,486);
insert into Seat values(7,862);
insert into Seat values(8,874);
insert into Seat values(9,985);
insert into Seat values (10,361);

insert into Journey values ('1999-05-23','3:15 AM','4:00 AM',123,200);
insert into Journey values ('2015-10-24','2:15 AM','3:00 AM',126,234);
insert into Journey values ('2015-09-25','3:00 PM','4:02 PM',361,153);
insert into Journey values ('2015-10-15','4:04 AM','5:08 AM',143,144);
insert into Journey values ('2015-10-14','7:12 PM','8:22 PM',362,222);
insert into Journey values ('2015-11-19','5:15 AM','6:36 AM',369,321);
insert into Journey values ('2010-12-12','11:06 PM','12:40 PM',486,123);
insert into Journey values ('2017-10-13','8:36 AM','9:00 AM',862,126);
insert into Journey values ('2020-12-25','9:11 PM','10:18 PM',874,241);
insert into Journey values ('2015-09-27','10:28 AM','11:00 AM',985,150);

insert into Flight values('1',123,'2015-11-19','Beirut International Airport', 'America international airport','3:15 AM','4:00 AM');
insert into Flight values('2',147,'2015-09-25','UK airport ', 'America airport','2:15 AM','3:00 AM');
insert into Flight values('3',987,'2015-10-14',' korea airport', 'France International Airport','3:00 PM','5:00 AM');
insert into Flight values('4',149,'2015-09-25','Canada International airport ', 'UK airport','4:04 AM','6:00 AM');
insert into Flight values('5',369,'1999-05-23','Canada airport', 'Indonesia airport ','7:12 PM','8:00 AM');
insert into Flight values('6',321,'2010-12-12','Jordan airport ', 'Beirut International Airport','5:15 AM','6:00 AM');
insert into Flight values('7',741,'2015-10-15','Africa airport ', 'Beirut International Airport','11:06 PM','12:00 AM');
insert into Flight values('227',654,'2015-10-14','Itali airport ', 'France Internaional Airport','8:36 AM','9:20 AM');
insert into Flight values('9',258,'2015-09-27','Saudi airport ', 'Malaysia airport','3:00 PM','4:00 AM');

insert into Passenger values('2015-09-25',1,22,'789641','Ali','Lebanese');
insert into Passenger values('2015-09-27',2,28,'963214','Ivan','American' );
insert into Passenger values('2015-10-14',3,26,'987467','Alia','American');
insert into Passenger values('2015-10-15',4,24,'236974','Layla','Lebanese');
insert into Passenger values('2015-09-25',5,15,'256698','Ahmad','Danish');
insert into Passenger values('1999-05-23',6,35,'789641','Mohammad','African');
insert into Passenger values('2010-12-12',7,38,'789641','Khaled','Egyptian');
insert into Passenger values('2010-12-12',8,67,'789641','Kassem','Egyptian');
insert into Passenger values('2015-09-27',9,18,'789641','malak','American');

--select
--1
select count(*) as 'number of journeys done during October 2015'  from Journey 
where dateOfjourney>='2015-10-01' and dateOfjourney<='2015-10-30';
--2
select companyName from AirlineCompany,Airplane 
where CName=companyName;
--3
select country,Count(*) as'Count' from Airport 
group by country;
--4
select flightNumber,arrivalAirport,departingAirport,schedualDepartureTime,schedualArrivalTime from Flight,Airport
where arrivalAirport=Airportname and  arrivalAirport='France International Airport' and country='France';
--5
select count(*) as'number of passengers'from Passenger 
where journeyDate='2015-09-25';
--6
select count(*) as 'NumberOfPassengers' , nationality as 'nationality'  from Passenger,Flight 
where journeyDate=jDate and journeyDate>='2015-10-11' and journeyDate<='2015-10-16'
and flightNumber=227
group by nationality;
--7 
select flightNumber,dateOfjourney,actualDepartureTime,actualArrivalTime, arrivalAirport,departingAirport from Journey,Flight 
where dateOfjourney=jDate and arrivalAirport='Beirut International Airport';
--8
select code,numberOfseats,productionYear,companyName from Airplane 
where productionYear>'2010-12-31';
--9
select AVG(age) as 'average age' from Passenger,Flight,Airport
where arrivalAirport=Airportname and country='Lebanon' and jDate=journeyDate
and journeyDate>='2015-01-01' and journeyDate<='2015-12-31' and arrivalAirport='Beirut International Airport';
--10
select flightNumber,dateOfjourney,departingAirport,actualDepartureTime,arrivalAirport,actualArrivalTime from Flight,Journey,Airplane
where jDate=dateOfJourney and  airplaneCode=code and companyName='airbus';


