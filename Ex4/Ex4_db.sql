-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ex4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ex4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ex4` ;
USE `Ex4` ;

-- -----------------------------------------------------
-- Table `Ex4`.`Venedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex4`.`Venedor` (
  `DNI` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognom` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex4`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex4`.`Client` (
  `DNI` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognom` VARCHAR(45) NULL,
  `VIP` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex4`.`TipusPolissa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex4`.`TipusPolissa` (
  `idTipusPolissa` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Descripcio` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipusPolissa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex4`.`Polissa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex4`.`Polissa` (
  `idPolissa` INT NOT NULL,
  `NumPolissa` VARCHAR(45) NULL,
  `PreuAnual` VARCHAR(45) NULL,
  `TipusPagament` VARCHAR(45) NULL,
  `DataContratació` VARCHAR(45) NULL,
  `IniciVigencia` VARCHAR(45) NULL,
  `FiVigencia` VARCHAR(45) NULL,
  `Venedor_DNI` INT NOT NULL,
  `TipusPolissa_idTipusPolissa` INT NOT NULL,
  `Client_DNI` INT NOT NULL,
  PRIMARY KEY (`idPolissa`),
  INDEX `fk_Polissa_Venedor_idx` (`Venedor_DNI` ASC) VISIBLE,
  INDEX `fk_Polissa_TipusPolissa1_idx` (`TipusPolissa_idTipusPolissa` ASC) VISIBLE,
  INDEX `fk_Polissa_Client1_idx` (`Client_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Polissa_Venedor`
    FOREIGN KEY (`Venedor_DNI`)
    REFERENCES `Ex4`.`Venedor` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Polissa_TipusPolissa1`
    FOREIGN KEY (`TipusPolissa_idTipusPolissa`)
    REFERENCES `Ex4`.`TipusPolissa` (`idTipusPolissa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Polissa_Client1`
    FOREIGN KEY (`Client_DNI`)
    REFERENCES `Ex4`.`Client` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
