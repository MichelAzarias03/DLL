CREATE TABLE Utilisateurs
(
    IdUser VARCHAR (255) NOT NULL PRIMARY KEY,
    UserName VARCHAR(255) NOT NULL,
    Nom VARCHAR(255) NOT NULL,
    Prenom VARCHAR(255) NOT NULL,
    Telephone INTEGER NOT NULL,
    UserPassword VARCHAR(255) NOT NULL
) ;