CREATE TABLE t_alunos (
  id_aluno INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_orientadores_id_orientador INTEGER UNSIGNED NOT NULL,
  tipo_aluno VARCHAR NULL,
  nome_aluno VARCHAR NULL,
  dt_nascimento DATE NULL,
  cpf VARCHAR(11) NULL,
  endereco VARCHAR NULL,
  telefone VARCHAR NULL,
  ano_ingresso DATE NULL,
  formacao_escolar VARCHAR NULL,
  PRIMARY KEY(id_aluno),
  INDEX t_alunos_FKIndex1(t_orientadores_id_orientador)
);

CREATE TABLE t_alunos_has_t_disciplinas (
  t_alunos_id_aluno INTEGER UNSIGNED NOT NULL,
  t_disciplinas_id_disciplina INTEGER UNSIGNED NOT NULL,
  status_disciplina VARCHAR NULL,
  frequencia INTEGER UNSIGNED NULL,
  nota FLOAT NULL,
  PRIMARY KEY(t_alunos_id_aluno, t_disciplinas_id_disciplina),
  INDEX t_alunos_has_t_disciplinas_FKIndex1(t_alunos_id_aluno),
  INDEX t_alunos_has_t_disciplinas_FKIndex2(t_disciplinas_id_disciplina)
);

CREATE TABLE t_departamentos (
  id_departamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_departamento VARCHAR NULL,
  dt_criacao DATE NULL,
  endereco VARCHAR NULL,
  PRIMARY KEY(id_departamento)
);

CREATE TABLE t_disciplinas (
  id_disciplina INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_orientadores_id_orientador INTEGER UNSIGNED NOT NULL,
  t_departamentos_id_departamento INTEGER UNSIGNED NOT NULL,
  nome_disciplina VARCHAR NULL,
  ementa_disciplina VARCHAR NULL,
  n_creditos INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_disciplina),
  INDEX t_disciplinas_FKIndex1(t_departamentos_id_departamento),
  INDEX t_disciplinas_FKIndex2(t_orientadores_id_orientador)
);

CREATE TABLE t_disciplinas_has_t_disciplinas (
  t_disciplinas_id_disciplina INTEGER UNSIGNED NOT NULL,
  t_disciplinas_id_disciplinas_requisito INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_disciplinas_id_disciplina, t_disciplinas_id_disciplinas_requisito),
  INDEX t_disciplinas_has_t_disciplinas_FKIndex1(t_disciplinas_id_disciplina),
  INDEX t_disciplinas_has_t_disciplinas_FKIndex2(t_disciplinas_id_disciplina)
);

CREATE TABLE t_orientadores (
  id_orientador INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_departamentos_id_departamento INTEGER UNSIGNED NOT NULL,
  nome_orientador VARCHAR NULL,
  PRIMARY KEY(id_orientador),
  INDEX t_orientadores_FKIndex1(t_departamentos_id_departamento)
);


