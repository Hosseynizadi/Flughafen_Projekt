USE projekt_flughafen;

DROP TABLE IF EXISTS fluglinie;

CREATE TABLE fluglinie (

    fluglinie_id           INT                    NOT NULL  AUTO_INCREMENT,
    iata  		           CHAR(2)   UNIQUE       NOT NULL,
    firmenname             VARCHAR(30)            NOT NULL,
    heimat_flughafen       SMALLINT               NOT NULL,
    flug_id                INT                    NOT NULL,
    flugzeug_id            INT                    NOT NULL,
    PRIMARY KEY (fluglinie_id),
    FOREIGN KEY (`heimat_flughafen`) REFERENCES `flughafen`(`flughafen_id`)         ON DELETE CASCADE,
    FOREIGN KEY (`flug_id`)          REFERENCES `flug`(`flug_id`)              ON DELETE CASCADE,
    FOREIGN KEY (`flugzeug_id`)      REFERENCES `flugzeug`(`flugzeug_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
