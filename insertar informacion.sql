INSERT INTO categorias (nombre, descripcion) VALUES
('Computacion', 'Equipos y accesorios informaticos'),
('Electronica', 'Dispositivos electronicos'),
('Accesorios', 'Accesorios para oficina y tecnologia');

INSERT INTO productos
(nombre, precio, stock, categoria_id) VALUES
('Laptop Lenovo', 12500.00, 15, 1),
('Teclado Logitech', 350.00, 8, 3),
('Mouse Inalambrico', 250.00, 30, 3),
('Monitor Samsung', 3200.00, 12, 2),
('Audifonos Bluetooth', 850.00, 5, 2),
('Memoria USB 64GB', 180.00, 40, 3);

INSERT INTO clientes (nombre, correo, telefono) VALUES
('Carlos Ramirez', 'carlos@email.com', '6671000001'),
('Maria Lopez', 'maria@email.com', '6671000002'),
('Jose Hernandez', 'jose@email.com', '6671000003');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-11-18', 'Entregado'),
(2, '2026-11-19', 'Pendiente'),
(3, '2026-11-20', 'Entregado');

INSERT INTO detalle_pedido
(pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 12500.00),
(1, 2, 2, 350.00),
(2, 3, 3, 250.00),
(2, 4, 1, 3200.00),
(3, 5, 2, 850.00),
(3, 6, 4, 180.00);