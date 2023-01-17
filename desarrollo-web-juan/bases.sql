/* -------- Mostrar databases ------- */
SHOW DATABASES;

--
/* ------ Crear nueva database ------ */
CREATE DATABASE appsalon;

--
/* ---------- Usar database --------- */
USE appsalon;

--
/* ---- Mostrar todas las tablas ---- */
SHOW TABLES;

--
/* --------- Crear una tabla -------- */
CREATE TABLE servicios (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  precio DECIMAL(6, 2) NOT NULL,
  PRIMARY KEY (id)
);

--
/* ----- Estructura de una tabla ---- */
DESCRIBE servicios;

--
/* ---------- THE CRUD -------------- */
--
/* ---------------------------------- */
/*               CREATE               */
/* ---------------------------------- */
-- Option#1 con "comillas dobles"
INSERT INTO
  servicios (nombre, precio)
VALUES
  ("Corte de Cabello de Adulto", 80);

--
-- option#2 con 'comillas sencillas':
INSERT INTO
  servicios (nombre, precio)
VALUES
  ('Corte de Cabello Niño', 90);

--
-- option#3 Insertar multiples registros:
INSERT INTO
  servicios (nombre, precio)
VALUES
  ('Peinado Mujer', 80),
  ('Peinado Hombre', 60);

--
/* ---------------------------------- */
/*                READ                */
/* ---------------------------------- */
-- Mostrar todas las columnas con asterisco "*"
SELECT
  *
FROM
  servicios;

--
-- Mostrar por una columna en especifico
SELECT
  nombre
FROM
  servicios --
  -- Mostrar varias columnas
SELECT
  nombre,
  precio
FROM
  servicios --
  /* ------------ ORDER BY ------------ */
SELECT
  *
FROM
  servicios
ORDER BY
  precio;

--
/* --------------- ASC -------------- */
SELECT
  *
FROM
  servicios
ORDER BY
  precio ASC;

--
/* --------------- DESC -------------- */
SELECT
  *
FROM
  servicios
ORDER BY
  precio DESC;

--
/* -------------- NOTA: ------------- */
-- En el caso de la llave primaria (id)
-- si no le especificamos el ORDER BY DESC
-- siempre ordena por la ORDER BY (PRIMARY KEY) ASC
-- Esto:
SELECT
  *
FROM
  servicios;

-- Es lo mismo que:
SELECT
  *
FROM
  servicios
ORDER BY
  id ASC;

-- Porque "id" es la PRIMARY KEY.
--
/* -------------- LIMIT ------------- */
SELECT
  *
FROM
  servicios
LIMIT
  2;

--
SELECT
  *
FROM
  servicios
ORDER BY
  id DESC
LIMIT
  2;

--
/* -------------- WHERE ------------- */
SELECT
  *
FROM
  servicios
WHERE
  id = 2;

--
/* ---------------------------------- */
/*               UPDATE               */
/* ---------------------------------- */
UPDATE
  servicios
SET
  precio = 100
WHERE
  id = 2;

--
UPDATE
  servicios
SET
  nombre = "Corte de Cabello Niño Actualizado"
WHERE
  id = 2;

--
UPDATE
  servicios
SET
  nombre = "Corte de Cabello Adulto Actualizado",
  precio = 90
WHERE
  id = 1;

--
/* ---------------------------------- */
/*               DELETE               */
/* ---------------------------------- */
DELETE FROM
  servicios
WHERE
  id = 1;

DELETE FROM
  servicios
WHERE
  id = 4;

-- Al insertar un nuevo registro lo agrega al final con el id 5. No ocupa los ids que han sido eliminados.
INSERT INTO
  servicios (nombre, precio)
VALUES
  ("Corte de Cabello Adulto", 90);

--
/* ---------------------------------- */
/*        Modificar la database       */
/* ---------------------------------- */
/* --------------- ADD -------------- */
ALTER TABLE
  servicios
ADD
  descripcion VARCHAR(100) NOT NULL;

--
/* ------------- CHANGE ------------- */
ALTER TABLE
  servicios CHANGE descripcion nuevonombre VARCHAR(150) NOT NULL;

--
ALTER TABLE
  servicios CHANGE descripcion descripcion VARCHAR(150) NOT NULL;

--
INSERT INTO
  servicios (nombre, precio, descripcion)
VALUES
  ('Peinado', 100, 'Hola');

--
/* ----------- DROP COLUMN ---------- */
ALTER TABLE
  servicios DROP COLUMN descripcion;

--
/* ---------------------------------- */
/*           ELIMINAR TABLA           */
/* ---------------------------------- */
DROP TABLE servicios;

- -