SELECT NMR + 1 as TROU FROM   T_NUMERO_NMR WHERE  
            NMR + 1 NOT IN (SELECT NMR FROM   T_NUMERO_NMR) /*vérifie que le numero suivant n existe pas */
        AND NMR + 1 < (SELECT MAX(NMR) FROM T_NUMERO_NMR)  /*vérifie que la valeur max de la table n est pas depassée*/;