CREATE TABLE passer_par(
    id_ville int REFERENCES ville(id_ville) not null,
    id_voyage int REFERENCES voyage(id_voyage) not null,
    UNIQUE (id_ville, id_voyage)
);