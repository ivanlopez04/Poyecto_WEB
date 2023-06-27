use TuViajero
select * from Publicaciones
SELECT * FROM fotografias
SELECT * FROM Usuario


INSERT INTO Publicaciones (idUsuario, idfotografias, Descripcion, Lugar) VALUES
(1, 1, 'Un dia más de vida en este hermoso lugar. Saludos', 'Yucatan, Mexico')
SELECT * FROM fotografias
INSERT INTO fotografias (fotografia1) values ()
INSERT INTO Publicaciones(idUsuario, idfotografias, Descripcion, Lugar) values ()




SELECT top 1 idpublifoto FROM fotografias order by idpublifoto desc


--UNA CONSULTA DE TODA LA INFORMACION DE LA PUBLICACION

SELECT u.NombreUsuario,P.Descripcion, P.Lugar, F.fotografia1, F.fotografia2, F.fotografia3 FROM Publicaciones P INNER JOIN fotografias F ON F.idpublifoto = P.idfotografias INNER JOIN Usuario u ON P.idUsuario = u.idUsuario

SELECT count(*) FROM Publicaciones P INNER JOIN fotografias F ON F.idpublifoto = P.idfotografias 






