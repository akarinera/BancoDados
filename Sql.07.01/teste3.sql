create table tbCliente(
    codCliente int not null,
    nomeCliente varchar(45) not null,
    sobrenomeCliente varchar(45) not null,
    constraint pk_tbcliente primary key(codCliente)
);

create table tbPedido(
    codPedido int not null,
    valorPedido decimal(15,2) not null,
    constraint pk_tbPedido primary key(codPedido),
    constraint fk_tbPedido_tbCliente foreign key (codCliente_Pedido),
    references tbCliente(codCliente)
);