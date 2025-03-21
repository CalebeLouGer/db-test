create table temperatura (
	id_temp int(11) auto_increment,
	grau varchar(5) not null,
	constraint temperatura_pk primary key (id_temp)
);

create table umidade_sen1(
	id_sen1 int(11) auto_increment,
	percent varchar(5) not null,
	constraint umidade_sen1_pk primary key (id_sen1)
);
create table umidade_sen2(
	id_sen2 int(11) auto_increment,
	percent varchar(5) not null,
	constraint umidade_sen2_pk primary key (id_sen2)
);
create table umidade_sen3(
	id_sen3 int(11) auto_increment,
	percent varchar(5) not null,
	constraint umidade_sen3_pk primary key (id_sen3)
);

create table umidade(
	id_umidade int(11) auto_increment,
	percent varchar(5) not null,
	umidade_sen1_fk int(11),
	umidade_sen2_fk int(11),
	umidade_sen3_fk int(11),
	constraint umidade_pk primary key (id_umidade),
	constraint fk_umidade_sen1 foreign key (umidade_sen1_fk) references umidade_sen1(id_sen1),
	constraint fk_umidade_sen2 foreign key (umidade_sen2_fk) references umidade_sen2(id_sen2),
	constraint fk_umidade_sen3 foreign key (umidade_sen3_fk) references umidade_sen3(id_sen3)
);
select * from temperatura;