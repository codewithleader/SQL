-- Creando tablas segun diagrama Entity Relation (ER)
--
/* --------- Tabla Clientes --------- */
CREATE TABLE clientes (
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  apellido VARCHAR(60) NOT NULL,
  telefono VARCHAR(10) NOT NULL,
  email VARCHAR(60) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

SHOW TABLES;

DESCRIBE clientes;

/* -------- Insertar cliente -------- */
INSERT INTO
  clientes (nombre, apellido, telefono, email)
VALUES
  (
    "Antonio",
    "Perez",
    "3136283692",
    "elisperezmusic@gmail.com"
  );

INSERT INTO
  clientes (nombre, apellido, telefono, email)
VALUES
  (
    "Darianny",
    "Perez",
    "5555555555",
    "darianndysharitff@gmail.com"
  );

SELECT
  *
FROM
  clientes;

SELECT
  *
FROM
  servicios;

/* ----------- Tabla citas ---------- */
CREATE TABLE citas (
  id INT(11) NOT NULL AUTO_INCREMENT,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  clienteId INT(11) NOT NULL,
  PRIMARY KEY (id),
  KEY clienteId (clienteId),
  CONSTRAINT cliente_FK FOREIGN KEY (clienteId) REFERENCES clientes (id)
);

SHOW TABLES;

DESCRIBE citas;

/* ---------- Insertar cita --------- */
INSERT INTO
  citas (fecha, hora, clienteId)
VALUES
("2010-01-31", "10:30:00", 1);

SELECT * FROM citas;
