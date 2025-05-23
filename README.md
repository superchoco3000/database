Points importants :
Assurez-vous que votre serveur local (XAMPP, WAMP, MAMP) est en cours d'exécution et que vous pouvez accéder à mon projet Air Jordan via cette URL dans votre navigateur.
Absolument ! Voici un tutoriel pas à pas pour lancer Apache, MySQL et préparer l'environnement pour que n'importe qui puisse visualiser le site web Jordan (en supposant l'utilisation de XAMPP, qui est une solution tout-en-un facile à installer) :

Tutoriel : Lancer Apache, MySQL avec XAMPP pour le site web Jordan

Ce tutoriel vous guide à travers l'installation et le démarrage des services nécessaires pour faire fonctionner un site web PHP qui interagit avec une base de données MySQL, en utilisant XAMPP.

Étape 1 : Télécharger et Installer XAMPP

Ouvrez votre navigateur web et allez sur le site officiel d'Apache Friends : https://www.apachefriends.org/fr/index.html
Téléchargez la version de XAMPP correspondant à votre système d'exploitation (Windows, Linux, macOS).
Une fois le téléchargement terminé, exécutez le fichier d'installation.
Suivez les instructions à l'écran. Vous pouvez généralement laisser les options par défaut. Assurez-vous que les cases pour Apache et MySQL sont cochées lors de la sélection des composants.
Choisissez un dossier d'installation (par exemple, C:\xampp sous Windows).
Terminez l'installation.
Étape 2 : Démarrer Apache et MySQL

Ouvrez le "XAMPP Control Panel". Vous pouvez le trouver en cherchant "XAMPP Control Panel" dans le menu de démarrage (Windows) ou dans le dossier d'installation de XAMPP.
Dans le Control Panel, vous verrez une liste de modules (Apache, MySQL, etc.).
Cliquez sur le bouton "Start" à côté d'Apache. Si tout se passe bien, la ligne d'Apache deviendra verte.
Cliquez sur le bouton "Start" à côté de MySQL. Si tout se passe bien, la ligne de MySQL deviendra également verte.
Si vous rencontrez des erreurs (par exemple, des problèmes de ports), vous devrez peut-être configurer les ports d'Apache ou MySQL en cliquant sur le bouton "Config" à côté du service concerné.

Étape 3 : Placer les fichiers du site web Jordan

Localisez le dossier htdocs à l'intérieur de votre dossier d'installation XAMPP (par exemple, C:\xampp\htdocs). C'est le répertoire racine pour vos sites web locaux.
Créez un nouveau dossier à l'intérieur de htdocs pour votre projet Jordan. Par exemple, nommez-le jordan_viewer.
Copiez tous les fichiers PHP de votre site web Jordan (ceux qui affichent les données de la base de données) dans ce dossier htdocs/jordan_viewer.
Étape 4 : Importer la base de données Jordan (si nécessaire)

Si votre projet Jordan utilise une base de données MySQL, vous devrez l'importer :

Dans le XAMPP Control Panel, cliquez sur le bouton "Admin" à côté de MySQL. Cela ouvrira phpMyAdmin dans votre navigateur (généralement à l'adresse http://localhost/phpmyadmin/).
Dans phpMyAdmin, cliquez sur "Bases de données" dans le menu du haut.
Créez une nouvelle base de données (donnez-lui un nom, par exemple, jordan_db).
Sélectionnez la base de données que vous venez de créer.
Cliquez sur l'onglet "Importer".
Cliquez sur "Choisir un fichier" et sélectionnez le fichier .sql contenant votre base de données Jordan (si vous en avez un).
Cliquez sur "Exécuter" en bas de la page pour importer la base de données.
Étape 5 : Accéder au site web Jordan

Ouvrez votre navigateur web.
Tapez l'URL suivante dans la barre d'adresse et appuyez sur Entrée :
http://localhost/jordan_viewer/
(Si le fichier principal de votre site web Jordan a un nom spécifique comme index.php ou accueil.php, vous devrez peut-être ajouter ce nom à l'URL, par exemple http://localhost/jordan_viewer/index.php).
Si vous avez suivi ces étapes correctement et que votre site web Jordan est configuré pour se connecter à la base de données que vous avez importée, vous devriez maintenant pouvoir le visualiser dans votre navigateur.

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

