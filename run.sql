
SET VERIFY OFF
SET ECHO OFF
SET LINESIZE 900
SET PAGESIZE 100
SET SQLPROMPT '#csi3>'

 --creation d'un utilisateur csi
DROP USER csi CASCADE;
CREATE USER csi
IDENTIFIED BY csi ACCOUNT UNLOCK;

-- attribution des droits a l'utilisateur
GRANT connect, resource TO csi;
GRANT ALL PRIVILEGES TO csi;

-- connection avec le compte csi
CONNECT csi/csi;

PROMPT *********************** connection au compte csi reussi !! ************************

--execution des fichiers de creation des talbles
@Tables/Adresse.sql
PROMPT *********************** Creation de la table Adresse reussi !! ************************

@Tables/Annonces.sql
PROMPT *********************** Creation de la table Annonces reussi !! ************************

@Tables/Attributs.sql
PROMPT *********************** Creation de la table Attributs reussi !! ************************

@Tables/BesoinClient.sql
PROMPT *********************** Creation de la table BesoinClient reussi !! ************************

@Tables/BesoinSelectionnable.sql
PROMPT *********************** Creation de la table BesoinSelectionnable reussi !! ************************

@Tables/Clients.sql
PROMPT *********************** Creation de la table Clients reussi !! ************************

@Tables/Linge_client.sql
PROMPT *********************** Creation de la table Linge_client reussi !! ************************

@Tables/Offre_commercial.sql
PROMPT *********************** Creation de la table Offre_commercial reussi !! ************************

@Tables/Personne_Physique.sql
PROMPT *********************** Creation de la table Personne_Physique reussi !! ************************

@Tables/Personnes.sql
PROMPT *********************** Creation de la table Personnes reussi !! ************************

@Tables/Pressing.sql
PROMPT *********************** Creation de la table Pressing reussi !! ************************

@Tables/Privileges.sql
PROMPT *********************** Creation de la table Privileges reussi !! ************************

@Tables/Promo.sql
PROMPT *********************** Creation de la table Promo reussi !! ************************

@Tables/Roles.sql
PROMPT *********************** Creation de la table Roles reussi !! ************************

@Tables/Services.sql
PROMPT *********************** Creation de la table Services reussi !! ************************

@Tables/Type_linge.sql
PROMPT *********************** Creation de la table Type_linge reussi !! ************************

@Tables/Type_service.sql
PROMPT *********************** Creation de la table Type_service reussi !! ************************

@Tables/Utilisateurs.sql
PROMPT *********************** Creation de la table Utilisateurs reussi !! ************************

--execution des fichiers de creation des contraintes

@Constraints/Adresse_contraintes.sql
@Constraints/Annonces_contraintes.sql
@Constraints/Attributs_contraintes.sql
@Constraints/BesoinClient_contraintes.sql
@Constraints/BesoinSelectionnable_contraintes.sql
@Constraints/Clients_contraintes.sql
@Constraints/Linge_client_contraintes.sql
@Constraints/Offre_commercial_contraintes.sql
@Constraints/Personne_Physique_contraintes.sql
@Constraints/Personnes_contraintes.sql
@Constraints/Pressing_contraintes.sql
@Constraints/Privileges_contraintes.sql
@Constraints/Promo_contraintes.sql
@Constraints/Roles_contraintes.sql
@Constraints/Services_contraintes.sql
@Constraints/Type_linge_contraintes.sql
@Constraints/Type_service_contraintes.sql
@Constraints/Utilisateurs_contraintes.sql

--_contraintes