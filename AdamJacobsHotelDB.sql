#overwrites DATABASE
CREATE
OR replace database AdamJacobsHotelDB;
USE AdamJacobsHotelDB;
CREATE
OR replace TABLE roomType (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  roomType ENUM("single", "double", "suite"),
  capacity INT not null,
  microwave BOOLEAN,
  refrigirator BOOLEAN,
  kitchen BOOLEAN not null,
  livingRoom BOOLEAN not null,
  ADA BOOLEAN not null,
  jacuzzi BOOLEAN not null,
  kingBed INT,
  queenBed INT,
  basePrice decimal(7, 2)
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
  roomTypeID int not null,
  foreign KEY (roomTypeID) references roomType(id)
);
CREATE
or replace TABLE reservations (
  id int PRIMARY KEY AUTO_INCREMENT not NULL,
  roomNumber int not null,
  guestID int not null,
  adults int not null,
  children int default 0,
  startDate date not null default curdate(),
  endDate date not null default (curdate() + interval 1 day),
  foreign key (roomNumber) references rooms(roomNumber),
  foreign key (guestID) references guests(id)
);
#shows guest name, address and phone number for a particular phone number
SELECT
  guestName,
  guestAddress,
  phone
FROM
  guests
WHERE
  phone = 07395720432;