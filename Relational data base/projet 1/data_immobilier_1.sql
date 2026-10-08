-- ============================================
-- IMMOTRUST - Jeu de données initial
-- ============================================

INSERT INTO proprietaire (nom, prenom, email, telephone)
VALUES
('Leroy', 'Julien', 'julien.leroy@immotrust.fr', '0645678901'),
('Moreau', 'Isabelle', 'isabelle.moreau@immotrust.fr', '0656789012'),
('Petit', 'Nicolas', 'nicolas.petit@immotrust.fr', '0667890123'),
('Robert', 'Camille', 'camille.robert@immotrust.fr', '0678901234'),
('Richard', 'Antoine', 'antoine.richard@immotrust.fr', '0689012345'),
('Durand', 'Emma', 'emma.durand@immotrust.fr', '0690123456'),
('Garcia', 'Lucas', 'lucas.garcia@immotrust.fr', '0601234567');


INSERT INTO logement (
    adresse,
    ville,
    code_postal,
    type,
    surface,
    loyer,
    proprietaire_id
)
VALUES
('12 rue de Paris', 'Paris', '75001', 'Appartement', 65.50, 1250.00, 1),
('8 avenue Victor Hugo', 'Paris', '75016', 'Appartement', 82.00, 1850.00, 1),
('24 rue Lafayette', 'Paris', '75009', 'Studio', 28.00, 850.00, 2),
('5 rue des Lilas', 'Lyon', '69001', 'Appartement', 55.00, 950.00, 2),
('18 rue de la République', 'Lyon', '69002', 'Appartement', 72.00, 1200.00, 2),

('31 rue Nationale', 'Lille', '59000', 'Appartement', 48.00, 780.00, 3),
('7 rue Faidherbe', 'Lille', '59000', 'Studio', 25.00, 620.00, 3),
('42 boulevard Vauban', 'Lille', '59000', 'Maison', 110.00, 1450.00, 4),

('15 rue Sainte-Catherine', 'Bordeaux', '33000', 'Appartement', 61.00, 1050.00, 4),
('9 rue Judaïque', 'Bordeaux', '33000', 'Studio', 30.00, 690.00, 5),
('27 cours de l''Intendance', 'Bordeaux', '33000', 'Appartement', 78.00, 1380.00, 5),

('4 rue Paradis', 'Marseille', '13001', 'Appartement', 58.00, 890.00, 6),
('19 avenue du Prado', 'Marseille', '13008', 'Appartement', 91.00, 1350.00, 6),
('6 rue de Rome', 'Marseille', '13006', 'Studio', 24.00, 650.00, 7),

('11 rue Nationale', 'Nice', '06000', 'Appartement', 67.00, 1150.00, 7),
('23 promenade des Anglais', 'Nice', '06000', 'Appartement', 95.00, 2100.00, 8),

('3 rue du Commerce', 'Nantes', '44000', 'Studio', 29.00, 650.00, 8),
('17 rue Crébillon', 'Nantes', '44000', 'Appartement', 70.00, 1100.00, 9),
('8 boulevard Guist''hau', 'Nantes', '44000', 'Maison', 120.00, 1550.00, 9),

('14 rue de Metz', 'Toulouse', '31000', 'Appartement', 54.00, 820.00, 10),
('22 rue Alsace-Lorraine', 'Toulouse', '31000', 'Appartement', 76.00, 1080.00, 10),
('5 rue Ozenne', 'Toulouse', '31000', 'Studio', 26.00, 590.00, 10),

('10 rue de la Paix', 'Paris', '75002', 'Appartement', 45.00, 1100.00, 1),
('35 rue du Faubourg', 'Paris', '75010', 'Appartement', 59.00, 1300.00, 4),
('2 rue de la Monnaie', 'Lille', '59000', 'Appartement', 63.00, 920.00, 6);
