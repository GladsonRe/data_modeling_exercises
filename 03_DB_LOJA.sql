CREATE TABLE t_armazem (
  idt_armazem INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  num_armazem VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  PRIMARY KEY(idt_armazem),
  INDEX t_armazem_FKIndex1(t_cep_cep)
);

CREATE TABLE t_cep (
  cep VARCHAR(8) NOT NULL,
  cidade VARCHAR(20) NULL,
  estado VARCHAR(2) NULL,
  PRIMARY KEY(cep)
);

CREATE TABLE t_cliente (
  idt_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  t_vendedor_idt_vendedor INTEGER UNSIGNED NOT NULL,
  nome VARCHAR NULL,
  num_residencia VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  complemento INTEGER UNSIGNED NULL,
  limite_credito FLOAT NULL,
  faturamento_acumulado FLOAT NULL,
  PRIMARY KEY(idt_cliente),
  INDEX t_cliente_FKIndex1(t_vendedor_idt_vendedor),
  INDEX t_cliente_FKIndex2(t_cep_cep)
);

CREATE TABLE t_peca (
  idt_peca INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_armazem_idt_armazem INTEGER UNSIGNED NOT NULL,
  descricao VARCHAR NULL,
  preco_unitario FLOAT NULL,
  quantidade_disp INTEGER UNSIGNED NULL,
  PRIMARY KEY(idt_peca),
  INDEX t_peça_FKIndex1(t_armazem_idt_armazem)
);

CREATE TABLE t_pedido (
  idt_pedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_vendedor_idt_vendedor INTEGER UNSIGNED NOT NULL,
  t_cliente_idt_cliente INTEGER UNSIGNED NOT NULL,
  data_pedido DATETIME NULL,
  vl_pedido FLOAT NULL,
  PRIMARY KEY(idt_pedido),
  INDEX t_pedido_FKIndex1(t_cliente_idt_cliente),
  INDEX t_pedido_FKIndex2(t_vendedor_idt_vendedor)
);

CREATE TABLE t_pedido_has_t_peca (
  t_pedido_idt_pedido INTEGER UNSIGNED NOT NULL,
  t_peca_idt_peca INTEGER UNSIGNED NOT NULL,
  quantidade INTEGER UNSIGNED NULL,
  preco_venda FLOAT NULL,
  PRIMARY KEY(t_pedido_idt_pedido, t_peca_idt_peca),
  INDEX t_pedido_has_t_peça_FKIndex1(t_pedido_idt_pedido),
  INDEX t_pedido_has_t_peça_FKIndex2(t_peca_idt_peca)
);

CREATE TABLE t_vendedor (
  idt_vendedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cep_cep VARCHAR(8) NOT NULL,
  nome VARCHAR NULL,
  num_residencia VARCHAR NULL,
  nome_logradouro VARCHAR NULL,
  tipo_logradouro VARCHAR NULL,
  complemento VARCHAR NULL,
  PRIMARY KEY(idt_vendedor),
  INDEX t_vendedor_FKIndex1(t_cep_cep)
);


