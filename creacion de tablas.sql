create database Ejercicio_venta_productos_tecnologicos
use ejercicio
go 

CREATE TABLE CLIENTE (
    IdCliente INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(80) NOT NULL,
    DNI CHAR(8) UNIQUE NOT NULL,
    Correo VARCHAR(100) NULL,
    Telefono VARCHAR(15) NULL
);
CREATE TABLE PRODUCTO (
    IdProducto INT PRIMARY KEY IDENTITY(1,1),
    NombreProducto VARCHAR(100) NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL DEFAULT 0
);
CREATE TABLE VENTA (
    IdVenta INT PRIMARY KEY IDENTITY(1,1),
    IdCliente INT NOT NULL,
    FechaVenta DATE NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    EstadoVenta VARCHAR(20) NOT NULL,
    CONSTRAINT FK_VENTA_CLIENTE FOREIGN KEY (IdCliente) 
        REFERENCES CLIENTE(IdCliente)
);
CREATE TABLE DETALLE_VENTA (
    IdDetalle INT PRIMARY KEY IDENTITY(1,1),
    IdVenta INT NOT NULL,
    IdProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_DETALLE_VENTA FOREIGN KEY (IdVenta) 
        REFERENCES VENTA(IdVenta),
    CONSTRAINT FK_DETALLE_PRODUCTO FOREIGN KEY (IdProducto) 
        REFERENCES PRODUCTO(IdProducto)
);