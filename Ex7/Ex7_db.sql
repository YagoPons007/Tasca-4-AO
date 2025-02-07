-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ex7
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ex7
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ex7` ;
USE `Ex7` ;

-- -----------------------------------------------------
-- Table `Ex7`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex7`.`Client` (
  `idClient` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `Adressa` VARCHAR(45) NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex7`.`Empleat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex7`.`Empleat` (
  `idEmpleat` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `DNI` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `Adressa` VARCHAR(45) NULL,
  `DataNaixement` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpleat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex7`.`Ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex7`.`Ticket` (
  `idTicket` INT NOT NULL,
  `NumFactura` VARCHAR(45) NULL,
  `Dia` VARCHAR(45) NULL,
  `Hora` VARCHAR(45) NULL,
  `Client_idClient` INT NOT NULL,
  `Empleat_idEmpleat` INT NOT NULL,
  PRIMARY KEY (`idTicket`),
  INDEX `fk_Ticket_Client_idx` (`Client_idClient` ASC) VISIBLE,
  INDEX `fk_Ticket_Empleat1_idx` (`Empleat_idEmpleat` ASC) VISIBLE,
  CONSTRAINT `fk_Ticket_Client`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `Ex7`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ticket_Empleat1`
    FOREIGN KEY (`Empleat_idEmpleat`)
    REFERENCES `Ex7`.`Empleat` (`idEmpleat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex7`.`Producte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex7`.`Producte` (
  `idProducte` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Descripcio` VARCHAR(45) NULL,
  `Preu` VARCHAR(45) NULL,
  `IVA` VARCHAR(45) NULL,
  `CodiBarres` VARCHAR(45) NULL,
  PRIMARY KEY (`idProducte`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ex7`.`LiniaTicket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex7`.`LiniaTicket` (
  `idLiniaTicket` INT NOT NULL,
  `Descompte` VARCHAR(45) NULL,
  `ImportTotal` VARCHAR(45) NULL,
  `Ticket_idTicket` INT NOT NULL,
  `Producte_idProducte` INT NOT NULL,
  PRIMARY KEY (`idLiniaTicket`),
  INDEX `fk_LiniaTicket_Ticket1_idx` (`Ticket_idTicket` ASC) VISIBLE,
  INDEX `fk_LiniaTicket_Producte1_idx` (`Producte_idProducte` ASC) VISIBLE,
  CONSTRAINT `fk_LiniaTicket_Ticket1`
    FOREIGN KEY (`Ticket_idTicket`)
    REFERENCES `Ex7`.`Ticket` (`idTicket`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LiniaTicket_Producte1`
    FOREIGN KEY (`Producte_idProducte`)
    REFERENCES `Ex7`.`Producte` (`idProducte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
