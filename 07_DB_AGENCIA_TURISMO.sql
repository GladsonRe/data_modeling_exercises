CREATE TABLE t_casas_de_show (
  id_casas_de_show INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  t_restaurantes_t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  t_restaurantes_id_restaurante INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_casas_de_show, t_cidades_id_cidade),
  INDEX t_casas_de_show_FKIndex1(t_restaurantes_id_restaurante, t_restaurantes_t_cidades_id_cidade),
  INDEX t_casas_de_show_FKIndex2(t_cidades_id_cidade)
);

CREATE TABLE t_cidades (
  id_cidade INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_cidade VARCHAR NULL,
  estado VARCHAR(2) NULL,
  populacao INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_cidade)
);

CREATE TABLE t_fundadores (
  id_fundador INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_fundador VARCHAR NULL,
  dt_nascimento DATE NULL,
  dt_morte DATE NULL,
  nacionalidade_fundador VARCHAR NULL,
  profissao_fundador VARCHAR NULL,
  PRIMARY KEY(id_fundador)
);

CREATE TABLE t_fundadores_has_t_pontos_turisticos (
  t_fundadores_id_fundador INTEGER UNSIGNED NOT NULL,
  t_pontos_turisticos_id_ponto_turistico INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(t_fundadores_id_fundador, t_pontos_turisticos_id_ponto_turistico),
  INDEX t_fundadores_has_t_pontos_turisticos_FKIndex1(t_fundadores_id_fundador),
  INDEX t_fundadores_has_t_pontos_turisticos_FKIndex2(t_pontos_turisticos_id_ponto_turistico)
);

CREATE TABLE t_hoteis (
  id_hotel INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  t_restaurantes_t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  t_restaurantes_id_restaurante INTEGER UNSIGNED NULL,
  nome_hotel VARCHAR NULL,
  endereco VARCHAR NULL,
  categoria VARCHAR NULL,
  PRIMARY KEY(id_hotel, t_cidades_id_cidade),
  INDEX t_hoteis_FKIndex1(t_restaurantes_id_restaurante, t_restaurantes_t_cidades_id_cidade),
  INDEX t_hoteis_FKIndex2(t_cidades_id_cidade)
);

CREATE TABLE t_pontos_turisticos (
  id_ponto_turistico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  nome_ponto_turistico VARCHAR NULL,
  tipo_ponto_turistico VARCHAR NULL,
  descricao_ponto_turistico VARCHAR NULL,
  endereco VARCHAR NULL,
  data_construcao DATE NULL,
  estilo_construcao VARCHAR NULL,
  hr_abertura TIME NULL,
  hr_fechamento TIME NULL,
  n_salas INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_ponto_turistico, t_cidades_id_cidade),
  INDEX t_pontos_turisticos_FKIndex1(t_cidades_id_cidade)
);

CREATE TABLE t_quarto (
  id_quarto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_pontos_turisticoshoteis_id_hotel INTEGER UNSIGNED NOT NULL,
  t_hoteis_t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  tipo_quarto VARCHAR NULL,
  vl_diaria FLOAT NULL,
  PRIMARY KEY(id_quarto, t_pontos_turisticoshoteis_id_hotel, t_hoteis_t_cidades_id_cidade),
  INDEX t_quarto_FKIndex1(t_pontos_turisticoshoteis_id_hotel, t_hoteis_t_cidades_id_cidade)
);

CREATE TABLE t_restaurantes (
  id_restaurante INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  t_cidades_id_cidade INTEGER UNSIGNED NOT NULL,
  nome_restaurante VARCHAR NULL,
  endereco VARCHAR NULL,
  categoria VARCHAR NULL,
  preco_medio FLOAT NULL,
  especialidade VARCHAR NULL,
  PRIMARY KEY(id_restaurante, t_cidades_id_cidade),
  INDEX t_restaurantes_FKIndex1(t_cidades_id_cidade)
);


