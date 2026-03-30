-- ATTENZIONE ASSICURARSI CHE L'ISTANZA DI MYSQL NON SIA AVVIATA CON IL FLAG --secure-file-priv
SELECT 
    'ID_Asset', 'Nome_Asset', 'Categoria', 'Servizio', 'Priorita', 'Responsabile', 'Fornitore'
UNION ALL
SELECT 
    ID_Asset, Nome_Asset, Categoria_Asset, Servizio_Erogato, Grado_Priorita, Punto_Contatto_Interno, IFNULL(Fornitore_Terza_Parte, 'N/A')
FROM vista_profilo_acn
INTO OUTFILE '/tmp/export.csv' -- inserisci il path dove vuoi che venga salvato il file
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'; 