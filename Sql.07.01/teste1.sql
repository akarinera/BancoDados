show databases; -- pra ve a tabela
create database dbCliente; -- criar uma tabela
use dbCliente; -- seleciona o bando de dados
select database(); -- retorna os registros 
drop dbCliente -- remove os registros
alter -- criar

create table tbCliente(
    idCliente int not null,
    nomeCliente varchar(100) not null,
    logradouroCliente varchar(100),
    celCliente varchar(50),
    cidadeCliente varchar(50),
    ufCliente varchar(2),
    constraint pk_tbCliente primary key (idCliente)
);

create table tbOrdemDeCompra(
    idOrdem int not null,
    numOrdem int not null,
    idCliente_OrdemDeCompra int not null,
    constraint pk_tbOrdemDeCompra primary key (idOrdem),
    constraint pk_tbOrdemDeCompra foreign key (idCliente_OrdemDeCompra),
        references tbCliente (idCliente)
);