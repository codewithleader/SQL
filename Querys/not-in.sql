-- /------------------------------------/
-- Consultar clientes que no han hecho compras en un mes especifico con NOT IN.
-- /------------------------------------/
-- SELECT Cli_Id AS 'N° Cliente',
--     Cli_RazonSocial AS Nombre
-- FROM clientes
-- WHERE Cli_Id NOT IN (
--         SELECT DISTINCT (Ventas_CliId) AS Cliente
--         FROM ventas
--         WHERE Ventas_Fecha >= '2018-02-01'
--             AND Ventas_Fecha < '2018-03-01'
--     )
-- /----------------------------------------/
-- Consultar Productos que no se han vendido:
-- /---------------------------------------/
SELECT Prod_Id,
    Prod_Descripcion
FROM productos
WHERE Prod_Id NOT IN (
        SELECT DISTINCT(VD_ProdID)
        FROM ventas_detalle,
            ventas
        WHERE VD_VentasId = Ventas_Id
            AND Ventas_Fecha > '2018-01-01'
    )