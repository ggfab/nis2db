CREATE DATABASE IF NOT EXISTS `nis2_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
use nis2_db;
CREATE TABLE `asset` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collocazione` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_aquisizione` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versione` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `asset_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `idasset` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collocazione` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_aquisizione` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `versione` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idhistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `fornitore` (
  `partitaiva` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ragione_sociale` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indirizzo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`partitaiva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `responsabile` (
  `matricola` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cognome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruolo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `responsabile_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `matricola` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cognome` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruolo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idhistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `fornitore_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `partitaiva` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ragione_sociale` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indirizzo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idhistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `grado_copertura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valore` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_maturita` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evidenze` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `grado_copertura_history` (
  `id_history` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `valore` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_maturita` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evidenze` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `profilo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `profilo_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idhistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `maturita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `livello_cmmi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `priorita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `livello` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `controllo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipologia` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_profilo` int NOT NULL,
  `id_gradocopertura` int NOT NULL,
  `id_maturita` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `controllo_profilo_idx` (`id_profilo`),
  KEY `controllo_gradocopertura_idx` (`id_gradocopertura`),
  KEY `controllo_maturita_idx` (`id_maturita`),
  CONSTRAINT `controllo_gradocopertura` FOREIGN KEY (`id_gradocopertura`) REFERENCES `grado_copertura` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `controllo_maturita` FOREIGN KEY (`id_maturita`) REFERENCES `maturita` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `controllo_profilo` FOREIGN KEY (`id_profilo`) REFERENCES `profilo` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `controllo_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipologia` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_profilo` int NOT NULL,
  `id_gradocopertura` int NOT NULL,
  `id_maturita` int NOT NULL,
  PRIMARY KEY (`idhistory`),
  KEY `controllo_profilo_id2` (`id_profilo`),
  KEY `controllo_gradocopertura_id2` (`id_gradocopertura`),
  KEY `controllo_maturita_id2` (`id_maturita`),
  CONSTRAINT `controllo_gradocopertura2` FOREIGN KEY (`id_gradocopertura`) REFERENCES `grado_copertura` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `controllo_maturita2` FOREIGN KEY (`id_maturita`) REFERENCES `maturita` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `controllo_profilo2` FOREIGN KEY (`id_profilo`) REFERENCES `profilo` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `funzione` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_priorita` int NOT NULL,
  `id_maturita` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategory_priorita_idx` (`id_priorita`),
  KEY `subcategory_maturita_idx` (`id_maturita`),
  CONSTRAINT `subcategory_maturita` FOREIGN KEY (`id_maturita`) REFERENCES `maturita` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `subcategory_priorita` FOREIGN KEY (`id_priorita`) REFERENCES `priorita` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `subcategory_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `funzione` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_priorita` int NOT NULL,
  `id_maturita` int NOT NULL,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idhistory`),
  KEY `subcategory_priorita_id2` (`id_priorita`),
  KEY `subcategory_maturita_id2` (`id_maturita`),
  CONSTRAINT `subcategory_maturita2` FOREIGN KEY (`id_maturita`) REFERENCES `maturita` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `subcategory_priorita2` FOREIGN KEY (`id_priorita`) REFERENCES `priorita` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `servizio` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_asset` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_responsabile` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_fornitore` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_subcategory` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_asset` (`id_asset`),
  KEY `servizio_fornitore` (`id_fornitore`),
  KEY `servizio_responsabile` (`id_responsabile`),
  KEY `servizio_subcategory_idx` (`id_subcategory`),
  CONSTRAINT `servizio_fornitore` FOREIGN KEY (`id_fornitore`) REFERENCES `fornitore` (`partitaiva`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `servizio_ibfk_1` FOREIGN KEY (`id_asset`) REFERENCES `asset` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `servizio_responsabile` FOREIGN KEY (`id_responsabile`) REFERENCES `responsabile` (`matricola`) ON UPDATE CASCADE,
  CONSTRAINT `servizio_subcategory` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategory` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `servizio_history` (
  `idhistory` int NOT NULL AUTO_INCREMENT,
  `id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_asset` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_responsabile` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_fornitore` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_subcategory` int DEFAULT NULL,
  PRIMARY KEY (`idhistory`),
  KEY `id_asset` (`id_asset`),
  KEY `servizio_fornitore_history` (`id_fornitore`),
  KEY `servizio_responsabile_history` (`id_responsabile`),
  KEY `servizio_subcategory_history_idx` (`id_subcategory`),
  CONSTRAINT `servizio_fornitore_history` FOREIGN KEY (`id_fornitore`) REFERENCES `fornitore` (`partitaiva`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `servizio_history_ibfk_1` FOREIGN KEY (`id_asset`) REFERENCES `asset` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `servizio_responsabile_history` FOREIGN KEY (`id_responsabile`) REFERENCES `responsabile` (`matricola`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `servizio_subcategory_history` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategory` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELIMITER //

CREATE TRIGGER before_asset_update BEFORE UPDATE ON asset FOR EACH ROW
BEGIN
    INSERT INTO asset_history (idasset, nome, categoria, collocazione, data_aquisizione, versione, data)
    VALUES (OLD.id, OLD.nome, OLD.categoria, OLD.collocazione, OLD.data_aquisizione, OLD.versione, NOW());
END; //

CREATE TRIGGER before_asset_delete BEFORE DELETE ON asset FOR EACH ROW
BEGIN
    INSERT INTO asset_history (idasset, nome, categoria, collocazione, data_aquisizione, versione, data)
    VALUES (OLD.id, OLD.nome, OLD.categoria, OLD.collocazione, OLD.data_aquisizione, OLD.versione, NOW());
END; //


CREATE TRIGGER before_controllo_update BEFORE UPDATE ON controllo FOR EACH ROW
BEGIN
    INSERT INTO controllo_history (id, nome, tipologia, id_profilo, id_gradocopertura, id_maturita, data)
    VALUES (OLD.id, OLD.nome, OLD.tipologia, OLD.id_profilo, OLD.id_gradocopertura, OLD.id_maturita, NOW());
END; //

CREATE TRIGGER before_controllo_delete BEFORE DELETE ON controllo FOR EACH ROW
BEGIN
    INSERT INTO controllo_history (id, nome, tipologia, id_profilo, id_gradocopertura, id_maturita, data)
    VALUES (OLD.id, OLD.nome, OLD.tipologia, OLD.id_profilo, OLD.id_gradocopertura, OLD.id_maturita, NOW());
END; //

CREATE TRIGGER before_fornitore_update BEFORE UPDATE ON fornitore FOR EACH ROW
BEGIN
    INSERT INTO fornitore_history (partitaiva, ragione_sociale, indirizzo, mail, telefono, data)
    VALUES (OLD.partitaiva, OLD.ragione_sociale, OLD.indirizzo, OLD.mail, OLD.telefono, NOW());
END; //

CREATE TRIGGER before_fornitore_delete BEFORE DELETE ON fornitore FOR EACH ROW
BEGIN
    INSERT INTO fornitore_history (partitaiva, ragione_sociale, indirizzo, mail, telefono, data)
    VALUES (OLD.partitaiva, OLD.ragione_sociale, OLD.indirizzo, OLD.mail, OLD.telefono, NOW());
END; //

CREATE TRIGGER before_grado_copertura_update BEFORE UPDATE ON grado_copertura FOR EACH ROW
BEGIN
    INSERT INTO grado_copertura_history (id, valore, note_maturita, evidenze, data)
    VALUES (OLD.id, OLD.valore, OLD.note_maturita, OLD.evidenze, NOW());
END; //

CREATE TRIGGER before_profilo_update BEFORE UPDATE ON profilo FOR EACH ROW
BEGIN
    INSERT INTO profilo_history (id, nome, tipo, data)
    VALUES (OLD.id, OLD.nome, OLD.tipo, NOW());
END; //

CREATE TRIGGER before_profilo_delete 
BEFORE DELETE ON profilo FOR EACH ROW
BEGIN
    INSERT INTO profilo_history (id, nome, tipo, data)
    VALUES (OLD.id, OLD.nome, OLD.tipo, NOW());
END; //

CREATE TRIGGER before_grado_copertura_delete BEFORE DELETE ON grado_copertura FOR EACH ROW
BEGIN
    INSERT INTO grado_copertura_history (id, valore, note_maturita, evidenze, data)
    VALUES (OLD.id, OLD.valore, OLD.note_maturita, OLD.evidenze, NOW());
END; //

CREATE TRIGGER before_responsabile_update BEFORE UPDATE ON responsabile FOR EACH ROW
BEGIN
    INSERT INTO responsabile_history (matricola, nome, cognome, ruolo, mail, telefono, data)
    VALUES (OLD.matricola, OLD.nome, OLD.cognome, OLD.ruolo, OLD.mail, OLD.telefono, NOW());
END; //

CREATE TRIGGER before_responsabile_delete BEFORE DELETE ON responsabile FOR EACH ROW
BEGIN
    INSERT INTO responsabile_history (matricola, nome, cognome, ruolo, mail, telefono, data)
    VALUES (OLD.matricola, OLD.nome, OLD.cognome, OLD.ruolo, OLD.mail, OLD.telefono, NOW());
END; //

CREATE TRIGGER before_servizio_update BEFORE UPDATE ON servizio FOR EACH ROW
BEGIN
    INSERT INTO servizio_history (id, descrizione, nome, id_asset, id_responsabile, id_fornitore, id_subcategory, data)
    VALUES (OLD.id, OLD.descrizione, OLD.nome, OLD.id_asset, OLD.id_responsabile, OLD.id_fornitore, OLD.id_subcategory, NOW());
END; //

CREATE TRIGGER before_servizio_delete BEFORE DELETE ON servizio FOR EACH ROW
BEGIN
    INSERT INTO servizio_history (id, descrizione, nome, id_asset, id_responsabile, id_fornitore, id_subcategory, data)
    VALUES (OLD.id, OLD.descrizione, OLD.nome, OLD.id_asset, OLD.id_responsabile, OLD.id_fornitore, OLD.id_subcategory, NOW());
END; //

CREATE TRIGGER before_subcategory_update BEFORE UPDATE ON subcategory FOR EACH ROW
BEGIN
    INSERT INTO subcategory_history (id, nome, descrizione, funzione, id_priorita, id_maturita, data)
    VALUES (OLD.id, OLD.nome, OLD.descrizione, OLD.funzione, OLD.id_priorita, OLD.id_maturita, NOW());
END; //

CREATE TRIGGER before_subcategory_delete BEFORE DELETE ON subcategory FOR EACH ROW
BEGIN
    INSERT INTO subcategory_history (id, nome, descrizione, funzione, id_priorita, id_maturita, data)
    VALUES (OLD.id, OLD.nome, OLD.descrizione, OLD.funzione, OLD.id_priorita, OLD.id_maturita, NOW());
END; //

DELIMITER ;