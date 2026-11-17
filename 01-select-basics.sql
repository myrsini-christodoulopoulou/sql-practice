CREATE TABLE clients (id INT PRIMARY KEY, name VARCHAR(50), city VARCHAR(30), email VARCHAR(60));
CREATE TABLE properties (id INT PRIMARY KEY, client_id INT, type VARCHAR(20), city VARCHAR(30), price INT, status VARCHAR(20));
CREATE TABLE tickets (id INT PRIMARY KEY, client_id INT, subject VARCHAR(80), status VARCHAR(20), created DATE);

INSERT INTO clients VALUES (1,'Παπαδόπουλος','Θεσσαλονίκη','p@mail.gr'),(2,'Νικολάου','Αθήνα',NULL),(3,'Γεωργίου','Θεσσαλονίκη','g@mail.gr'),(4,'Ιωάννου','Πάτρα','i@mail.gr');
INSERT INTO properties VALUES (1,1,'διαμέρισμα','Θεσσαλονίκη',95000,'διαθέσιμο'),(2,1,'γραφείο','Θεσσαλονίκη',150000,'πωλήθηκε'),(3,2,'μεζονέτα','Αθήνα',320000,'διαθέσιμο'),(4,3,'διαμέρισμα','Θεσσαλονίκη',78000,'διαθέσιμο'),(5,NULL,'οικόπεδο','Πάτρα',60000,'διαθέσιμο');
INSERT INTO tickets VALUES (1,1,'Δεν εμφανίζεται η αναφορά','ανοιχτό','2026-11-01'),(2,3,'Σφάλμα στην εισαγωγή ακινήτου','κλειστό','2026-11-03'),(3,1,'Αργή φόρτωση λίστας','ανοιχτό','2026-11-05'),(4,2,'Αλλαγή κωδικού','ανοιχτό','2026-11-08');

-- Exercise 1: clients from Thessaloniki
SELECT * FROM clients WHERE city = 'Θεσσαλονίκη';

-- Exercise 2: name and city from clients
SELECT name, city FROM clients;

-- Exercise 3: price from properties
SELECT price FROM properties;

-- Exercise 4: available properties in Thessaloniki under 100000
SELECT * FROM properties
WHERE city = 'Θεσσαλονίκη'
  AND status = 'διαθέσιμο'
  AND price < 100000;

-- Exercise 5: clients without email (NULL needs IS NULL, not = 'null')
SELECT * FROM clients
WHERE email IS NULL;

-- Exercise 6: clients whose name starts with Π (LIKE with % wildcard)
SELECT * FROM clients
WHERE name LIKE 'Π%';
