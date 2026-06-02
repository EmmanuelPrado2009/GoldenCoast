CREATE DATABASE digiturno;
USE digiturno;

CREATE TABLE Administracion(
    id_Administracion INT PRIMARY KEY AUTO_INCREMENT,
    nombre_Administracion VARCHAR(50),
    usuario_Administracion VARCHAR(50),
    contraseña_Administracion VARCHAR(50)
);

CREATE TABLE Cliente(
    id_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_Cliente VARCHAR(50),
    apellido_Cliente VARCHAR(50),
    documento_Cliente VARCHAR(50),
    telefono_Cliente VARCHAR(50)
);

CREATE TABLE Especialista(
    id_Especialista INT PRIMARY KEY AUTO_INCREMENT,
    nombre_Especialista VARCHAR(50),
    especialidad_Especialista VARCHAR(50),
    telefono_Especialista VARCHAR(50)
);

CREATE TABLE Servicio(
    id_Servicio INT PRIMARY KEY AUTO_INCREMENT,
    nombre_Servicio VARCHAR(50),
    descripcion_Servicio VARCHAR(50),
    costo_Servicio VARCHAR(50)
);

CREATE TABLE Turno(
    id_Turno INT PRIMARY KEY AUTO_INCREMENT,
    fecha_Turno DATE,
    hora_Turno TIME,
    telefono_Turno VARCHAR(50),
    id_Administracion INT,
    id_Cliente INT,

    FOREIGN KEY (id_Administracion)
        REFERENCES Administracion(id_Administracion),

    FOREIGN KEY (id_Cliente)
        REFERENCES Cliente(id_Cliente)
);

CREATE TABLE Cita(
    id_Cita INT PRIMARY KEY AUTO_INCREMENT,
    fecha_Cita DATE,
    hora_Cita TIME,
    motivo_Cita VARCHAR(50),
    estado_Cita VARCHAR(50),
    id_Turno INT,
    id_Especialista INT,
    id_Servicio INT,

    FOREIGN KEY (id_Turno)
        REFERENCES Turno(id_Turno),

    FOREIGN KEY (id_Especialista)
        REFERENCES Especialista(id_Especialista),

    FOREIGN KEY (id_Servicio)
        REFERENCES Servicio(id_Servicio)
);

CREATE TABLE Registro_medico(
    id_Registro_medico INT PRIMARY KEY AUTO_INCREMENT,
    observaciones_Registro_medico VARCHAR(50),
    diagnostico_Registro_medico VARCHAR(50),
    fecha_Registro_medico DATE,
    id_Cliente INT,
    id_Servicio INT,

    FOREIGN KEY (id_Cliente)
        REFERENCES Cliente(id_Cliente),

    FOREIGN KEY (id_Servicio)
        REFERENCES Servicio(id_Servicio)
);