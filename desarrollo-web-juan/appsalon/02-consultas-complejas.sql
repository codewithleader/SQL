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