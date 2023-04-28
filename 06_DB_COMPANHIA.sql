CREATE TABLE t_departamentos (
  id_departamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_departamento VARCHAR NULL,
  PRIMARY KEY(id_departamento)
);

CREATE TABLE t_dependentes (
  idt_dependente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_funcionarios_id_funcionario INTEGER UNSIGNED NOT NULL,
  nome VARCHAR NULL,
  sexo VARCHAR(1) NULL,
  dt_nascimento DATE NULL,
  grau VARCHAR NULL,
  PRIMARY KEY(idt_dependente),
  INDEX t_dependentes_FKIndex1(t_funcionarios_id_funcionario)
);

CREATE TABLE t_funcionarios (
  id_funcionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_funcionarios_id_funcionario INTEGER UNSIGNED NULL,
  t_departamentos_id_departamento INTEGER UNSIGNED NOT NULL,
  tipo_funcionario VARCHAR NULL,
  endereco VARCHAR NULL,
  sexo VARCHAR(1) NULL,
  dt_nascimento DATE NULL,
  escolaridade VARCHAR NULL,
  cargo VARCHAR NULL,
  jornada_trabalho INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_funcionario),
  INDEX t_funcionarios_FKIndex1(t_departamentos_id_departamento),
  INDEX t_funcionarios_FKIndex2(t_funcionarios_id_funcionario)
);

CREATE TABLE t_projetos (
  id_projeto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_departamentos_id_departamento INTEGER UNSIGNED NOT NULL,
  nome_projeto VARCHAR NULL,
  dt_inicio DATE NULL,
  dt_termino DATE NULL,
  PRIMARY KEY(id_projeto),
  INDEX t_projetos_FKIndex1(t_departamentos_id_departamento)
);

CREATE TABLE t_projetos_has_t_funcionarios (
  t_projetos_id_projeto INTEGER UNSIGNED NOT NULL,
  t_funcionarios_id_funcionario INTEGER UNSIGNED NOT NULL,
  horas_trabalhadas INTEGER UNSIGNED NULL,
  PRIMARY KEY(t_projetos_id_projeto, t_funcionarios_id_funcionario),
  INDEX t_projetos_has_t_funcionarios_FKIndex1(t_projetos_id_projeto),
  INDEX t_projetos_has_t_funcionarios_FKIndex2(t_funcionarios_id_funcionario)
);


