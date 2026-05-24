CREATE TABLE ciudad (
	ciudad_id SERIAL PRIMARY KEY,
	nombre_ciudad VARCHAR(100) NOT NULL,
	codigo_postal INT NOT NULL
);

CREATE TABLE usuario(
	usuario_id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	tipo_usuario VARCHAR(100) NOT NULL,
	condicion_especial VARCHAR(100) NOT NULL,
	ciudad_id INT NOT NULL,

	FOREIGN KEY (ciudad_id)
		REFERENCES ciudad(ciudad_id)
	
);

CREATE TABLE empleado(
	empleado_id SERIAL PRIMARY KEY,
	usuario_id INT NOT NULL,
	cargo VARCHAR(100) NOT NULL,
	departamento VARCHAR(100) NOT NULL,

	FOREIGN KEY (usuario_id)
		REFERENCES usuario(usuario_id)
);

CREATE TABLE servicio(
	servicio_id SERIAL PRIMARY KEY,
	nombre VARCHAR (100) NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	estado VARCHAR(100) NOT NULL
);

CREATE TABLE turno (
	turno_id SERIAL PRIMARY KEY, 
	usuario_id INT NOT NULL,
	servicio_id INT NOT NULL,
	empleado_id INT NOT NULL,
	fecha DATE NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,
	estado VARCHAR(100) NOT NULL,

	FOREIGN KEY (usuario_id)
		REFERENCES usuario (usuario_id),

	FOREIGN KEY (servicio_id)
		REFERENCES servicio (servicio_id),

	FOREIGN KEY (empleado_id)
		REFERENCES empleado (empleado_id)
);

CREATE TABLE medio_notificacion(
	medio_id SERIAL PRIMARY KEY,
	nombre_medio VARCHAR(100) NOT NULL
);

CREATE TABLE notificacion(
	notificacion_id SERIAL PRIMARY KEY,
	usuario_id INT NOT NULL,
	medio_id INT NOT NULL,
	mensaje VARCHAR(100) NOT NULL,
	fecha_envio DATE NOT NULL,
	estado VARCHAR(100)NOT NULL,

	FOREIGN KEY (usuario_id)
		REFERENCES usuario (usuario_id),

	FOREIGN KEY (medio_id)
		REFERENCES medio_notificacion(medio_id)
	
);
