create database dw_gastos_gov
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

CREATE TABLE dim_orcamento (
    
    sk_orcamento int(10) primary key not null,

    cod_funcao int(15) not null,
    nome_funcao varchar(50) not null,

    cod_subfuncao int(15) not null,
    nome_subfuncao varchar(50) not null,

    cod_programa int(15) not null,
    nome_programa varchar(100) not null,

    cod_acao int(15) not null,
    nome_acao varchar(155) not null

);

create table dim_despesa (

    sk_despesa int(10) primary key not null,

    cod_categoria_economica int(15) not null,
    nome_categoria_economica varchar(29) not null,

    cod_grupo_despesa int(15) not null,
    nome_grupo_despesa varchar(56) not null,

    cod_elemento_despesa int(15) not null,
    nome_elemento_despesa varchar(65) not null,

    cod_modalidade int(15) not null,
    nome_modalidade varchar(82) not null

);

create table dim_geografica (
    sk_geo int(10) primary key not null,
    uf char(2) not null,
    municipio varchar(100) not null,
    tipo_gasto varchar(50) not null
);

create table dim_tempo (
    sk_tempo tinyint not null,
    ano tinyint not null,
    mes tinyint not null,
    trimestre tinyint not null,
    
    primary key (sk_tempo)
);

create table dim_emenda (
    sk_emenda int not null,
    nome_autor varchar(150) not null,
    numero_emenda int not null,
    
    primary key (sk_emenda)
);

create table dim_orgao (
    sk_orgao int not null,
    
    cod_orgao_superior int not null,
    nome_orgao_superior varchar(200) not null,
    
    cod_orgao_subordinado int not null,
    orgao_subordinado varchar(200) not null,
    
    primary key (sk_orgao)
);