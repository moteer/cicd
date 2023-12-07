-- Erstelle die Datenbank "Company", falls sie noch nicht existiert
CREATE DATABASE IF NOT EXISTS Company;

-- Verwende die Datenbank "Company"
USE Company;

-- Erstelle die Tabelle "Employee"
CREATE TABLE Employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    job VARCHAR(255) NOT NULL
);

-- Beispiel-Datensätze einfügen
INSERT INTO Employee (name, lastname, salary, job) VALUES
('Max', 'Mustermann', 50000.00, 'Entwickler'),
('Anna', 'Musterfrau', 60000.00, 'Manager'),
('Peter', 'Schmidt', 55000.00, 'Designer'),
('Sarah', 'Meier', 48000.00, 'Analyst'),
('David', 'Müller', 52000.00, 'Entwickler'),
-- Füge weitere Einträge hier hinzu...
('Lena', 'Wolf', 63000.00, 'Manager'),
('Felix', 'Hofmann', 54000.00, 'Designer'),
('Julia', 'Berger', 51000.00, 'Analyst'),
('Markus', 'Schulz', 59000.00, 'Entwickler'),
-- Füge weitere Einträge hier hinzu...
('Laura', 'Wagner', 47000.00, 'Analyst'),
('Niklas', 'Koch', 58000.00, 'Entwickler'),
('Sophie', 'Huber', 55000.00, 'Manager'),
('Jonas', 'Fischer', 50000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Emily', 'Graf', 56000.00, 'Analyst'),
('Tom', 'Becker', 51000.00, 'Entwickler'),
('Lara', 'König', 59000.00, 'Manager'),
('Tim', 'Bauer', 54000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Melanie', 'Herrmann', 48000.00, 'Analyst'),
('Simon', 'Lehmann', 52000.00, 'Entwickler'),
('Mia', 'Sauer', 61000.00, 'Manager'),
('Luca', 'Schuster', 55000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Leon', 'Vogel', 50000.00, 'Analyst'),
('Hannah', 'Bach', 59000.00, 'Entwickler'),
('Benjamin', 'Kaiser', 53000.00, 'Manager'),
('Clara', 'Richter', 48000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Julian', 'Kühn', 56000.00, 'Analyst'),
('Emma', 'Neumann', 52000.00, 'Entwickler'),
('Paul', 'Schreiber', 58000.00, 'Manager'),
('Elena', 'Arnold', 54000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Vincent', 'Ziegler', 49000.00, 'Analyst'),
('Jana', 'Götz', 57000.00, 'Entwickler'),
('Fabian', 'Lange', 51000.00, 'Manager'),
('Carla', 'Walter', 52000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Alexander', 'Meyer', 59000.00, 'Analyst'),
('Mila', 'Haas', 48000.00, 'Entwickler'),
('Moritz', 'Hess', 55000.00, 'Manager'),
('Amelie', 'Schröder', 54000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('David', 'Keller', 53000.00, 'Analyst'),
('Sophia', 'Peters', 56000.00, 'Entwickler'),
('Samuel', 'Lutz', 50000.00, 'Manager'),
('Lina', 'Ebert', 58000.00, 'Designer'),
-- Füge weitere Einträge hier hinzu...
('Jannis', 'Ritter', 51000.00, 'Analyst'),
('Emily', 'Kraft', 52000.00, 'Entwickler'),
('Jan', 'Hofmann', 57000.00, 'Manager'),
('Lea', 'Bergmann', 49000.00, 'Designer');
