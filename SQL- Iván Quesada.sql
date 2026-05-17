-- ============================================
-- CREACIÓN DE BASE DE DATOS
-- ============================================

CREATE DATABASE clipo_inventario;

USE clipo_inventario;

-- ============================================
-- CREACIÓN DE TABLAS
-- ============================================

CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    usuario VARCHAR(50),
    contraseña VARCHAR(50),
    rol VARCHAR(20)
);

CREATE TABLE locales (
    id_local INT AUTO_INCREMENT PRIMARY KEY,
    nombre_local VARCHAR(50),
    direccion VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10,2),
    stock_minimo INT
);

CREATE TABLE stock (
    id_stock INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    id_local INT,
    cantidad INT,

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_local) REFERENCES locales(id_local)
);

CREATE TABLE compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    id_local INT,
    id_empleado INT,
    fecha_compra DATE,
    cantidad INT,
    costo_total DECIMAL(10,2),

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_local) REFERENCES locales(id_local),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    id_local INT,
    id_empleado INT,
    fecha_venta DATE,
    cantidad INT,
    total DECIMAL(10,2),

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_local) REFERENCES locales(id_local),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

CREATE TABLE transferencias (
    id_transferencia INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    id_local_origen INT,
    id_local_destino INT,
    id_empleado INT,
    fecha_transferencia DATE,
    cantidad INT,

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_local_origen) REFERENCES locales(id_local),
    FOREIGN KEY (id_local_destino) REFERENCES locales(id_local),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

-- ============================================
-- INSERCIÓN DE DATOS
-- ============================================

INSERT INTO empleados (nombre, apellido, usuario, contraseña, rol)
VALUES
('Juan', 'Perez', 'jperez', '1234', 'Empleado'),
('Maria', 'Gomez', 'mgomez', '1234', 'Encargado');

INSERT INTO locales (nombre_local, direccion, telefono)
VALUES
('Clipo Centro', 'San Martin 123', '3434000001'),
('Clipo Norte', 'Belgrano 456', '3434000002');

INSERT INTO productos (nombre, categoria, precio, stock_minimo)
VALUES
('Cuaderno A4', 'Libreria', 3500.00, 10),
('Lapicera Azul', 'Utiles', 1200.00, 20);

INSERT INTO stock (id_producto, id_local, cantidad)
VALUES
(1, 1, 50),
(2, 1, 100),
(1, 2, 30);

INSERT INTO compras (id_producto, id_local, id_empleado, fecha_compra, cantidad, costo_total)
VALUES
(1, 1, 2, '2026-05-17', 20, 70000.00);

INSERT INTO ventas (id_producto, id_local, id_empleado, fecha_venta, cantidad, total)
VALUES
(2, 1, 1, '2026-05-17', 5, 6000.00);

INSERT INTO transferencias (id_producto, id_local_origen, id_local_destino, id_empleado, fecha_transferencia, cantidad)
VALUES
(1, 1, 2, 2, '2026-05-17', 10);

-- ============================================
-- CONSULTAS PARA VISUALIZAR DATOS
-- ============================================

SELECT * FROM empleados;

SELECT * FROM locales;

SELECT * FROM productos;

SELECT * FROM stock;

SELECT * FROM compras;

SELECT * FROM ventas;

SELECT * FROM transferencias;

-- ============================================
-- BORRADO DE DATOS
-- ============================================

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE transferencias;
TRUNCATE TABLE ventas;
TRUNCATE TABLE compras;
TRUNCATE TABLE stock;
TRUNCATE TABLE productos;
TRUNCATE TABLE locales;
TRUNCATE TABLE empleados;

SET FOREIGN_KEY_CHECKS = 1;

