CREATE TABLE medico (
    id SERIAL PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    numero_licencia VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE paciente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(20),
    documento VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE cita (
    id SERIAL PRIMARY KEY,
    medico_id INT REFERENCES medico(id),
    paciente_id INT REFERENCES paciente(id),
    fecha_hora TIMESTAMP NOT NULL,
    motivo TEXT,
    estado VARCHAR(20) NOT NULL
);
