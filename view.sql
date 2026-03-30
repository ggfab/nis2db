CREATE OR REPLACE VIEW vista_profilo_acn AS
SELECT 
    a.id AS ID_Asset,
    a.nome AS Nome_Asset,
    a.categoria AS Categoria_Asset,
    s.nome AS Servizio_Erogato,
    s.descrizione AS Descrizione_Servizio,
    sub.nome AS Misura_Sicurezza,
    p.livello AS Grado_Priorita,
    CONCAT(r.nome, ' ', r.cognome) AS Punto_Contatto_Interno,
    r.mail AS Email_Responsabile,
    f.ragione_sociale AS Fornitore_Terza_Parte,
    f.mail AS Email_Fornitore
FROM 
    servizio s
JOIN asset a ON s.id_asset = a.id
JOIN responsabile r ON s.id_responsabile = r.matricola
LEFT JOIN fornitore f ON s.id_fornitore = f.partitaiva
LEFT JOIN subcategory sub ON s.id_subcategory = sub.id
LEFT JOIN priorita p ON sub.id_priorita = p.id;

