/* ------ Multiples condiciones ----- */
/* ---------------------------------- */
/*                 IN()               */
/* ---------------------------------- */
SELECT
  *
FROM
  reservaciones
WHERE
  id IN(1, 3);

/* ---------------------------------- */
/*            AND IN() LIKE           */
/* ---------------------------------- */
SELECT
  *
FROM
  reservaciones
WHERE
  fecha = '2021-06-28'
  AND id IN(1, 10)
  AND nombre LIKE '%j%';