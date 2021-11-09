#all reservations that end in july 2023
SELECT
  guestName,
  CONCAT(startDate, " to ", endDate) duration,
  rooms.roomNumber
from
  reservations
  inner JOIN guests on guests.id = reservations.guestID
  INNER JOIN rooms ON reservations.roomNumber = rooms.roomNumber
WHERE
  endDate LIKE "2023-06-%";
#all reservations with a jacuzzi
SELECT
  guestName,
  CONCAT(startDate, " to ", endDate) duration,
  rooms.roomNumber
from
  reservations
  inner JOIN guests on guests.id = reservations.guestID
  INNER JOIN rooms ON reservations.roomNumber = rooms.roomNumber
  INNER JOIN roomType ON rooms.roomTypeID = roomType.id
WHERE
  jacuzzi = true;
#all reservations for Mack Simmer
SELECT
  guestName,
  CONCAT(startDate, " to ", endDate) duration,
  rooms.roomNumber "room number",
  adults + children "Number of guests"
from
  reservations
  inner JOIN guests on guests.id = reservations.guestID
  INNER JOIN rooms ON reservations.roomNumber = rooms.roomNumber
WHERE
  guestName = "Mack Simmer";
#total price calculates on the number of additional adults in the room
SELECT
  rooms.roomNumber "room number",
  reservations.id "reservation id",
  (
    case
      when roomType = "double"
      AND adults > 2 then basePrice + (adults - 2) * 10
      when roomType = "suite"
      AND adults > 3 then basePrice +(adults - 3) * 20
      ELSE basePrice
    END
  ) AS total
from
  reservations
  inner JOIN guests on guests.id = reservations.guestID
  INNER JOIN rooms ON reservations.roomNumber = rooms.roomNumber
  INNER JOIN roomType ON rooms.roomTypeID = roomType.id;
#all rooms with a capacity larger than 2 that have a reservation that starts or ends in april 2023
SELECT
  rooms.roomNumber
FROM
  reservations
  INNER join rooms on reservations.roomNumber = rooms.roomNumber
  inner JOIN roomType on rooms.roomTypeID = roomType.id
WHERE
  capacity > 2
  AND (
    startDate LIKE "2023-04-%"
    OR endDate LIKE "2023-04-%"
  );
#uses count to order by number of guest reservations, then name
SELECT
  guestName,
  COUNT(guestName)
FROM
  reservations
  INNER JOIN guests ON reservations.guestID = guests.id
GROUP BY
  guestName
ORDER BY
  COUNT(guestName) DESC,
  guestName;