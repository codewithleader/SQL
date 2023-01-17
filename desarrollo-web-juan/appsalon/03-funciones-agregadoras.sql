/* ------ Funciones Agregadoras ----- */
/* ---------------------------------- */
/*              COUNT()             */
/* ---------------------------------- */
SELECT
  COUNT(id),
  fecha
FROM
  reservaciones
GROUP BY
  fecha
ORDER BY
  COUNT(id) DESC;

/* ---------------------------------- */
/*                SUM()               */
/* ---------------------------------- */
SELECT
  SUM(precio) AS 'Total Servicios'
FROM
  servicios;

/* ---------------------------------- */
/*                MIN()               */
/* ---------------------------------- */
SELECT
  MIN(precio) AS precioMenor
FROM
  servicios;

/* ---------------------------------- */
/*                MAX()               */
/* ---------------------------------- */
SELECT
  MAX(precio) AS "Precio Mayor"
FROM
  servicios;