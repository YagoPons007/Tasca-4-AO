-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Client` (
  `idClient` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `Usuari` VARCHAR(45) NULL,
  `Contrasenya` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `Correu` VARCHAR(45) NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehicle` (
  `Matricula` INT NOT NULL,
  `NumCarroseria` VARCHAR(45) NULL,
  `Marca` VARCHAR(45) NULL,
  `Medelo` VARCHAR(45) NULL,
  `Client_idClient` INT NOT NULL,
  PRIMARY KEY (`Matricula`),
  INDEX `fk_Vehicle_Client_idx` (`Client_idClient` ASC) VISIBLE,
  CONSTRAINT `fk_Vehicle_Client`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `mydb`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleat` (
  `Telefon` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  PRIMARY KEY (`Telefon`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cita` (
  `idCita` INT NOT NULL,
  `Data` VARCHAR(45) NULL,
  `Hora` VARCHAR(45) NULL,
  `Box` VARCHAR(45) NULL,
  `Vehicle_Matricula` INT NOT NULL,
  `Empleat_Telefon` INT NOT NULL,
  PRIMARY KEY (`idCita`),
  INDEX `fk_Cita_Vehicle1_idx` (`Vehicle_Matricula` ASC) VISIBLE,
  INDEX `fk_Cita_Empleat1_idx` (`Empleat_Telefon` ASC) VISIBLE,
  CONSTRAINT `fk_Cita_Vehicle1`
    FOREIGN KEY (`Vehicle_Matricula`)
    REFERENCES `mydb`.`Vehicle` (`Matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cita_Empleat1`
    FOREIGN KEY (`Empleat_Telefon`)
    REFERENCES `mydb`.`Empleat` (`Telefon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
