CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;

CREATE TABLE CATEGORIA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto VARCHAR(45),
    id_producto VARCHAR(45),
    precio DOUBLE
);

CREATE TABLE CLIENTE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_producto VARCHAR(45),
    metodo_pago DOUBLE,
    total_pago DOUBLE
);

CREATE TABLE empleado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_producto VARCHAR(45),
    id_cliente VARCHAR(45),
    metodo_pago DOUBLE
);

CREATE TABLE producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_categoria VARCHAR(45),
    subtotal VARCHAR(45),
    precio VARCHAR(45)
);

CREATE TABLE venta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_producto VARCHAR(45),
    id_empleado VARCHAR(45),
    id_cliente VARCHAR(45),
    subtotal VARCHAR(45),
    total_pago VARCHAR(45)
);

CREATE TABLE detalle_venta (
    factura INT PRIMARY KEY,
    id_producto VARCHAR(45),
    cantidad VARCHAR(45)
);

INSERT INTO CATEGORIA (id, producto, id_producto, precio) VALUES
(1, 'Bebidas', 'PROD01', 5000),
(2, 'Comidas', 'PROD02', 12000),
(3, 'Postres', 'PROD03', 8000),
(4, 'Snacks', 'PROD04', 6000);

INSERT INTO CLIENTE (id, id_producto, metodo_pago, total_pago) VALUES
(1, 'PROD01', 1, 15000),
(2, 'PROD03', 2, 24000),
(3, 'PROD05', 3, 18000),
(4, 'PROD07', 4, 12000);

INSERT INTO empleado (id, id_producto, id_cliente, metodo_pago) VALUES
(1, 'PROD01', 'CLI01', 1),
(2, 'PROD02', 'CLI02', 2),
(3, 'PROD03', 'CLI03', 3),
(4, 'PROD04', 'CLI04', 4);

INSERT INTO producto (id, id_categoria, subtotal, precio) VALUES
(1, 'CAT01', '5000', '5000'),
(2, 'CAT01', '6000', '6000'),
(3, 'CAT01', '7000', '7000'),
(4, 'CAT02', '10000', '10000'),
(5, 'CAT02', '12000', '12000'),
(6, 'CAT02', '15000', '15000'),
(7, 'CAT03', '7000', '7000'),
(8, 'CAT03', '8000', '8000'),
(9, 'CAT03', '9000', '9000'),
(10, 'CAT04', '5000', '5000'),
(11, 'CAT04', '6000', '6000'),
(12, 'CAT04', '7000', '7000');

INSERT INTO venta
(id, id_producto, id_empleado, id_cliente, subtotal, total_pago) VALUES
(1, 'PROD01', '1', '1', '5000', '5000'),
(2, 'PROD02', '2', '2', '6000', '6000'),
(3, 'PROD03', '3', '3', '7000', '7000'),
(4, 'PROD04', '4', '4', '10000', '10000'),
(5, 'PROD05', '1', '1', '12000', '12000'),
(6, 'PROD06', '2', '2', '15000', '15000'),
(7, 'PROD07', '3', '3', '7000', '7000'),
(8, 'PROD08', '4', '4', '8000', '8000'),
(9, 'PROD09', '1', '1', '9000', '9000'),
(10, 'PROD10', '2', '2', '5000', '5000'),
(11, 'PROD11', '3', '3', '6000', '6000'),
(12, 'PROD12', '4', '4', '7000', '7000');

INSERT INTO detalle_venta (factura, id_producto, cantidad) VALUES
(1, 'PROD01', '1'),
(2, 'PROD02', '2'),
(3, 'PROD03', '1'),
(4, 'PROD04', '2'),
(5, 'PROD05', '1'),
(6, 'PROD06', '1'),
(7, 'PROD07', '3'),
(8, 'PROD08', '1'),
(9, 'PROD09', '2'),
(10, 'PROD10', '1'),
(11, 'PROD11', '2'),
(12, 'PROD12', '1');
