
ALTER TABLE Annonces ADD CONSTRAINT fk_annonce_p FOREIGN KEY (Id_Pressing) REFERENCES Pressing (Id_Pressing) ON DELETE CASCADE;
ALTER TABLE Annonces ADD CONSTRAINT fk_ann_promo FOREIGN KEY (Id_Type_linge) REFERENCES Promo (Id_Type_linge) ON DELETE CASCADE;