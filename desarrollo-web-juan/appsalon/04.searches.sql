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

/* ----- Busqueda por 2 columnas ---- */
SELECT
  *
FROM
  reservaciones
WHERE
  CONCAT(nombre, ' ', apellido) LIKE 'Ana Preciado';