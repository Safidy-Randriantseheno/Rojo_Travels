CREATE TABLE utiliser(
    id_vehicule int REFERENCES vehicules(id_vehicule) NOT NULL,
    id_voyage int REFERENCES voyage(id_voyage) NOT NULL,
    UNIQUE(id_vehicule, id_voyage)
);