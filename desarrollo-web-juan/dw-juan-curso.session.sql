/* --------------------- Mostrar todas las base de datos -------------------- */
-- SHOW DATABASES;
--
/* -------------------------- Crear nueva database -------------------------- */
-- CREATE DATABASE appsalon;
--
/* -------------- Trabajar sobre una base de datos especifica: -------------- */
-- USE appsalon;
--
/* ------------------------ Mostrar todas las tablas ------------------------ */
-- SHOW TABLES;
--
/* ----------------------------- Crear una tabla ---------------------------- */
-- CREATE TABLE servicios (
--   id INT(11) NOT NULL AUTO_INCREMENT,
--   nombre VARCHAR(60) NOT NULL,
--   precio DECIMAL(6, 2) NOT NULL,
--   PRIMARY KEY (id)
-- );
--
/* ----------------------- Ver estructura de una tabla ---------------------- */
-- DESCRIBE servicios;
--
/* ---------------------------------- CRUD ---------------------------------- */
--
/* -------------------------------------------------------------------------- */
/*                                   CREATE                                   */
/* -------------------------------------------------------------------------- */
-- Option#1 con "comillas dobles"
-- INSERT INTO servicios (nombre, precio) VALUES ("Corte de Cabello de Adulto", 80);
--
-- option#2 con 'comillas sencillas':
-- INSERT INTO servicios (nombre, precio) VALUES ('Corte de Cabello Niño', 90);
--
-- option#3 Insertar multiples registros:
-- INSERT INTO servicios (nombre, precio)
-- VALUES ('Peinado Mujer', 80),
--   ('Peinado Hombre', 60);
--
/* -------------------------------------------------------------------------- */
/*                                    READ                                    */
/* -------------------------------------------------------------------------- */
SELECT *
FROM servicios;