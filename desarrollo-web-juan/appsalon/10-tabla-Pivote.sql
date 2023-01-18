/* ---------- Tabla Pivote ---------- */
CREATE TABLE citasServicios (
  id INT(11) NOT NULL AUTO_INCREMENT,
  citaId INT(11) NOT NULL,
  servicioId INT(11) NOT NULL,
  PRIMARY KEY (id),
  KEY citaId (citaId),
  CONSTRAINT citas_FK FOREIGN KEY (citaId) REFERENCES citas (id),
  KEY servicioId (servicioId),
  CONSTRAINT servicios_FK FOREIGN KEY (servicioId) REFERENCES servicios (id)
);

DESCRIBE citasServicios;

SELECT
  *
FROM
  citasServicios;

/* --------- Insertar datos --------- */
INSERT INTO
  citasServicios (citaId, servicioId)
VALUES
  (2, 8);

INSERT INTO
  citasServicios (citaId, servicioId)
VALUES
  (2, 3);

INSERT INTO
  citasServicios (citaId, servicioId)
VALUES
  (2, 4);

/* ---- Consultas en tabla Pivote --- */
SELECT
  *
FROM
  citasServicios
  LEFT JOIN citas ON citas.id = citasServicios.citaId
  LEFT JOIN servicios ON servicios.id = citasServicios.servicioId;