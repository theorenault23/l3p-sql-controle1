SET @compteur=0; 
SELECT t_prospect_psp.PSP_NOM,@compteur:=@compteur+1 AS N FROM t_prospect_psp ORDER by t_prospect_psp.PSP_NOM;

/*utilisation de ROW_NUMBER() impossible sous mysql*/
