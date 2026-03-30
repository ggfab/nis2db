SELECT 
    s.id AS ID_Servizio,
    s.nome AS Nome_Servizio,
    s.descrizione AS Funzione_Business,
    a.nome AS Asset_Supportato,
    sub.nome AS Categoria_Sicurezza,
    p.livello AS Grado_Priorita,
    m.livello_cmmi AS Livello_Maturita_Attuale,
    CONCAT(r.nome, ' ', r.cognome) AS Responsabile_Servizio
FROM 
    servizio s
JOIN asset a ON s.id_asset = a.id
JOIN responsabile r ON s.id_responsabile = r.matricola
LEFT JOIN subcategory sub ON s.id_subcategory = sub.id
LEFT JOIN priorita p ON sub.id_priorita = p.id
LEFT JOIN maturita m ON sub.id_maturita = m.id
ORDER BY p.id ASC;