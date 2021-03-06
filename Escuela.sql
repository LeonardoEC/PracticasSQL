CREATE DATABASE ESCUELA;
USE ESCUELA;

-- TABLA CARRERA --
CREATE TABLE CARRERA(
CLAVE_C INT,
NOM_C VARCHAR(50),
DURAC_C FLOAT,
CONSTRAINT PK_CC PRIMARY KEY(CLAVE_C)
);

-- TABLA MATERIA --
CREATE TABLE MATERIA(
CLAVE_M INT,
NOM_M VARCHAR(50),
CRED_M FLOAT,
CONSTRAINT PK_CM PRIMARY KEY(CLAVE_M)
);

-- TABLA PROFESOR --

CREATE TABLE PROFESOR(
CLAVE_P INT,
NOM_P VARCHAR(150),
DIR_P VARCHAR(200),
TEL_P BIGINT,
HOR_P DATETIME,
CONSTRAINT PK_CP PRIMARY KEY(CLAVE_P)
);

/** TABLA ALUMNO (CON UNA CLAVE FORANEA) */
CREATE TABLE ALUMNO(
MAT_ALU INT,
NOM_ALU VARCHAR(150),
EDAD_ALU INT,
SEM_ALU INT,
GEN_ALU VARCHAR(10),
CLAVE_C1 INT,
CONSTRAINT PK_CALU PRIMARY KEY(MAT_ALU),
CONSTRAINT FK_FC1 FOREIGN KEY(CLAVE_C1) REFERENCES CARRERA(CLAVE_C)
);

-- ALUMNO-PROFESOR --
CREATE TABLE ALU_PRO(
MAT_ALU1 INT,
CLAVE_P1 INT,
CONSTRAINT FK_FALU1 FOREIGN KEY(MAT_ALU1) REFERENCES ALUMNO(MAT_ALU),
CONSTRAINT FK_FP1 FOREIGN KEY(CLAVE_P1) REFERENCES PROFESOR(CLAVE_P)
);

-- MATERIA-ALUMNO --
CREATE TABLE MAT_ALU(
CLAVE_M1 INT,
MAT_ALU2 INT,
CONSTRAINT FK_FM1 FOREIGN KEY(CLAVE_M1) REFERENCES MATERIA(CLAVE_M),
CONSTRAINT FK_FALU2 FOREIGN KEY(MAT_ALU2) REFERENCES ALUMNO(MAT_ALU)
);

-- MATERIA-PROFESOR--
CREATE TABLE MAT_PRO(
CLAVE_M2 INT,
CLAVE_P2 INT,
CONSTRAINT FK_FM2 FOREIGN KEY(CLAVE_M2) REFERENCES MATERIA(CLAVE_M),
CONSTRAINT FK_FP2 FOREIGN KEY(CLAVE_P2) REFERENCES PROFESOR(CLAVE_P)
)



