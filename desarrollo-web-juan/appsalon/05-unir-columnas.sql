/* ---------- Unir columnas --------- */
/* ---------------------------------- */
/*              CONCAT()              */
/* ---------------------------------- */
SELECT
  CONCAT(nombre, ' ', apellido) AS 'Nombre Completo'
FROM
  reservaciones;

/* ----- Busqueda por 2 columnas ---- */
SELECT
  *
FROM
  reservaciones
WHERE
  CONCAT(nombre, ' ', apellido) LIKE 'Ana Preciado';

/* -- Personalizar más la consulta -- */
SELECT
  hora,
  fecha,
  CONCAT(nombre, ' ', apellido) AS 'Nombre Completo'
FROM
  reservaciones
WHERE
  CONCAT(nombre, ' ', apellido) LIKE 'Ana Preciado';