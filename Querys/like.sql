-- / --------------------------/
-- Searches with LIKE and Metacaracter %
-- / --------------------------/
-- / ------ Query 1: Sin comodin -----/
-- Trae todo el que tiene el termino de busqueda exacto.
-- SELECT Prod_Id,
--   Prod_Descripcion,
--   Prod_Color
-- FROM productos
-- WHERE Prod_Descripcion LIKE 'D'
-- / --------------------------/
-- / ----- Query 2: Comodin %term -----/
-- Trae todo el que termina con el termino de busqueda
-- SELECT Prod_Id,
--   Prod_Descripcion,
--   Prod_Color
-- FROM productos
-- WHERE Prod_Descripcion LIKE '%AD'

-- / ---- Query 3: Comodin term% -----/
-- -- Trae todo el que comienza con el termino de busqueda
-- SELECT Prod_Id,
--   Prod_Descripcion,
--   Prod_Color
-- FROM productos
-- WHERE Prod_Descripcion LIKE 'AD%'

-- / ---- Query 4: Comodin %term% -----/
-- -- Trae todo el que por lo menos tenga parte del termino de busqueda
SELECT Prod_Id,
  Prod_Descripcion,
  Prod_Color
FROM productos
WHERE Prod_Descripcion LIKE '%Diana%'
