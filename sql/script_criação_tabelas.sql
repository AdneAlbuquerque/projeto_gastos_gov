create database dw_gastos_gov
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

CREATE TABLE dim_orcamento (
    
    sk_orcamento smallint primary key not null,

    cod_funcao varchar(50) not null,
    nome_funcao varchar(300) not null,

    cod_subfuncao varchar(50) not null,
    nome_subfuncao varchar(300) not null,

    cod_programa varchar(50) not null,
    nome_programa varchar(300) not null,

    cod_acao varchar(50) not null,
    nome_acao varchar(300) not null

);

create table dim_despesa (

    sk_despesa smallint primary key not null,

    cod_categoria_economica varchar(50) not null,
    nome_categoria_economica varchar(250) not null,

    cod_grupo_despesa varchar(50) not null,
    nome_grupo_despesa varchar(250) not null,

    cod_elemento_despesa varchar(50) not null,
    nome_elemento_despesa varchar(250) not null,

    cod_modalidade varchar(50) not null,
    nome_modalidade varchar(250) not null

);

create table dim_geografica (
    sk_geo smallint primary key not null,
    uf char(2) not null,
    municipio varchar(100) not null,
    tipo_gasto varchar(250) not null
);

create table dim_tempo (
    sk_tempo smallint not null,
    ano_mes varchar (10),
    ano tinyint not null,
    mes tinyint not null,
    trimestre tinyint not null,
    
    primary key (sk_tempo)
);

create table dim_emenda (
    sk_emenda smallint not null,
    nome_autor_emenda varchar(150) not null,
    
    primary key (sk_emenda)
);

create table dim_orgao (
    sk_orgao smallint not null,
    cod_orgao_superior varchar(50) not null,
    nome_orgao_superior varchar(250) not null,
    cod_orgao_subordinado varchar(50) not null,
    orgao_subordinado varchar(250) not null,
    
    primary key (sk_orgao)

alter table dim_tempo modify column trimestre varchar(10);
SELECT COUNT(*) FROM stage_gastos_gov;

DESCRIBE stage_gastos_gov;

drop TABLE dim_emenda;
select count(*) from dim_emenda;

ALTER TABLE dim_tempo MODIFY COLUMN ano SMALLINT;
alter table stage_gastos_gov drop column ano_emenda, drop column numero_emenda;
select *  from stage_gastos_gov;
drop table 