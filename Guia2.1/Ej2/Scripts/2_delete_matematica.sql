USE Guia2_1_Ejercicio2_DB;

GO

SELECT a.Id AS Alumno_Id,
       a.Nombre AS Nombre_Alumno,
       a.Id_Curso as Id_Curso,
       c.Nombre as Nombre_Curso  
FROM Alumnos a
LEFT JOIN Cursos c ON c.Id = a.Id_Curso
ORDER BY c.Nombre DESC;

GO

DELETE FROM Cursos
WHERE Id = 1;

GO

SELECT a.Id AS Alumno_Id,
       a.Nombre AS Nombre_Alumno,
       a.Id_Curso as Id_Curso,
       c.Nombre as Nombre_Curso  
FROM Alumnos a
LEFT JOIN Cursos c ON c.Id = a.Id_Curso
ORDER BY c.Nombre DESC;