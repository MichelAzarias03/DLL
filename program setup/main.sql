
SET verify off

SET echo off

DECLARE
    v_id_session     NUMBER(20);
    v_id_utilisateur sessions.id_utilisateur%type;
BEGIN
    dbms_output.put_line('--------------------- Open Pressing  consol   APP ----------------------------');
    SELECT
        sys_context('userenv',
        'sessionid') session_id INTO v_id_session
    FROM
        dual;
    SELECT
        id_utilisateur INTO v_id_utilisateur
    FROM
        sessions
    WHERE
        id_session_oracle = v_id_session;
    dbms_output.put_line('Vous etes connecte');
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Vous etes pas connecte');
END;
/

prompt '  1)  Connexion ';

prompt '  2)  Inscription ';

prompt '  3)  Consulter les offres ';

prompt '  4)  Consulter les annonces ';

prompt '  5)  Consulter les pressings ';

prompt '  6)  Creer un presssings';

prompt '  99)  Precedent';

define tml='-';

accept choix prompt 'Entrez votre choix '

SET echo off

SELECT
    sys_context('userenv',
    'sessionid') session_id
FROM
    dual;

@'&CHOIX'

/*


CREATE OR REPLACE PROCEDURE lister_offres
  IS
  BEGIN
      SELECT description_offre 
      FROM offre_commercial;
  END lister_offres;
/

CREATE OR REPLACE PROCEDURE menu_connecter
    IS
        vlogin utilisateurs.username%TYPE:=&username;
        vpass utilisateurs.userpassword%TYPE:=&password;
        match_count number;
    BEGIN
        DBMS_OUTPUT.put_line('*****************************************************');
        DBMS_OUTPUT.put_line('************** Open Pressing // Login *************');
        DBMS_OUTPUT.put_line('*****************************************************');
       
      SELECT COUNT(*)
        INTO match_count
        FROM utilisateurs
        WHERE username=vlogin AND userpassword=vpass;
        
          IF match_count = 0 THEN
            dbms_output.put_line('username ou mot de passe incorrect !');
          ELSIF match_count = 1 THEN
            dbms_output.put_line('connectée avec succés !');
            
          ELSE
            dbms_output.put_line('Too many matches, this should never happen!');
           END IF;     
    END menu_connecter;
/

CREATE PROCEDURE creer_compte
  create or replace sequence  id_use
  start with 1
  increment by 1;
  IS
    vnom utilisateurs.nom%TYPE:=&Nom;
    vprenom utilisateurs.prenom%TYPE:=&Prenom;
    vtel utilisateurs.telephone%TYPE:=&Telephone;
    vlogin utilisateurs.username%TYPE:=&username;
    vpass utilisateurs.userpassword%TYPE:=&password;
  BEGIN
    INSERT INTO utilisateurs
    VALUES(id_use.nextval,vlogin,vnom,vprenom,vtel,vpass);
  END creer_compte;
/

SET AUTOPRINT ON;
SET SERVEROUTPUT ON;
DECLARE
 D NUMBER:=&Choix;
BEGIN
    DBMS_OUTPUT.put_line('*****************************************************');
    DBMS_OUTPUT.put_line('************** Welcome to Open Pressing *************');
    DBMS_OUTPUT.put_line('*****************************************************');
    DBMS_OUTPUT.put_line('********* 1. Consulter les offres *******************');
    DBMS_OUTPUT.put_line('********* 2. Se connecter ***************************');
    DBMS_OUTPUT.put_line('********* 3. Creer un compte ************************');
    DBMS_OUTPUT.put_line('*****************************************************');
    
    CASE D
      WHEN 1 THEN
         DBMS_OUTPUT.PUT_LINE('Page de consultation des offres');
         DECLARE
            CURSOR cur_lister_offre IS
                SELECT description_offre FROM offre_commercial;
            vdesc offre_commercial.description_offre%TYPE;    
        BEGIN
            OPEN cur_lister_offre;
            LOOP
                FETCH cur_lister_offre INTO vdesc;
                EXIT WHEN cur_lister_offre%NOTFOUND;
                DBMS_OUTPUT.PUT_LINE('Offre :'||vdesc);
            END LOOP;
            CLOSE cur_lister_offre;
        END;
      WHEN 2 THEN
         DBMS_OUTPUT.PUT_LINE('Page de login');
         DECLARE
            vlogin utilisateurs.username%TYPE:=&username;
            vpass utilisateurs.userpassword%TYPE:=&password;
            match_count number;
        BEGIN
            DBMS_OUTPUT.put_line('*****************************************************');
            DBMS_OUTPUT.put_line('************** Open Pressing // Login *************');
            DBMS_OUTPUT.put_line('*****************************************************');
          
          SELECT COUNT(*)
            INTO match_count
            FROM utilisateurs
            WHERE username=vlogin AND userpassword=vpass;
            
              IF match_count = 0 THEN
                DBMS_OUTPUT.put_line('username ou mot de passe incorrect !');
              ELSIF match_count = 1 THEN
                DBMS_OUTPUT.put_line('connectée avec succés !');
                
              ELSE
                DBMS_OUTPUT.put_line('Too many matches, this should never happen!');
              END IF; 
      WHEN 3 THEN
         DBMS_OUTPUT.PUT_LINE('Page de création des comptes');
         
      ELSE
         DBMS_OUTPUT.PUT_LINE('INVALID DAY');
    END CASE;
END;

*/