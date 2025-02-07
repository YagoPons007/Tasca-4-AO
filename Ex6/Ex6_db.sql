-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ex6
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ex6
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ex6` ;
USE `Ex6` ;

-- -----------------------------------------------------
-- Table `Ex6`.`Passatger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex6`.`Passatger` (
  `DNI` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Direccio` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex6`.`Avio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex6`.`Avio` (
  `idAvio` INT NOT NULL,
  `Marca` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Companyia` VARCHAR(45) NULL,
  `Capacitat` VARCHAR(45) NULL,
  PRIMARY KEY (`idAvio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex6`.`Vol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex6`.`Vol` (
  `idVol` INT NOT NULL,
  `HArribada` VARCHAR(45) NULL,
  `Numero` VARCHAR(45) NULL,
  `Origen` VARCHAR(45) NULL,
  `Desti` VARCHAR(45) NULL,
  `HSortida` VARCHAR(45) NULL,
  `Avio_idAvio` INT NOT NULL,
  PRIMARY KEY (`idVol`),
  INDEX `fk_Avio_Avio1_idx` (`Avio_idAvio` ASC) VISIBLE,
  CONSTRAINT `fk_Avio_Avio1`
    FOREIGN KEY (`Avio_idAvio`)
    REFERENCES `Ex6`.`Avio` (`idAvio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex6`.`Reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex6`.`Reserva` (
  `idReserva` INT NOT NULL,
  `Numero` VARCHAR(45) NULL,
  `Data` VARCHAR(45) NULL,
  `Import` VARCHAR(45) NULL,
  `Passatger_DNI` INT NOT NULL,
  `Avio_idVol` INT NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `fk_Reserva_Passatger_idx` (`Passatger_DNI` ASC) VISIBLE,
  INDEX `fk_Reserva_Avio1_idx` (`Avio_idVol` ASC) VISIBLE,
  CONSTRAINT `fk_Reserva_Passatger`
    FOREIGN KEY (`Passatger_DNI`)
    REFERENCES `Ex6`.`Passatger` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reserva_Avio1`
    FOREIGN KEY (`Avio_idVol`)
    REFERENCES `Ex6`.`Vol` (`idVol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
