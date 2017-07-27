use carDealership;
set foreign_key_checks=0;
-- you can drop tables
drop table if exists Car;
drop table if exists Customer;
SET FOREIGN_KEY_CHECKS=1;
-- drop table if exists Salesperson;
-- drop table if exists SalesInvoice;
-- drop table if exists ServiceTicket;
-- drop table if exists Service;
-- drop table if exists Mechanic;
-- drop table if exists ServiceMechanic;
-- drop table if exists Parts;
-- drop table if exists PartsUsed;

create table Car(
    id int primary key auto_increment,
    SerialNumber int,
    Make char(50) not null,
    Model char(50) not null,
    Colour char(50) not null,
    Year int
    -- CONSTRAINT uc_SerialNumber UNIQUE (SerialNumber)
);

create table Customer(
  id int primary key auto_increment,
  LastName char(100) not null,
  FirstName char(100) not null,
  PhoneNumber int,
  Address char(100) not null,
  City char(100) not null,
  Province char(100) not null,
  Country char(100) not null,
  PostalCode int,
  Car_id int,
  foreign key (Car_id) references Car(id)

);
-- create table Salesperson(
--   id int primary key auto_increment,
--   LastName varchar(100) not null,
--   FirstName varchar(100) not null
-- );

-- create table SalesInvoice (
--   id int primary key auto_increment,
--   InvoiceNumber int,
--   Date DATETIME,
--   Car_id int,
--   foreign key (Car_id) references Car(id),
--   Customer_id int,
--   foreign key (Customer_id) references Customer(id),
--   Salesperson_id int,
--   foreign key (Salesperson_id) references Salesperson(id)
--   --  CONSTRAINT uc_InvoiceNumber UNIQUE (InvoiceNumber)
--
-- );

-- create table ServiceTicket (
-- id int primary key auto_increment,
-- ServiceTicketNumber int,
-- Car_id int,
-- foreign key (SerialNumber_id) references Car(id),
-- Customer_id int ,
-- foreign key (LastName_id) references Customer(id),
-- DateRecieved Date,
-- Comments varchar(255),
-- DateReturnedToCustomer Date
-- )
--
-- create table Service (
--   id int primary key auto_increment,
--   ServiceName varchar(100),
--   HourlyRate int
-- )
--
-- create table Mechanic(
--   id int primary key auto_increment,
--   LastName varchar(100),
--   FirstName varchar(100)
-- )
--
-- create table ServiceMechanic (
--   id int primary key auto_increment,
--   ServiceTicket_id int,
--   foreign key (ServiceTicketNumber_id) references ServiceTicket(id),
--   Service_id int,
--   foreign key (ServiceName_id) references Service(id),
--   Mechanic_id int,
--   foreign key (LastName_id) references Mechanic(id),
--   Hours int,
--   Comments comment_text,
--   Rate int
-- )
--
-- create table Parts (
--   id int primary key auto_increment,
--   PartNumber int,
--   Description varchar(100),
--   PurchasesPrice int,
--   RetailPrice int
-- )
-- Create table PartsUsed (
--   id int primary key auto_increment,
--   Parts_id int,
--   ServiceTicket_id,
--   Price int
--
-- )
