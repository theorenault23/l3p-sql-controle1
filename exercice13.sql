SELECT T_PANEL_PNL.PNL_NOM,
       CASE WHEN T_PANEL_PNL.PNL_REPONSE1 = T_REPONSES_RPS.RPS_REPONSE1 THEN 1 ELSE 0 END +
       CASE WHEN T_PANEL_PNL.PNL_REPONSE2 = T_REPONSES_RPS.RPS_REPONSE2 THEN 1 ELSE 0 END +
       CASE WHEN T_PANEL_PNL.PNL_REPONSE3 = T_REPONSES_RPS.RPS_REPONSE3 THEN 1 ELSE 0 END +
       CASE WHEN T_PANEL_PNL.PNL_REPONSE4 = T_REPONSES_RPS.RPS_REPONSE4 THEN 1 ELSE 0 END +
       CASE WHEN T_PANEL_PNL.PNL_REPONSE5 = T_REPONSES_RPS.RPS_REPONSE5 THEN 1 ELSE 0 END AS Nombre_bonne_reponse /*compare les résultats des deux tables et les aditionnent */
FROM  T_PANEL_PNL CROSS JOIN T_REPONSES_RPSORDER ORDER BY Nombre_bonne_reponse DESC; /*tri les résultats en fonction du nombre de bonnes réponses*/