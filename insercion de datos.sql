use Ejercicio_venta_productos_tecnologicos
go

INSERT INTO CLIENTE (Nombre, DNI, Correo, Telefono) 
VALUES
('Juan García', '12345678', 'juan.garcia@email.com', '987654321'),
('María López', '87654321', 'maria.lopez@email.com', '987654322'),
('Carlos Rodríguez', '11111111', 'carlos.r@email.com', '987654323'),
('Ana Martínez', '22222222', 'ana.martinez@email.com', '987654324'),
('Luis Fernández', '33333333', 'luis.f@email.com', '987654325'),
('Pedro Sánchez', '44444444', 'pedro.sanchez@email.com', '987654326'),
('Laura González', '55555555', 'laura.gonzalez@email.com', '987654327'),
('Miguel Pérez', '66666666', 'miguel.perez@email.com', '987654328'),
('Sofia Díaz', '77777777', 'sofia.diaz@email.com', '987654329'),
('Roberto Torres', '88888888', 'roberto.torres@email.com', '987654330');

INSERT INTO PRODUCTO (NombreProducto, Marca, Precio, Stock) 
VALUES
('Laptop ASUS', 'ASUS', 1200.00, 15),
('Mouse Logitech', 'Logitech', 45.50, 50),
('Teclado Mecánico', 'Corsair', 120.00, 25),
('Monitor Dell', 'Dell', 350.00, 8),
('Auriculares Sony', 'Sony', 250.00, 20),
('Cable USB-C', 'Belkin', 25.99, 100),
('Webcam HD', 'Razer', 80.00, 12),
('Hub USB', 'Anker', 35.75, 40),
('SSD Samsung', 'Samsung', 150.00, 18),
('Mousepad Gamer', 'SteelSeries', 55.00, 35);

INSERT INTO VENTA (IdCliente, FechaVenta, Total, EstadoVenta) 
VALUES
(1, '2024-01-10', 1245.50, 'Completada'),
(2, '2024-01-12', 600.00, 'Completada'),
(3, '2024-01-15', 200.99, 'Pendiente'),
(4, '2024-01-18', 530.75, 'Completada'),
(1, '2024-01-20', 580.00, 'Completada'),
(5, '2024-01-22', 1500.00, 'Completada'),
(6, '2024-01-25', 350.00, 'Pendiente'),
(7, '2024-01-28', 920.50, 'Completada'),
(8, '2024-02-01', 405.99, 'Completada'),
(9, '2024-02-05', 750.00, 'Completada');

INSERT INTO DETALLE_VENTA (IdVenta, IdProducto, Cantidad, PrecioUnitario) 
VALUES
(1, 1, 1, 1200.00),
(1, 2, 1, 45.50),
(2, 4, 1, 350.00),
(2, 5, 1, 250.00),
(3, 9, 1, 150.00),
(3, 6, 2, 25.99),
(4, 3, 1, 120.00),
(4, 8, 1, 35.75),
(4, 7, 5, 80.00),
(5, 5, 2, 250.00),
(5, 2, 1, 45.50),
(6, 1, 1, 1200.00),
(6, 10, 5, 60.00),
(7, 4, 1, 350.00),
(8, 3, 2, 120.00),
(8, 7, 3, 80.00),
(8, 2, 2, 45.50),
(9, 6, 5, 25.99),
(9, 8, 2, 35.75),
(10, 5, 1, 250.00),
(10, 10, 2, 55.00),
(10, 9, 1, 150.00);