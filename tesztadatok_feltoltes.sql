INSERT INTO Tanulok (tanulo_id, nev, szuletesi_datum, email, telefon) VALUES
(1, 'Kovács Anna', '2002-05-12', 'anna.kovacs@example.com', '06101234567'),
(2, 'Nagy Péter', '2001-09-03', 'peter.nagy@example.com', '06203456789'),
(3, 'Szabó László', '2000-11-21', 'laszlo.szabo@example.com', '06301239876');

INSERT INTO Oktatok (oktato_id, nev, telefon, jogositvany_tipus) VALUES
(1, 'Tóth Gábor', '06201111222', 'B'),
(2, 'Kiss Erika', '06309998877', 'B');

INSERT INTO Tanfolyamok (tanfolyam_id, nev, tipus, ar) VALUES
(1, 'B kategóriás elméleti tanfolyam', 'elméleti', 30000),
(2, 'B kategóriás gyakorlati tanfolyam', 'gyakorlati', 60000);

INSERT INTO Beiratkozasok (beiratkozas_id, tanulo_id, tanfolyam_id, oktato_id, datum) VALUES
(1, 1, 1, 1, '2024-03-01'),
(2, 1, 2, 2, '2024-04-01'),
(3, 2, 1, 1, '2024-03-05'),
(4, 3, 1, 2, '2024-03-10'),
(5, 3, 2, 2, '2024-04-10');

INSERT INTO Vizsgak (vizsga_id, tanulo_id, datum, tipus, eredmeny) VALUES
(1, 1, '2024-04-15', 'elméleti', 'sikeres'),
(2, 1, '2024-05-01', 'gyakorlati', 'sikertelen'),
(3, 2, '2024-04-20', 'elméleti', 'sikeres'),
(4, 3, '2024-04-25', 'elméleti', 'sikertelen'),
(5, 3, '2024-05-10', 'gyakorlati', 'sikeres');
