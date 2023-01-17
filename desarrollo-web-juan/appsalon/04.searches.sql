/* ------------ Busquedas ----------- */
/* ---------------------------------- */
/*                LIKE                */
/* ---------------------------------- */
/* ------------ 'query%' ------------ */
SELECT
  *
FROM
  servicios
WHERE
  nombre LIKE 'corte%';

/* ------------ '%query' ------------ */
SELECT
  *
FROM
  servicios
WHERE
  nombre LIKE '%barba';

/* ------------ '%query%' ------------ */
SELECT
  *
FROM
  servicios
WHERE
  nombre LIKE '%cabello%';