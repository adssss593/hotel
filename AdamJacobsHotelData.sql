USE AdamJacobsHotelDB;
load data local INFILE 'C:/Users/adamj/OneDrive/Documents/Mthree/hotel/guests.csv' into TABLE AdamJacobsHotelDB.guests fields terminated BY ',' (guestName, guestAddress, city, state, zip, phone);
INSERT into
  roomType
values
  (
    1,
    "single",
    2,
    TRUE,
    TRUE,
    False,
    False,
    TRUE,
    false,
    1,
    0,
    149.99
  ),
  #no jacuzzi
  (
    2,
    "single",
    2,
    true,
    true,
    false,
    false,
    false,
    true,
    1,
    0,
    174.99
  ),
  #jacuzzi
  (
    4,
    "double",
    4,
    false,
    true,
    false,
    false,
    true,
    false,
    0,
    2,
    174.99
  ),
  #fridge, no jaccuzi
  (
    5,
    "double",
    4,
    true,
    false,
    false,
    false,
    false,
    true,
    0,
    2,
    199.99
  ),
  #microwave, jaccuzi
  (
    7,
    "suite",
    8,
    true,
    true,
    true,
    true,
    true,
    false,
    1,
    2,
    399.99
  );
insert into
  rooms
VALUES
  (201, 5),
  (202, 4),
  (203, 5),
  (204, 4),
  (205, 2),
  (206, 1),
  (207, 2),
  (208, 1),
  (301, 5),
  (302, 4),
  (303, 5),
  (304, 4),
  (305, 2),
  (306, 1),
  (307, 2),
  (308, 1),
  (401, 7),
  (402, 7);
load data local INFILE 'C:/Users/adamj/OneDrive/Documents/Mthree/hotel/reservations.csv' into TABLE AdamJacobsHotelDB.reservations fields terminated BY ',' (
    roomNumber,
    guestID,
    adults,
    children,
    startDate,
    endDate
  );