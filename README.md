# Proveedor Screening App

Aplicación web para registrar, listar y gestionar proveedores de manera sencilla y escalable. Este proyecto fue desarrollado como parte de un reto técnico orientado a la postulación de un rol backend en EY (Ernst & Young).

---

## Tecnologías utilizadas

- **Frontend:** React + TypeScript + Vite + Bootstrap  
- **Backend:** ASP.NET Core 7 (API REST)  
- **ORM:** Entity Framework Core (Pomelo para MySQL)  
- **Base de datos:** MySQL  
- **Cliente HTTP:** Fetch API  
- **Estilo:** Bootstrap 5

---
## Funcionalidades clave

- Listado dinámico de proveedores ordenados por última edición

- Integración de base de datos relacional MySQL

- Validaciones robustas en modelo de datos (RUC, email, longitud, etc.)

- Arquitectura basada en controladores (RESTful)

- Diseño responsive usando Bootstrap
---

## Base de Datos

La base de datos debe llamarse `proveedor_db`. A continuación, la secuencia para crearla:
```
CREATE DATABASE IF NOT EXISTS proveedor_db;

USE proveedor_db;

CREATE TABLE proveedores (
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
    fecha_ultima_edicion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```
Alternativamente, se puede usar la sentencia sql adjunta en el repositorio

---

## Frontend

En `src/ProveedorList.tsx`, se usa fetch para obtener los datos desde la API:

fetch('/api/proveedores')
    .then(res => res.json())
    .then(data => setProveedores(data))

Luego se muestran en una tabla con Bootstrap.

---

## Cómo ejecutar

### Backend

1. Abrir la carpeta `appscreeningproveedor.Server`
2. Ejecutar:

dotnet restore  
dotnet build  
dotnet run

### Frontend

1. Ir al directorio React (por ejemplo `ClientApp/`)
2. Ejecutar:

npm install  
npm run dev

---

## Contacto
Desarrollado por **Josué Florián**
  
Estudiante de Ingeniería Informática, apasionado por el desarrollo de software orientado a impacto real.
