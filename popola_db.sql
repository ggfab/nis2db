-- 1. POPOLAMENTO TABELLA MATURITÀ (Standard CMMI)
INSERT INTO `maturita` (`livello_cmmi`) VALUES 
('L0'), -- Inesistente
('L1'), -- Initial (Ad-hoc)
('L2'), -- Managed (Project level)
('L3'), -- Defined (Process standardization)
('L4'), -- Quantitatively Managed
('L5'); -- Optimizing

-- 2. POPOLAMENTO TABELLA GRADO_COPERTURA
INSERT INTO `grado_copertura` (`valore`, `note_maturita`, `evidenze`) VALUES 
('0', 'Nullo', 'Nessuna misura implementata'),
('0.2', 'Insufficiente', 'Misure accennate ma non documentate'),
('0.4', 'Iniziale', 'Documentazione parziale, applicazione saltuaria'),
('0.6', 'Incompleto', 'Processo definito ma non pienamente operativo'),
('0.8', 'Avanzato', 'Misura operativa e monitorata regolarmente'),
('1', 'Completo', 'Piena conformità e ottimizzazione continua');

-- 3. POPOLAMENTO PRIORITÀ
INSERT INTO `priorita` (`livello`) VALUES 
('Critica (24h)'),
('Alta (7gg)'),
('Media (30gg)'),
('Bassa (90gg)');

-- 4. POPOLAMENTO PROFILO (Esempi NIS2)
INSERT INTO `profilo` (`nome`, `tipo`) VALUES 
('Cyber Hygiene', 'Standard'),
('Gestione Incidenti', 'Critico'),
('Sicurezza Catena Approvvigionamento', 'Fornitori');

-- 5. POPOLAMENTO ASSET (Esempi realistici)
INSERT INTO `asset` (`id`, `nome`, `categoria`, `collocazione`, `data_aquisizione`, `versione`) VALUES 
('SRV-001', 'Server SAP Produzione', 'Server HW', 'Data Center A', '2024-01-15', '1.0'),
('FRW-002', 'Firewall Perimetrale', 'Network Device', 'Sede Centrale', '2023-11-10', '2.1'),
('DB-003', 'Database Clienti SQL', 'Software/Data', 'Cloud Azure', '2025-02-20', '1.0');

-- 6. POPOLAMENTO RESPONSABILE
INSERT INTO `responsabile` (`matricola`, `nome`, `cognome`, `ruolo`, `mail`, `telefono`) VALUES 
('M-9001', 'Mario', 'Rossi', 'CISO', 'm.rossi@azienda.it', '021234567'),
('M-9002', 'Elena', 'Verdi', 'IT Manager', 'e.verdi@azienda.it', '027654321');

-- 7. POPOLAMENTO FORNITORE
INSERT INTO `fornitore` (`partitaiva`, `ragione_sociale`, `indirizzo`, `mail`, `telefono`) VALUES 
('1234567890', 'CyberGuard S.p.A.', 'Via Roma 10, Milano', 'support@cyberguard.it', '02888999'),
('0987654321', 'CloudServices Ltd', 'London, UK', 'billing@cloudserv.com', '44123456');

-- 8. POPOLAMENTO SUBCATEGORY (Misure di sicurezza NIS2)
INSERT INTO `subcategory` (`nome`, `descrizione`, `funzione`, `id_priorita`, `id_maturita`) VALUES 
('Backup Dati', 'Politiche di backup e ripristino', 'Protezione', 1, 3),
('Patch Management', 'Aggiornamento sistemi critici', 'Manutenzione', 2, 2),
('MFA', 'Autenticazione a più fattori', 'Access Control', 1, 4);

-- 9. POPOLAMENTO SERVIZIO (Legame tra Asset e Responsabili)
INSERT INTO `servizio` (`id`, `descrizione`, `nome`, `id_asset`, `id_responsabile`, `id_fornitore`, `id_subcategory`) VALUES 
('MGMT-01', 'Gestione ERP Aziendale', 'Servizio ERP', 'SRV-001', 'M-9002', '0987654321', 1),
('SCRT-02', 'Sicurezza Perimetrale', 'Servizio SOC', 'FRW-002', 'M-9001', '1234567890', 3);

-- 10. POPOLAMENTO CONTROLLO (Audit interno)
INSERT INTO `controllo` (`nome`, `tipologia`, `id_profilo`, `id_gradocopertura`, `id_maturita`) VALUES 
('Verifica Backup Settimanale', 'Tecnico', 1, 5, 4),
('Audit Fornitori Annuale', 'Organizzativo', 3, 3, 2);