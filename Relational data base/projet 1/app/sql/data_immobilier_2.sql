--Créer la table locataire

CREATE TABLE IF NOT EXISTS locataire (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telephone VARCHAR(20)
);

--Insérer quelques locataires

INSERT INTO locataire (nom, prenom, email, telephone) VALUES ('Lefevre', 'Paul', 'paul.lefevre@email.fr', '0611111111'), ('Morel', 'Julie', 'julie.morel@email.fr', '0622222222'), ('Roux', 'Thomas', 'thomas.roux@email.fr', '0633333333'), ('Fontaine', 'Sarah', 'sarah.fontaine@email.fr', '0644444444'), ('Girard', 'Lucas', 'lucas.girard@email.fr', '0655555555'), ('Bonnet', 'Emma', 'emma.bonnet@email.fr', '0666666666');


--Créer la table location

CREATE TABLE IF NOT EXISTS location (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    logement_id INTEGER NOT NULL,
    locataire_id INTEGER NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE,
    loyer DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (logement_id)
        REFERENCES logement(id),

    FOREIGN KEY (locataire_id)
        REFERENCES locataire(id)
);

--Insertion des données de locations
INSERT INTO location (
    logement_id,
    locataire_id,
    date_debut,
    date_fin,
    loyer
)
VALUES
(1, 1, '2025-01-01', '2025-12-31', 1250.00),
(2, 2, '2025-03-01', NULL, 1850.00),
(3, 3, '2025-06-01', '2026-05-31', 850.00),
(4, 4, '2025-09-01', NULL, 950.00),
(5, 5, '2026-01-01', NULL, 1200.00),
(6, 1, '2026-02-01', NULL, 780.00),
(8, 6, '2026-01-01', NULL, 1450.00);




