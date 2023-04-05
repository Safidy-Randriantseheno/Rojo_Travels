CREATE TABLE vehicules(
    id_vehicule serial PRIMARY KEY,
    nombre_places int check(nombre_places > 0),
    matricule varchar(8) unique
);