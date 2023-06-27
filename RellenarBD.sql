begin tran
use TuViajero
select * from Persona
--Insertamos la informacion de un usuario
sp_help Persona
INSERT INTO Persona (Nombre, Ap_Paterno, Ap_Materno, Telefono, Correo, Nacimiento, Sexo) VALUES
('Eduardo Israel', 'Santiago', 'Tellez', 5511223355, 'correo@prueba.com', '2002-01-08', 0)--0 significa hombre, 1 significa mujer
select * from Persona

sp_help Usuario
INSERT INTO Usuario (idPersona, NombreUsuario, Estatus, Nivel) VALUES
(1, 'EduardoSant', 1, 0)--el 1 es activo y 0 es inactivo // 0 es el nivel de usuario

--Aqui se inserta la informacion de un comercio con la logica que la empresa es una persona moral.
--si es empresa indicar desde cuando se fundo o iniciaron sus ejercicios fiscales
sp_help Persona
INSERT INTO Persona (Nombre, Ap_Paterno, Ap_Materno, Telefono, Correo, Nacimiento, Sexo) VALUES
('Viaje Martinez', ' ', ' ', 5566449922, 'correo@martinez.com', '2022-08-25', 3)--0 significa hombre, 1 significa mujer, 3 empresa
select * from Persona
--Al ser empresas tienen que registrar mas informacion


sp_help Usuario
INSERT INTO Usuario (idPersona, NombreUsuario, Estatus, Nivel) VALUES
(6, 'ViajesMartinez', 1, 2)--el numero 2 indicara que el usuario es una empresa

sp_help Direccion
--En este caso sera una direccion fiscal que servira para efectos legales
INSERT INTO Direccion (calle, numero, colonia, codigoPostal) VALUES
('Miguel Angel', '103', 'Cuahutemoc', '51234')
select * 
sp_help Servicios
INSERT INTO Servicios (idComercio, Destino, Paquetes, Descripcion, MetodosPago, ProxFechas) VALUES
(2, 'Yucatan', 'Viaje de completo, desayuno incluido, actividades recreativas', 'Viajes Martinez te ofrece uno de las mejores experiencias en viajes', 'Efectivo contra servicio', '2023-07-01')

sp_help Comercios
SELECT* FROM Comercios
INSERT INTO Comercios (idPersona, idDireccion, NombreComercio, RFC, idServicios) VALUES
(6, 1, 'ViajesMartinez', 'ALGODH02145', 1)
select * from Persona


--Agregar publicaciones a nuestra base de datos.

sp_help Publicaciones
select * from Publicaciones
INSERT INTO Publicaciones (idUsuario, idfotografias, Descripcion, Lugar) VALUES
(1, 1, 'Esta es solo una prueba de la descipcion que se le puede dar a una publicacion', 'Yucatan, México')
sp_help fotografias

select * from fotografias
INSERT INTO fotografias (fotografia1, fotografia2, fotografia3) VALUES
(
'img\Yuca1.jpeg', 
'img\Yuca2.jpeg', 
'img\Yuca3.jpeg'
)

INSERT INTO fotografias (fotografia1, fotografia2, fotografia3) VALUES
(
'img\gua1.jpeg', 
'img\gua2.jpeg', 
'img\gua3.jpeg'
)
INSERT INTO fotografias (fotografia1, fotografia2) VALUES
(
'img\Colombia1.jpeg', 
'img\Colombia2.jpeg'
)




rollback tran