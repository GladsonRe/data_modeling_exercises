CREATE TABLE t_agencia (
  id_agencia INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  tipo_logradouro VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  numero_logradouro VARCHAR NULL,
  PRIMARY KEY(id_agencia),
  INDEX t_agencia_FKIndex1(t_cep_cep)
);

CREATE TABLE t_cep (
  cep VARCHAR(8) NOT NULL,
  cidade VARCHAR NULL,
  estado VARCHAR(2) NULL,
  PRIMARY KEY(cep)
);

CREATE TABLE t_cliente (
  id_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  nome VARCHAR NULL,
  registro_geral VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  numero_logradouro VARCHAR NULL,
  PRIMARY KEY(id_cliente),
  INDEX t_cliente_FKIndex1(t_cep_cep)
);

CREATE TABLE t_conta (
  id_conta INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cliente_id_cliente INTEGER UNSIGNED NOT NULL,
  t_agencia_id_agencia INTEGER UNSIGNED NOT NULL,
  saldo FLOAT NULL,
  status_conta VARCHAR NULL,
  PRIMARY KEY(id_conta),
  INDEX t_conta_FKIndex1(t_agencia_id_agencia),
  INDEX t_conta_FKIndex2(t_cliente_id_cliente)
);

CREATE TABLE t_funcioario (
  id_funcionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  nome VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  numero_logradouro VARCHAR NULL,
  salario FLOAT NULL,
  PRIMARY KEY(id_funcionario),
  INDEX t_funcioario_FKIndex1(t_cep_cep)
);

CREATE TABLE t_transacao (
  id_transacao INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_conta_id_conta INTEGER UNSIGNED NOT NULL,
  dt_transacao DATETIME NULL,
  valor_transacao FLOAT NULL,
  PRIMARY KEY(id_transacao),
  INDEX t_transacao_FKIndex1(t_conta_id_conta)
);


