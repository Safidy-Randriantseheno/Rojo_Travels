CREATE TABLE reserver(
    id_client int REFERENCES client(id_client),
    id_offre int REFERENCES offre(id_offre),
    id_voyage int REFERENCES voyage(id_voyage),
    place int not null,
    date_reservation date DEFAULT current_date,
    montant_paye int not null check(montant_paye > 0)
);