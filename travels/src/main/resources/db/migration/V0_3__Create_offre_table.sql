CREATE TABLE offre(
    id_offre serial primary key,
    type varchar(20),
    tarif int check(tarif > 0) not null
);