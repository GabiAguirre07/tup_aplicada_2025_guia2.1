# Ejercicio 2 – Eliminación en cascada con relación directa

Este ejercicio crea una base de datos con las tablas `Cursos` y `Alumnos`.  
La tabla `Alumnos` tiene una clave foránea `Id_Curso` hacia `Cursos`.  
Al eliminar el curso **Matemática**, se eliminan automáticamente todos los alumnos inscriptos en ese curso gracias a la restricción **ON DELETE CASCADE**.

## Archivos
- `1_creando_base_de_prueba.sql`: Crea la base de datos y carga datos de prueba.
- `2_eliminar_matematica.sql`: Elimina el curso Matemática y muestra el efecto en los alumnos.
