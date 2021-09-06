-- Jeux de test

-- Sélectionner les id de valeur "1" 

SELECT * FROM `ville` WHERE id = 1

-- Sélectionner les noms de départements ayant pour valeur "Bas-Rhin"

SELECT * FROM `ville` WHERE nomdep = 'Bas-Rhin'

-- Supprimer les données relatives à la valeur '80000' dans la colonne "cp" 

DELETE * FROM `ville` WHERE cp = '80000'