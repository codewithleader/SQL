SELECT
  *
FROM
  citasServicios
  LEFT JOIN citas ON citas.id = citasServicios.citaId
  LEFT JOIN clientes ON clientes.id = citas.clienteId
  LEFT JOIN servicios ON servicios.id = citasServicios.servicioId;

DESC citasServicios;