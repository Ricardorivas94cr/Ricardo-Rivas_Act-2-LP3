create database Kamil

use Kamil

CREATE TABLE Empleados(
noEmpleado INT PRIMARY KEY IDENTITY(1,1),
nombre NVARCHAR(50) NOT NULL,
apellidoPaterno NVARCHAR(50) NOT NULL,
apellidoMaterno NVARCHAR(50) NOT NULL,
fechaNacimiento DATE NOT NULL,
RFC NVARCHAR(50) NOT NULL,
centroTrabajo INT,
idPuesto INT NOT NULL,
descripcionPuesto NVARCHAR (100) NOT NULL,
directivo BIT NOT NULL,
);

CREATE TABLE Puestos(
noPuesto INT PRIMARY KEY IDENTITY(1,1),
idPuesto INT NOT NULL,
descripcion NVARCHAR(50) NOT NULL,
);

CREATE TABLE CentroTrabajo(
noCentro INT PRIMARY KEY,
nombreCentro NVARCHAR(50) NOT NULL,
ciudad NVARCHAR(50) NOT NULL
);

CREATE TABLE Directivos(
noEmpleado INT,
numCentroSupervisa INT NOT NULL,
prestacion BIT,
);