
-- CONSULTA 1: Productos y sus categorias

SELECT
    p.producto_id,
    p.nombre AS producto,
    c.nombre AS categoria,
    p.precio,
    p.stock
FROM productos p
INNER JOIN categorias c
    ON p.categoria_id = c.categoria_id;


-- CONSULTA 2: Productos con stock bajo

SELECT
    nombre,
    stock
FROM productos
WHERE stock <= 10
ORDER BY stock ASC;


-- CONSULTA 3: Pedidos y nombres de clientes

SELECT
    pe.pedido_id,
    cl.nombre AS cliente,
    pe.fecha,
    pe.estado
FROM pedidos pe
INNER JOIN clientes cl
    ON pe.cliente_id = cl.cliente_id;


-- CONSULTA 4: Total economico de cada pedido

SELECT
    pe.pedido_id,
    cl.nombre AS cliente,
    SUM(dp.cantidad * dp.precio_unitario) AS total_pedido
FROM pedidos pe
INNER JOIN clientes cl
    ON pe.cliente_id = cl.cliente_id
INNER JOIN detalle_pedido dp
    ON pe.pedido_id = dp.pedido_id
GROUP BY pe.pedido_id, cl.nombre;


-- CONSULTA 5: Productos mas vendidos

SELECT
    p.nombre AS producto,
    SUM(dp.cantidad) AS unidades_vendidas
FROM productos p
INNER JOIN detalle_pedido dp
    ON p.producto_id = dp.producto_id
GROUP BY p.producto_id, p.nombre
ORDER BY unidades_vendidas DESC;
