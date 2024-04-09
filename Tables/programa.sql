CREATE TABLE `programa` (
  `IdPrograma` INT(11) NOT NULL,
  `nomPrograma` VARCHAR(255) DEFAULT NULL,
  `IdFacultad` INT(11) DEFAULT NULL,
  PRIMARY KEY (IdPrograma)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

ALTER TABLE `programa` 
  ADD CONSTRAINT `FK_programa_facultad_idFacultad` FOREIGN KEY (IdFacultad)
    REFERENCES facultad(idFacultad) ON DELETE NO ACTION ON UPDATE NO ACTION;