SELECT COUNT(*) AS 'TBL1', /*on recupère le nombre d'éléments de la table 1*/ 
       (SELECT COUNT(*) FROM TBL2) AS 'TBL2', /*on y ajoute via un alias le nombre d'éléments de la table 2*/
       (SELECT COUNT(*) FROM TBL3) AS 'TBL3' /*on y ajoute via un alias le nombre d'éléments de la table 3*/
FROM   TBL1 ; 