Use MASTER
DROP TuViajero
Create Database TuViajero
use TuViajero


BEGIN TRAN
DROP TABLE Persona
CREATE TABLE Persona(
	idPersona INT IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Ap_Paterno VARCHAR(50) NOT NULL,
	Ap_Materno VARCHAR(50) NOT NULL,
	Telefono BIGINT NOT NULL,
	Correo NVARCHAR(20) NOT NULL,
	Nacimiento DATE NOT NULL,
	Sexo BIT NOT NULL,
	CONSTRAINT PK_Persona PRIMARY KEY CLUSTERED (IdPersona)
)

CREATE TABLE Usuario(
	idUsuario INT IDENTITY(1,1) NOT NULL,
	idPersona INT NOT NULL,
	NombreUsuario varchar(20) NOT NULL,
	Estatus BIT NOT NULL,
	Nivel INT NOT NULL,--Califiquela confianza lealtad del usuario
	CONSTRAINT PK_Usuario PRIMARY KEY CLUSTERED(idUsuario),
	CONSTRAINT FK_Usuario_Persona FOREIGN KEY(idPersona) REFERENCES Persona (idPersona)
	ON DELETE CASCADE ON UPDATE CASCADE
)
DROP TABLE Publicaciones
CREATE TABLE Publicaciones(
	idPublicacion INT IDENTITY(1,1) NOT NULL,
	idUsuario INT NOT NULL,
	idfotografias INT,--AQUI SE REPRESENTA LA IMAGEN QUE SE PUBLICA
	Descripcion VARCHAR(100) NOT NULL,
	Lugar VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Publicacion PRIMARY KEY CLUSTERED(idPublicacion),
	CONSTRAINT FK_Publicaciones_Usuario FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario)
	ON DELETE CASCADE ON UPDATE CASCADE
)
use TuViajero
drop table fotografias
CREATE TABLE fotografias(
	idpublifoto INT IDENTITY(1,1) NOT NULL,
	fotografia1 varchar(MAX),
	fotografia2 varchar(MAX),
	fotografia3 varchar(MAX)
	CONSTRAINT PK_Fotografia PRIMARY KEY(idpublifoto),
)

CREATE TABLE Comercios(
	idComercio INT IDENTITY (1,1) NOT NULL,
	idPersona INT NOT NULL,
	idDireccion INT NOT NULL,
	NombreComercio varchar(50) NOT NULL,
	RFC VARCHAR(13) NOT NULL,
	idServicios INT NOT NULL,--Permite el registro de los destinos a los que se ofrece el servicio
	Calificacion INT NULL,
	CONSTRAINT PK_Comercios PRIMARY KEY CLUSTERED (idComercio),
	CONSTRAINT FK_Comercios_Persona FOREIGN KEY(idPersona) REFERENCES Persona (idPersona)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Comercios_Direccion FOREIGN KEY(idDireccion) REFERENCES Direccion (idDireccion)
	ON DELETE CASCADE ON UPDATE CASCADE
)
--tABLA DIRECCIO SOLO APLICA PARA LOS COMERCIOS POR MOTIVOS DE SEGURIDAD
--Y PARA CUESTIONES INFORMATIVAS
CREATE TABLE Direccion(
	idDireccion int IDENTITY(1,1) NOT NULL,
	calle varchar(50) NOT NULL,
	numero varchar(10) NOT NULL,
	colonia varchar(50) NOT NULL,
	codigoPostal varchar(5) NOT NULL,
	CONSTRAINT PK_Direccion PRIMARY KEY CLUSTERED (idDireccion)
)

CREATE TABLE Servicios(
	idServicio INT IDENTITY (1,1) NOT NULL,
	idComercio INT NOT NULL,
	Destino VARCHAR(MAX) NOT NULL,
	Paquetes VARCHAR(MAX) NOT NULL,
	Descripcion VARCHAR(MAX) NOT NULL,
	MetodosPago VARCHAR(MAX) NOT NULL,
	ProxFechas Date NOT NULL,
	Banner VARBINARY(MAX),
	CONSTRAINT PK_Servicios PRIMARY KEY CLUSTERED (idServicio),
	CONSTRAINT FK_Servicios_Comercio FOREIGN KEY(idComercio) REFERENCES Comercios (idComercio)
	ON DELETE CASCADE ON UPDATE CASCADE
)


ROLLBACK TRAN
