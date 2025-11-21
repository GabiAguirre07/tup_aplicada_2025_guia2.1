USE Guia2_1_Ejercicio3_DB

GO

SELECT a.Nombre AS Nombre,
       a.Calle AS Calle,
       a.Numero AS Numero,
       l.Nombre AS Localidad
FROM Alumnos a
LEFT JOIN Localidades l
ON l.Id = a.Id_Localidad
ORDER BY a.Nombre DESC;