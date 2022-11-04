-- / --------------------------/
-- CONCAT Searches with LIKE and Metacaracter %
-- CONCAT une 2 o mas campos.
-- / --------------------------/
-- / ------ Query 1: CONCAT -----/
-- Consulta usando varios campos. Trae todos los registros donde el termino de busqueda aparece en uno de los dos campos unidos con CONCAT
SELECT Prod_Id,
  Prod_Descripcion,
  Prod_Color
FROM productos
WHERE CONCAT(Prod_Descripcion, Prod_Color) LIKE '%gro%'
-- / --------------------------/
  -- / ----- Query 2: Comodin %term -----/
  -- Trae todo el que termina con el termino de busqueda