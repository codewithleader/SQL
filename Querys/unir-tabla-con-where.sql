-- Cuando usamos AS (Alias) no es necesario las comillas si es una sola palabra sin espacios. Con espacios es obligatorio.
SELECT Ventas_Fecha AS Fecha,
    Ventas_NroFactura AS Factura,
    Ventas_CliId AS 'ID Cliente',
    Cli_RazonSocial AS 'Razon Social',
    Ventas_Total AS 'Total Ventas'
FROM ventas AS v,
    clientes AS c
WHERE v.Ventas_CliId = c.Cli_Id