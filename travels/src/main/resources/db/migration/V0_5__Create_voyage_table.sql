CREATE TABLE voyage(
    id_voyage bigserial primary key,
    jour_depart date not null,
    heure_depart time,
    id_ville_depart int NOT NULL REFERENCES ville(id_ville),
    id_ville_arrivee int NOT NULL REFERENCES ville(id_ville)
);