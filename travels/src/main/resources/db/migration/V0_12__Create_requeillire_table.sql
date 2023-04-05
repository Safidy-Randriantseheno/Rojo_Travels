CREATE TABLE requerir(
    id_maintenance int not null REFERENCES maintenance(id_maintenance) not null,
    id_vehicule int not null REFERENCES vehicules(id_vehicule) not null,
    unique(id_maintenance,id_vehicule)
);