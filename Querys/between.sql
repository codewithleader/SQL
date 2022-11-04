-- /----------------/
-- BETWEEN
-- Consultar las ventas entre un rango de fechas
-- /----------------/
-- SELECT Ventas_Fecha,
--   Ventas_CliId,
--   Ventas_Total
-- FROM ventas
-- WHERE Ventas_Fecha BETWEEN '2018-01-01' AND '2018-01-04' --
--
-- /----------------/
-- Consultar las ventas entre un rango de Clientes
-- /----------------/
SELECT Ventas_Fecha,
  Ventas_CliId,
  Ventas_Total
FROM ventas
WHERE Ventas_CliId BETWEEN 2 AND 100