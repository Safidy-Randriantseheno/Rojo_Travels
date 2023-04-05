CREATE TABLE maintenance(
    id_maintenance bigserial PRIMARY KEY,
    cout int check(cout >= 0)
);