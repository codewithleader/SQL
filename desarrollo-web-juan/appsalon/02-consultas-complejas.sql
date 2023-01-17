/* ---------------------------------- */
/*         Filtrar por precio         */
/* ---------------------------------- */
SELECT
  *
FROM
  servicios
WHERE
  precio > 90;

SELECT
  *
FROM
  servicios
WHERE
  precio >= 80;

SELECT
  *
FROM
  servicios
WHERE
  precio < 80;

SELECT
  *
FROM
  servicios
WHERE
  precio <= 80;

SELECT
  *
FROM
  servicios
WHERE
  precio = 80;

/* ----------- BETWEEN AND ---------- */
SELECT
  *
FROM
  servicios
WHERE
  precio BETWEEN 100
  AND 200;