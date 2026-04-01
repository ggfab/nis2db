SELECT Nome_Asset, Categoria_Asset, Servizio_Erogato, Grado_Priorita 
FROM vista_profilo_acn 
WHERE Grado_Priorita LIKE 'Critica%';