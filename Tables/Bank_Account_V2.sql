/* AUTHOR: Austin Stockwell
		DATE: 12-29-2019
        SCOPE: Financial Database
*/
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=1;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema Stockwell_Financial
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Stockwell_Financial` DEFAULT CHARACTER SET utf8 ;
USE `Stockwell_Financial` ;

-- -----------------------------------------------------
-- Table `Stockwell_Financial`.`Bank_Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Bank_Account` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Bank_Account` (
  `idBank_Account` INT NOT NULL AUTO_INCREMENT,
  `owner` VARCHAR(50) NULL,
  `type` VARCHAR(25) NULL,
  `brand` VARCHAR(25) NULL,
  `description` VARCHAR(50) NULL,
  `interest_rate` DECIMAL(4,2) NULL,
  `date_acquired` DATE NULL,
  `balance` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`idBank_Account`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- INSERT DATA INTO TABLE
-- -----------------------------------------------------
SELECT * FROM Bank_Account;
INSERT INTO Bank_Account VALUES (1, 'Austin', 'Saving', 'CHASE', 'Personal saving', .05, '2020-01-01', 00.00);
SELECT * FROM Bank_Account;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;