-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ibmhranalyticsdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ibmhranalyticsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ibmhranalyticsdb` DEFAULT CHARACTER SET latin1 ;
USE `ibmhranalyticsdb` ;

-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`employees` (
  `Age` INT NULL DEFAULT NULL,
  `Attrition` TEXT NULL DEFAULT NULL,
  `DistanceFromHome` INT NULL DEFAULT NULL,
  `Education` INT NULL DEFAULT NULL,
  `EducationField` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NOT NULL,
  `Gender` TEXT NULL DEFAULT NULL,
  `MaritalStatus` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`departmentroles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`departmentroles` (
  `JobRole` TEXT NULL DEFAULT NULL,
  `Department` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_1` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_1`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`education`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`education` (
  `Education` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_2` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_2`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`employeereview`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`employeereview` (
  `EmployeeNumber` INT NULL DEFAULT NULL,
  `EnvironmentSatisfaction` INT NULL DEFAULT NULL,
  `JobInvolvement` INT NULL DEFAULT NULL,
  `JobSatisfaction` INT NULL DEFAULT NULL,
  `RelationshipSatisfaction` INT NULL DEFAULT NULL,
  `WorkLifeBalance` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_3` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_3`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`environmentsatisfaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`environmentsatisfaction` (
  `EnvironmentSatisfaction` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_4` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_4`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`jobinvolvment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`jobinvolvment` (
  `JobInvolvement` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_5` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_5`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`jobsatisfaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`jobsatisfaction` (
  `JobSatisfaction` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_6` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_6`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`performanceandsalary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`performanceandsalary` (
  `PercentSalaryHike` TEXT NULL DEFAULT NULL,
  `PerformanceRating` INT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_7` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_7`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`performancerating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`performancerating` (
  `PerformanceRating` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_8` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_8`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`relationshipsatisfaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`relationshipsatisfaction` (
  `RelationshipSatisfaction` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_9` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_9`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`salaries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`salaries` (
  `EmployeeNumber` INT NULL DEFAULT NULL,
  `DailyRate` INT NULL DEFAULT NULL,
  `HourlyRate` INT NULL DEFAULT NULL,
  `MonthlyIncome` INT NULL DEFAULT NULL,
  `MonthlyRate` INT NULL DEFAULT NULL,
  `OverTime` TEXT NULL DEFAULT NULL,
  `PercentSalaryHike` INT NULL DEFAULT NULL,
  `StockOptionLevel` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_10` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_10`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`workexpereince`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`workexpereince` (
  `BusinessTravel` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  `NumCompaniesWorked` INT NULL DEFAULT NULL,
  `TotalWorkingYears` INT NULL DEFAULT NULL,
  `TrainingTimesLastYear` INT NULL DEFAULT NULL,
  `YearsAtCompany` INT NULL DEFAULT NULL,
  `YearsInCurrentRole` INT NULL DEFAULT NULL,
  `YearsSinceLastPromotion` INT NULL DEFAULT NULL,
  `YearsWithCurrManager` INT NULL DEFAULT NULL,
  `JobLevel` INT NULL DEFAULT NULL,
  `JobRole` TEXT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_11` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_11`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ibmhranalyticsdb`.`worklifebalance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ibmhranalyticsdb`.`worklifebalance` (
  `WorkLifeBalance` INT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `EmployeeNumber` INT NULL DEFAULT NULL,
  INDEX `EmployeeNumber_fk_12` (`EmployeeNumber` ASC) VISIBLE,
  CONSTRAINT `EmployeeNumber_fk_12`
    FOREIGN KEY (`EmployeeNumber`)
    REFERENCES `ibmhranalyticsdb`.`employees` (`EmployeeNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


show tables;