-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema E09706059
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema E09706059
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `E09706059` ;
USE `E09706059` ;

-- -----------------------------------------------------
-- Table `E09706059`.``
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`DEPARTMENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`DEPARTMENT` (
  `Depart_No` INT NOT NULL,
  `Depart_name` VARCHAR(45) NOT NULL,
  `Manager_Ssn` INT NOT NULL,
  PRIMARY KEY (`Depart_No`, `Manager_Ssn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`EMPLOYEE` (
  `Ssn` INT NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `Middle_name` VARCHAR(45) NULL,
  `Last_name` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(4) NOT NULL,
  `Birthday` DATETIME NOT NULL,
  `Address` VARCHAR(100) NOT NULL,
  `Salary` INT NOT NULL,
  `Dept_No` INT NOT NULL,
  PRIMARY KEY (`Ssn`, `Dept_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`DEPENDENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`DEPENDENT` (
  `Name` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(4) NOT NULL,
  `Relationship` VARCHAR(45) NOT NULL,
  `Birthday` DATETIME NOT NULL,
  `Ssn` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Name`, `Ssn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`PROJECT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`PROJECT` (
  `Project_No` INT NOT NULL,
  `Project_name` VARCHAR(45) NOT NULL,
  `Project_leader_Ssn` VARCHAR(45) NOT NULL,
  `Project_location` VARCHAR(45) NOT NULL,
  `Project_amount` VARCHAR(45) NOT NULL,
  `Depart_No` INT NOT NULL,
  PRIMARY KEY (`Project_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`SUPPLIER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`SUPPLIER` (
  `Sup_No` INT NOT NULL,
  `Sup_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Sup_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`PART`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`PART` (
  `Part_No` INT NOT NULL,
  `Part_name` VARCHAR(45) NULL,
  PRIMARY KEY (`Part_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`EMPLOYEE_has_PROJECT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`EMPLOYEE_has_PROJECT` (
  `EMPLOYEE_Ssn` INT NOT NULL,
  `EMPLOYEE_Dept_No` INT NOT NULL,
  `PROJECT_Project_No` INT NOT NULL,
  PRIMARY KEY (`EMPLOYEE_Ssn`, `EMPLOYEE_Dept_No`, `PROJECT_Project_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`WORKS_ON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`WORKS_ON` (
  `Ssn` INT NOT NULL,
  `Project_No` INT NOT NULL,
  `Hours` FLOAT NOT NULL,
  PRIMARY KEY (`Ssn`, `Project_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`SUPPLY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`SUPPLY` (
  `Project_No` INT NOT NULL,
  `Sup_No` INT NOT NULL,
  `Part_No` INT NOT NULL,
  `Quantity` INT NOT NULL,
  PRIMARY KEY (`Project_No`, `Sup_No`, `Part_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `E09706059`.`LOCATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `E09706059`.`LOCATION` (
  `Dept_No` INT NOT NULL,
  `Location` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Dept_No`, `Location`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
