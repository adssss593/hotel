INSERT into
  guests (
    guestName,
    guestAddress,
    city,
    county,
    postcode,
    phone
  )
VALUES
  (
    "Mack Simmer",
    "379 Old Shore Street",
    "Liverpool",
    "Mersyside",
    "L19 2BE",
    "072479164993"
  ),
  (
    "Betty Seery",
    "750 Wintergreen Drive",
    "Newcastle",
    "Northumbria",
    "NE12 3JD",
    "07395720432"
  ),
  (
    "Duane Cullison",
    "9662 Foxrun Lane",
    "Bourenmouth",
    "Dorset",
    "BH2 4FE",
    "0739756348937"
  );
insert into
  guests (guestName, guestAddress, postcode, phone)
VALUES
  (
    "Karie Yang",
    "32 Augusta Avenue",
    "B34 4LX",
    "07099382412"
  ),
  (
    "Aurore Lipton",
    "1 Wild Rose Street",
    "BS6 9TQ",
    "07125027620"
  ),
  (
    "Zachery Luechtefeld",
    "7 Popular Drive",
    "CM3 4VJ",
    "0719897426495"
  ),
  (
    "Jeremiah Pendergrass",
    "70 Oakwood Street",
    "LS7 2AU",
    "07198751235"
  );
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
insert into
  reservations (
    roomNumber,
    guestID,
    adults,
    children,
    startDate,
    endDate
  )
VALUES
  (308, 1, 1, 0, "2023-2-2", "2023-02-04"),
  (203, 2, 2, 1, "2023-2-05", "2023-2-12"),
  (305, 3, 2, 0, "2023-2-22", "2023-2-24"),
  (201, 4, 2, 2, "2023-3-6", "2023-2-7"),
  (302, 5, 3, 0, "2023-3-18", "2023-3-23"),
  (202, 6, 2, 2, "2023-3-29", "2023-3-31"),
  (304, 7, 2, 0, "2023-03-31", "2023-4-5"),
  (304, 5, 3, 0, "2023-6-17", "2023-6-18"),
  (303, 2, 2, 1, "2023-7-28", "2023-7-29"),
  (305, 2, 1, 0, "2023-8-30", "2023-09-01"),
  (208, 1, 2, 0, "2023-9-16", "2023-09-17"),
  (203, 4, 2, 2, "2023-9-13", "2023-9-15"),
  (401, 3, 2, 2, "2023-9-22", "2023-9-25"),
  (206, 1, 2, 0, "2023-09-22", "2023,9,25"),
  (301, 1, 2, 2, "2023-9-22", "2023-9-25");
DELETE from
  reservations
where
  guestID = 7;
DELETE from
  guests
where
  id = 7;