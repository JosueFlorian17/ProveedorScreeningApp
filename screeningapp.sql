-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS proveedor_db;
USE proveedor_db;

-- Crear tabla de proveedores
CREATE TABLE IF NOT EXISTS proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    razon_social VARCHAR(255) NOT NULL,
    nombre_comercial VARCHAR(255),
    ruc CHAR(11) NOT NULL,
    telefono VARCHAR(20),
    correo_electronico VARCHAR(255),
    sitio_web VARCHAR(255),
    direccion VARCHAR(500),
    pais VARCHAR(100),
    facturacion_anual DECIMAL(18,2),
    fecha_ultima_edicion DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insertar datos iniciales
INSERT INTO proveedores (
    razon_social, nombre_comercial, ruc, telefono, correo_electronico, sitio_web, direccion, pais, facturacion_anual
)
VALUES 
('Inversiones Industriales S.A.', 'Industrias INISA', '20123456789', '+5112345678', 'contacto@inisa.pe', 'https://www.inisa.pe', 'Av. Industrial 456, Lima', 'Perú', 1250000.50),
('Soluciones Globales EIRL', 'Soluglob', '10456789012', '+51987654321', 'info@soluglob.com', 'http://www.soluglob.com', 'Calle Comercio 123, Arequipa', 'Perú', 830000.00),
('Tecnologías Avanzadas SAC', 'TecnoAvan', '20678901234', '+5111122334', 'ventas@tecnoavan.com', 'https://tecnoavan.com', 'Jr. Los Robles 567, Trujillo', 'Perú', 460000.75),
('Servicios Integrales SRL', NULL, '20543219876', '+5143217890', NULL, NULL, 'Av. Principal 345, Cusco', 'Perú', 295000.00),
('Distribuciones del Norte S.A.C.', 'DistribuNorte', '20987654321', '+51999888777', 'distribu@dnorte.com', 'http://www.dnorte.com', 'Av. Los Incas 678, Piura', 'Perú', 625000.00),
('Global Parts Ltda.', 'GPARTS', '20912345678', '+5723456789', 'contact@gparts.co', 'https://www.gparts.co', 'Carrera 45 #23-89, Bogotá', 'Colombia', 1530000.00),
('Importaciones Andinas S.A.', 'ImpAndes', '20876543210', '+5932345678', 'ventas@impandes.ec', 'http://www.impandes.ec', 'Av. América 456, Quito', 'Ecuador', 920000.00),
('Servicios Logísticos del Sur S.A.C.', NULL, '20654321987', '+51984321765', 'logistica@sur.com.pe', NULL, 'Av. La Marina 789, Tacna', 'Perú', 770000.00),
('ElectroSistemas S.A.', 'ElectroSys', '20111222333', '+5113344556', 'soporte@electrosys.com', 'http://electrosys.com', 'Av. Canadá 1010, Lima', 'Perú', 1120000.99),
('Consultores Internacionales EIRL', 'ConInter', '20999887766', '+51911112222', 'info@coninter.org', 'https://www.coninter.org', 'Av. Central 789, Huancayo', 'Perú', 390000.00);

-- Crear usuario con permisos a esta base de datos
DROP USER IF EXISTS 'api_user'@'localhost';
CREATE USER 'api_user'@'localhost' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON proveedor_db.* TO 'api_user'@'localhost';
FLUSH PRIVILEGES;

-- Ver proveedores registrados
SELECT id, razon_social, ruc FROM proveedores ORDER BY id;
