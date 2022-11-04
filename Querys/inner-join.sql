-- JOIN: Se debe respetar el orden para mantener la relación entre las tablas. Importante: INNER JOIN ya no es necesario, basta con solo escribir JOIN, es lo mismo.
SELECT Ventas_Fecha,
  Ventas_NroFactura,
  Ventas_CliId,
  Cli_RazonSocial,
  VD_ProdId,
  Prod_Descripcion,
  Prod_ProvId,
  Prov_Nombre,
  VD_Cantidad,
  VD_Precio,
  (VD_Cantidad * VD_Precio) AS Parcial -- Multiplica columnas y el resultado lo muestra en una nueva columna llamada "Parcial".
FROM ventas
  JOIN ventas_detalle ON VD_VentasId = Ventas_Id
  JOIN productos ON VD_ProdId = Prod_Id
  JOIN proveedores ON Prod_ProvId = Prov_Id
  JOIN clientes ON Ventas_CliId = Cli_Id