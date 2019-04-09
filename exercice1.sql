Question 1:
SELECT *
FROM   T_CELKO_TEN_IN_ON_TIO
WHERE    SIGN(ABS(TIO_1)) + SIGN(ABS(TIO_2)) + SIGN(ABS(TIO_3)) + SIGN(ABS(TIO_4)) + SIGN(ABS(TIO_5)) + SIGN(ABS(TIO_6)) + SIGN(ABS(TIO_7)) + SIGN(ABS(TIO_8)) + SIGN(ABS(TIO_9)) + SIGN(ABS(TIO_10)) = 1 ;
/*la fonction abs permet de retourner la valeur absolue et ainsi eviter les erreur de comptage avec le -1 par exemple*/
/*la fonction sign retourne -1 si le nombre est negatif, 0 s'il est null et 1 s'il est positif. Cela nous permet de compter combien de valeurs sont positives et donc différentes de 0*/
Question 2 :
SELECT *
FROM   T_CELKO_TEN_IN_ON_TIO
WHERE  CASE WHEN TIO_1 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_2 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_3 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_4 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_5 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_6 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_7 = 0 THEN 1 ELSE 0 END + 
       CASE WHEN TIO_8 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_9 = 0 THEN 1 ELSE 0 END +
       CASE WHEN TIO_10 = 0 THEN 1 ELSE 0 END  = 9 /* permet de compter le nombre de valeur a 0*/ 
  AND  TIO_1 + TIO_2 + TIO_3 + TIO_4 + TIO_5 + TIO_6 + TIO_7 + TIO_8 + TIO_9 + TIO_10 = 1 ;/* on considère que 9 des 10 valeurs sont a 0, on vérifie donc que la 10eme est bien égale a 1*/