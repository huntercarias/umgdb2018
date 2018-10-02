CREATE TABLE especialidades{
  id-especialidad   NUMBER(10) ,
  descriccion       VARCHAR2(30),
  caracteristicas   VARCHAR2(30),
  CONSTRAINT PK_ESPECIALIDADES PRIMARY KEY (id-especialidad)
  };

CREATE TABLE especi_tratamiento{
  id-especialidad   NUMBER(10),
  id-tratamiento    NUMBER(10),
  id-empleado       NUMBER(10),
  CONSTRAINT FK_ESPECI_TRATAMIENTO FOREIGN KEY  (id_tratamiento) REFERENCES TRATAMIENTO(id_tratamiento),
  CONSTRAINT FK_ESPECI_TRATAMIENTO FOREIGN KEY  (id_especialidad) REFERENCES ESPECIALIDAD(id_especialidad)
};

CREATE TABLE tratamientos{
  id-tratamiento     NUMBER(10),
  trata-descripcion  VARCHAR2(100),
  tiempo-tratamiento VARCHAR2(100),
  id-especialidades  VARCHAR
  id-medicamentos    NUMBER(10)
};

CREATE TABLE medicamentos{
  id-medicamentos    NUMBER(10),

}
