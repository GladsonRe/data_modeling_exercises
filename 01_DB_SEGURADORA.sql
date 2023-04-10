CREATE TABLE t_acidente (
  idacidente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  date DATETIME NULL,
  nome_logradouro VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  PRIMARY KEY(idacidente),
  INDEX t_acidente_FKIndex1(t_cep_cep)
);

CREATE TABLE t_apolice (
  idapolice INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cliente_idcliente INTEGER UNSIGNED NOT NULL,
  marca_carro VARCHAR(20) NULL,
  placa_carro VARCHAR(7) NULL,
  valor_apolice FLOAT NULL,
  PRIMARY KEY(idapolice),
  INDEX apolice_FKIndex1(t_cliente_idcliente)
);

CREATE TABLE t_apolice_has_acidente (
  t_apolice_idapolice INTEGER UNSIGNED NOT NULL,
  t_acidente_idacidente INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_apolice_idapolice, t_acidente_idacidente),
  INDEX apolice_has_acidente_FKIndex1(t_apolice_idapolice),
  INDEX apolice_has_acidente_FKIndex2(t_acidente_idacidente)
);

CREATE TABLE t_cep (
  cep VARCHAR(8) NOT NULL,
  cidade VARCHAR(20) NULL,
  estado VARCHAR(2) NULL,
  PRIMARY KEY(cep)
);

CREATE TABLE t_cliente (
  idcliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  nome VARCHAR(40) NULL,
  tipo_logradouro VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  num_residencia INTEGER UNSIGNED NULL,
  comp_residencia VARCHAR NOT NULL,
  PRIMARY KEY(idcliente),
  INDEX t_cliente_FKIndex1(t_cep_cep)
);


