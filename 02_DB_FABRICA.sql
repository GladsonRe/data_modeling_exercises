CREATE TABLE t_cep (
  idt_cep VARCHAR(8) NOT NULL,
  cidade VARCHAR(20) NULL,
  estado VARCHAR(2) NULL,
  PRIMARY KEY(idt_cep)
);

CREATE TABLE t_departamento (
  idt_departamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  setor VARCHAR(15) NULL,
  PRIMARY KEY(idt_departamento)
);

CREATE TABLE t_deposito (
  idt_deposito INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_idt_cep VARCHAR(8) NOT NULL,
  num_dep VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  PRIMARY KEY(idt_deposito),
  INDEX t_deposito_FKIndex1(t_cep_idt_cep)
);

CREATE TABLE t_fornecedor (
  idt_fornecedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_idt_cep VARCHAR(8) NOT NULL,
  num_sede VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  PRIMARY KEY(idt_fornecedor),
  INDEX t_fornecedor_FKIndex1(t_cep_idt_cep)
);

CREATE TABLE t_funcionario (
  idt_funcionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_departamento_idt_departamento INTEGER UNSIGNED NOT NULL,
  salario FLOAT NULL,
  telefone INTEGER UNSIGNED NULL,
  PRIMARY KEY(idt_funcionario),
  INDEX t_funcionario_FKIndex1(t_departamento_idt_departamento)
);

CREATE TABLE t_funcionario_has_t_projeto (
  t_funcionario_idt_funcionario INTEGER UNSIGNED NOT NULL,
  t_projeto_idt_projeto INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_funcionario_idt_funcionario, t_projeto_idt_projeto),
  INDEX t_funcionario_has_t_projeto_FKIndex1(t_funcionario_idt_funcionario),
  INDEX t_funcionario_has_t_projeto_FKIndex2(t_projeto_idt_projeto)
);

CREATE TABLE t_pecas (
  idt_pecas INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_deposito_idt_deposito INTEGER UNSIGNED NOT NULL,
  cor VARCHAR NULL,
  peso FLOAT NULL,
  PRIMARY KEY(idt_pecas),
  INDEX t_pecas_FKIndex1(t_deposito_idt_deposito)
);

CREATE TABLE t_pecas_has_t_fornecedor (
  t_pecas_idt_pecas INTEGER UNSIGNED NOT NULL,
  t_fornecedor_idt_fornecedor INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_pecas_idt_pecas, t_fornecedor_idt_fornecedor),
  INDEX t_pecas_has_t_fornecedor_FKIndex1(t_pecas_idt_pecas),
  INDEX t_pecas_has_t_fornecedor_FKIndex2(t_fornecedor_idt_fornecedor)
);

CREATE TABLE t_projeto (
  idt_projeto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  vl_orcamento FLOAT NULL,
  dt_inicio DATETIME NULL,
  dt_fim DATETIME NULL,
  PRIMARY KEY(idt_projeto)
);

CREATE TABLE t_projeto_has_t_fornecedor (
  t_projeto_idt_projeto INTEGER UNSIGNED NOT NULL,
  t_fornecedor_idt_fornecedor INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_projeto_idt_projeto, t_fornecedor_idt_fornecedor),
  INDEX t_projeto_has_t_fornecedor_FKIndex1(t_projeto_idt_projeto),
  INDEX t_projeto_has_t_fornecedor_FKIndex2(t_fornecedor_idt_fornecedor)
);

CREATE TABLE t_projeto_has_t_pecas (
  t_projeto_idt_projeto INTEGER UNSIGNED NOT NULL,
  t_pecas_idt_pecas INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_projeto_idt_projeto, t_pecas_idt_pecas),
  INDEX t_projeto_has_t_pecas_FKIndex1(t_projeto_idt_projeto),
  INDEX t_projeto_has_t_pecas_FKIndex2(t_pecas_idt_pecas)
);


