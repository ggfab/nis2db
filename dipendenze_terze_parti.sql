SELECT Servizio_Erogato, Fornitore_Terza_Parte, Email_Fornitore 
FROM vista_profilo_acn 
WHERE Fornitore_Terza_Parte IS NOT NULL;