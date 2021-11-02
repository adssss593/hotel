CREATE
OR replace database AdamJacobsHotelDB;
USE AdamJacobsHotelDB;
CREATE
OR replace TABLE roomType (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  roomType ENUM("single", "double", "suite"),
  capacity INT,
  microwave BOOLEAN,
  refrigirator BOOLEAN,
  kitchen BOOLEAN,
  livingRoom BOOLEAN,
  ADA BOOLEAN,
  jacuzzi BOOLEAN,
  kingBed INT,
  queenBed INT
);
CREATE
OR replace TABLE guests (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  guestName varchar(50) not NULL,
  guestAddress varchar(100),
  city varchar(30),
  county varchar(30),
  postcode varchar(8),
  phone varchar(15) not null
);
CREATE
or replace table rooms (
  roomNumber int not NULL PRIMARY KEY,
  roomTypeID int,
  foreign KEY (roomTypeID) references roomType(id)
);
CREATE
or replace TABLE reservations (
  id int PRIMARY KEY AUTO_INCREMENT not NULL,
  roomNumber int,
  guestID int,
  adults int,
  children int,
  startDate date,
  endDate date,
  foreign key (roomNumber) references rooms(roomNumber),
  foreign key (guestID) references guests(id)
);