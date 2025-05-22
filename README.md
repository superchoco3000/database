# database

La base de données est composée de deux tables principales : 
* **Table `medias` :
** Utilisée pour stocker des informations sur mes séries, films, animés et livres favoris.
  
* `id` (INT, Clé Primaire, Auto-incrément) : Identifiant unique pour chaque média.
* 
 * `type` (VARCHAR(50)) : Type de média (Série, Film, Animé, Livre).
 * 
 * `titre` (VARCHAR(255), NOT NULL) : Titre du média.
 * 
* `auteur` (VARCHAR(255)) : Auteur (pour les livres).
* 
* `realisateur` (VARCHAR(255)) : Réalisateur (pour les films, séries, animés).
* 
* `nombre_saisons` (INT) : Nombre de saisons (pour les séries et animés).
* 
* `nombre_episodes` (INT) : Nombre d'épisodes (pour les séries et animés).
* 
* `date_sortie` (DATE) : Date de sortie.
* 
* `genre` (VARCHAR(100)) : Genre(s).
* 
* `note` (DECIMAL(2, 1)) : Ma note personnelle.
* 
* `statut` (VARCHAR(50)) : Statut (Vu, En cours, À voir, Lu, En cours de lecture, À lire).
* 
* **Table `chaussures_jordan` :
* 
** Utilisée pour cataloguer mes chaussures Jordan, qu'elles soient possédées ou désirées.
  
* `id` (INT, Clé Primaire, Auto-incrément) : Identifiant unique pour chaque chaussure.
* 
* `modele` (VARCHAR(255), NOT NULL) : Nom du modèle.
* 
* `couleur` (VARCHAR(255)) : Coloris.
* 
* `date_sortie` (DATE) : Date de sortie.
* 
* `taille` (DECIMAL(3, 1)) : Ma taille.
* 
* `etat` (VARCHAR(50)) : État (Possédé, À avoir).
* 
* `note` (DECIMAL(2, 1)) : Ma note esthétique ou préférence.
* 
* `prix_achat` (DECIMAL(10, 2)) : Prix d'achat (si possédé).
* 
 * `lieu_achat` (VARCHAR(255)) : Lieu d'achat (si possédé). La clé primaire `id` assure l'unicité de chaque enregistrement, et l'attribut `Auto-incrément` permet à MySQL d'attribuer automatiquement des identifiants lors de l'ajout de nouvelles données.

-- Création de la table 'medias'
CREATE TABLE `medias` (

  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST,
  
  `type` varchar(50) DEFAULT NULL,
  
  `titre` varchar(255) NOT NULL,
  
  `auteur` varchar(255) DEFAULT NULL,
  
  `realisateur` varchar(255) DEFAULT NULL,
  
  `nombre_saisons` int(11) DEFAULT NULL,
  
  `nombre_episodes` int(11) DEFAULT NULL,
  
  `date_sortie` date DEFAULT NULL,
  
  `genre` varchar(100) DEFAULT NULL,
  
  `note` decimal(2,1) DEFAULT NULL,
  
  `statut` varchar(50) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insertion d'un exemple de média

INSERT INTO medias (type, titre, realisateur, nombre_saisons, genre, note, statut)

VALUES ('Série', 'The Wire', 'Divers', 5, 'Drame policier', 4.8, 'Vu');

-- Création de la table 'chaussures_jordan'

CREATE TABLE `chaussures_jordan` (

  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST,
  
  `modele` varchar(255) NOT NULL,
  
  `couleur` varchar(255) DEFAULT NULL,
  
  `date_sortie` date DEFAULT NULL,
  
  `taille` decimal(3,1) DEFAULT NULL,
  
  `etat` varchar(50) DEFAULT NULL,
  
  `note` decimal(2,1) DEFAULT NULL,
  
  `prix_achat` decimal(10,2) DEFAULT NULL,
  
  `lieu_achat` varchar(255) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insertion d'un exemple de chaussure Jordan

INSERT INTO chaussures_jordan (modele, couleur, date_sortie, taille, etat, note)

VALUES ('Air Jordan 1 Retro High OG', 'Chicago', '2015-05-30', 43.0, 'Possédé', 5.0);

Ce projet m'a permis de consolider ma compréhension des concepts clés des bases de données relationnelles, notamment :
 * La conception de schémas de tables pour organiser des données de manière logique.
 * L'utilisation de différents types de données SQL pour stocker divers types d'informations.
 * La définition de clés primaires pour assurer l'unicité des enregistrements et l'importance de l'attribut `AUTO_INCREMENT` pour simplifier l'ajout de nouvelles données. 
* L'exécution de commandes SQL de base telles que `CREATE TABLE` pour définir la structure des tables et `INSERT INTO` pour ajouter des données. 
* La manipulation de l'outil phpMyAdmin pour interagir avec le serveur MySQL. J'ai également rencontré un défi intéressant avec la configuration de l'auto-incrémentation sur la table `medias`, ce qui a nécessité une exploration plus approfondie des commandes `ALTER TABLE` pour résoudre le problème. Cette expérience a renforcé ma capacité à diagnostiquer et à résoudre des problèmes techniques lors de la manipulation de bases de données.

