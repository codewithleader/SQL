/* ----------- INNER JOIN ----------- */
SELECT
  *
FROM
  citas
  INNER JOIN clientes ON clientes.id = citas.clienteId;

/* ----------- LEFT JOIN ----------- */
SELECT
  *
FROM
  citas
  LEFT JOIN clientes ON clientes.id = citas.clienteId;

/* ----------- RIGHT JOIN ----------- */
SELECT
  *
FROM
  citas
  RIGHT JOIN clientes ON clientes.id = citas.clienteId;