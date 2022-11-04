CREATE DATABASE pilares;
USE pilares;
CREATE TABLE profesor(
   idprof INT PRIMARY KEY,
  nombre VARCHAR(25),
  carrera VARCHAR(25)
  );
  CREATE TABLE taller(
    idtaller INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20),
    cupo INT,
    area VARCHAR(20),
    idprof INT,
    FOREIGN KEY(idprof)REFERENCES profesor(idprof)
    );
    CREATE TABLE usuario(
      idusuario INT PRIMARY KEY,
      nombre INT,
      fecha_nac INT
      );
     CREATE TABLE asistir(
       idasistencia INT PRIMARY KEY,
       idtaller INT UNSIGNED,
       idusuario INT,
       fecha DATETIME,
       FOREIGN KEY(idtaller)REFERENCES taller(idtaller),
       FOREIGN KEY(idusuario)REFERENCES usuario(idusuario)
       );
    
    


SHOW TABLES;
DESCRIBE profesor;
DESCRIBE taller;
DESCRIBE usuario;
DESCRIBE asistir;
