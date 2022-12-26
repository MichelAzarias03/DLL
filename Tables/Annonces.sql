CREATE TABLE Annonces (
    Id_Annonce VARCHAR (255) NOT NULL PRIMARY KEY AUTO INCREMENT,
    descriptionAn VARCHAR(255) NOT NULL,
    dureeA date,
    Id_Pressing VARCHAR (255) UNIQUE NOT NULL,
    Id_User VARCHAR(255) NOT NULL,
    Id_Type_linge VARCHAR(20) NOT NULL
) ;