CREATE TABLE categorias (
    categoria_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200)
);

CREATE TABLE productos (
    producto_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    categoria_id INTEGER NOT NULL,
    FOREIGN KEY (categoria_id)
        REFERENCES categorias(categoria_id)
);

CREATE TABLE clientes (
    cliente_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE pedidos (
    pedido_id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER NOT NULL,
    fecha DATE NOT NULL,
    estado VARCHAR(30) NOT NULL DEFAULT 'Pendiente',
    FOREIGN KEY (cliente_id)
        REFERENCES clientes(cliente_id)
);

CREATE TABLE detalle_pedidocategoria (
    detalle_id INTEGER PRIMARY KEY AUTOINCREMENT,
    pedido_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (pedido_id)
        REFERENCES pedidos(pedido_id),
    FOREIGN KEY (producto_id)
        REFERENCES productos(producto_id)
);