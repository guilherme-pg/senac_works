-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema editora_trio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema editora_trio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `editora_trio` DEFAULT CHARACTER SET utf8 ;
USE `editora_trio` ;

-- -----------------------------------------------------
-- Table `editora_trio`.`Livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Livros` (
  `ISBN` INT NOT NULL,
  `descricao` VARCHAR(225) NOT NULL,
  `titulo` VARCHAR(125) NOT NULL,
  `paginas` INT ZEROFILL NOT NULL,
  `genero` VARCHAR(125) NOT NULL,
  `editora` VARCHAR(125) NOT NULL,
  `autor` VARCHAR(125) NOT NULL,
  `publicacao` INT NOT NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`palavras-chave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`palavras-chave` (
  `ID_palavra_chave` INT NOT NULL,
  `descricao` VARCHAR(225) NULL,
  `palavra` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_palavra_chave`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`area_de_conhecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`area_de_conhecimento` (
  `ID_area_de_conhecimento` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  `area` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_area_de_conhecimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`autores` (
  `ID_autor` INT NOT NULL,
  `nome` VARCHAR(125) NOT NULL,
  `biografia` VARCHAR(225) NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `obras` VARCHAR(125) NULL,
  `nascimento` DATE NULL,
  PRIMARY KEY (`ID_autor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`exemplares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`exemplares` (
  `ID_exemplar` INT NOT NULL,
  `localizacao` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NULL,
  `Livros_ISBN` INT NOT NULL,
  PRIMARY KEY (`ID_exemplar`, `Livros_ISBN`),
  INDEX `fk_exemplares_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_exemplares_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Endereco` (
  `ID_endereco` INT NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NULL,
  `numero` INT ZEROFILL NULL,
  `complemento` VARCHAR(125) NULL,
  PRIMARY KEY (`ID_endereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Departammentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Departammentos` (
  `ID_departamento` INT NOT NULL,
  `departamento` VARCHAR(45) NULL,
  `atividades` VARCHAR(125) NULL,
  `responsavel` VARCHAR(125) NULL,
  PRIMARY KEY (`ID_departamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Funcionarios` (
  `ID_funcionario` INT NOT NULL,
  `cargo` VARCHAR(45) NULL,
  `nome` VARCHAR(125) NOT NULL,
  `telefone` VARCHAR(45) NULL,
  `Endereco_ID_endereco` INT NOT NULL,
  `Departammentos_ID` INT NOT NULL,
  PRIMARY KEY (`ID_funcionario`, `Endereco_ID_endereco`, `Departammentos_ID`),
  INDEX `fk_Funcionarios_Endereco1_idx` (`Endereco_ID_endereco` ASC) VISIBLE,
  INDEX `fk_Funcionarios_Departammentos1_idx` (`Departammentos_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionarios_Endereco1`
    FOREIGN KEY (`Endereco_ID_endereco`)
    REFERENCES `editora_trio`.`Endereco` (`ID_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionarios_Departammentos1`
    FOREIGN KEY (`Departammentos_ID`)
    REFERENCES `editora_trio`.`Departammentos` (`ID_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Vendas` (
  `ID_vendas` INT NOT NULL,
  `pagamento` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `data` DATE NULL,
  `Funcionarios_ID` INT NOT NULL,
  `Funcionarios_Endereco_ID_endereco` INT NOT NULL,
  `Funcionarios_Departammentos_ID` INT NOT NULL,
  PRIMARY KEY (`ID_vendas`, `Funcionarios_ID`, `Funcionarios_Endereco_ID_endereco`, `Funcionarios_Departammentos_ID`),
  INDEX `fk_Vendas_Funcionarios1_idx` (`Funcionarios_ID` ASC, `Funcionarios_Endereco_ID_endereco` ASC, `Funcionarios_Departammentos_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Vendas_Funcionarios1`
    FOREIGN KEY (`Funcionarios_ID` , `Funcionarios_Endereco_ID_endereco` , `Funcionarios_Departammentos_ID`)
    REFERENCES `editora_trio`.`Funcionarios` (`ID_funcionario` , `Endereco_ID_endereco` , `Departammentos_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Cliente` (
  `ID_cliente` INT NOT NULL,
  `nome` VARCHAR(125) NULL,
  `telefone` VARCHAR(45) NULL,
  `Endereco_ID_endereco` INT NOT NULL,
  PRIMARY KEY (`ID_cliente`, `Endereco_ID_endereco`),
  INDEX `fk_Cliente_Endereco1_idx` (`Endereco_ID_endereco` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Endereco1`
    FOREIGN KEY (`Endereco_ID_endereco`)
    REFERENCES `editora_trio`.`Endereco` (`ID_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Pedidos` (
  `ID_pedidos` INT ZEROFILL NOT NULL,
  `data_pedido` DATE NULL,
  `Cliente_ID_cliente` INT NOT NULL,
  `Funcionarios_ID` INT NOT NULL,
  `Funcionarios_Endereco_ID_endereco` INT NOT NULL,
  `Funcionarios_Departammentos_ID` INT NOT NULL,
  `Vendas_ID_vendas` INT NULL,
  `Vendas_Funcionarios_ID` INT NULL,
  `Vendas_Funcionarios_Endereco_ID_endereco` INT NULL,
  `Vendas_Funcionarios_Departammentos_ID` INT NULL,
  PRIMARY KEY (`ID_pedidos`, `Cliente_ID_cliente`, `Funcionarios_ID`, `Funcionarios_Endereco_ID_endereco`, `Funcionarios_Departammentos_ID`, `Vendas_ID_vendas`, `Vendas_Funcionarios_ID`, `Vendas_Funcionarios_Endereco_ID_endereco`, `Vendas_Funcionarios_Departammentos_ID`),
  INDEX `fk_Pedidos_Cliente1_idx` (`Cliente_ID_cliente` ASC) VISIBLE,
  INDEX `fk_Pedidos_Funcionarios1_idx` (`Funcionarios_ID` ASC, `Funcionarios_Endereco_ID_endereco` ASC, `Funcionarios_Departammentos_ID` ASC) VISIBLE,
  INDEX `fk_Pedidos_Vendas1_idx` (`Vendas_ID_vendas` ASC, `Vendas_Funcionarios_ID` ASC, `Vendas_Funcionarios_Endereco_ID_endereco` ASC, `Vendas_Funcionarios_Departammentos_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_Cliente1`
    FOREIGN KEY (`Cliente_ID_cliente`)
    REFERENCES `editora_trio`.`Cliente` (`ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Funcionarios1`
    FOREIGN KEY (`Funcionarios_ID` , `Funcionarios_Endereco_ID_endereco` , `Funcionarios_Departammentos_ID`)
    REFERENCES `editora_trio`.`Funcionarios` (`ID_funcionario` , `Endereco_ID_endereco` , `Departammentos_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Vendas1`
    FOREIGN KEY (`Vendas_ID_vendas` , `Vendas_Funcionarios_ID` , `Vendas_Funcionarios_Endereco_ID_endereco` , `Vendas_Funcionarios_Departammentos_ID`)
    REFERENCES `editora_trio`.`Vendas` (`ID_vendas` , `Funcionarios_ID` , `Funcionarios_Endereco_ID_endereco` , `Funcionarios_Departammentos_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`palavras-chave_has_Livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`palavras-chave_has_Livros` (
  `palavras-chave_ID_palavra_chave` INT NOT NULL,
  `Livros_ISBN` INT NOT NULL,
  PRIMARY KEY (`palavras-chave_ID_palavra_chave`, `Livros_ISBN`),
  INDEX `fk_palavras-chave_has_Livros_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  INDEX `fk_palavras-chave_has_Livros_palavras-chave_idx` (`palavras-chave_ID_palavra_chave` ASC) VISIBLE,
  CONSTRAINT `fk_palavras-chave_has_Livros_palavras-chave`
    FOREIGN KEY (`palavras-chave_ID_palavra_chave`)
    REFERENCES `editora_trio`.`palavras-chave` (`ID_palavra_chave`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_palavras-chave_has_Livros_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Livros_has_area_de_conhecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Livros_has_area_de_conhecimento` (
  `Livros_ISBN` INT NOT NULL,
  `area_de_conhecimento_ID` INT NOT NULL,
  PRIMARY KEY (`Livros_ISBN`, `area_de_conhecimento_ID`),
  INDEX `fk_Livros_has_area_de_conhecimento_area_de_conhecimento1_idx` (`area_de_conhecimento_ID` ASC) VISIBLE,
  INDEX `fk_Livros_has_area_de_conhecimento_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Livros_has_area_de_conhecimento_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livros_has_area_de_conhecimento_area_de_conhecimento1`
    FOREIGN KEY (`area_de_conhecimento_ID`)
    REFERENCES `editora_trio`.`area_de_conhecimento` (`ID_area_de_conhecimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Livros_has_autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Livros_has_autores` (
  `Livros_ISBN` INT NOT NULL,
  `autores_ID` INT NOT NULL,
  PRIMARY KEY (`Livros_ISBN`, `autores_ID`),
  INDEX `fk_Livros_has_autores_autores1_idx` (`autores_ID` ASC) VISIBLE,
  INDEX `fk_Livros_has_autores_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Livros_has_autores_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livros_has_autores_autores1`
    FOREIGN KEY (`autores_ID`)
    REFERENCES `editora_trio`.`autores` (`ID_autor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Livros_has_Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Livros_has_Pedidos` (
  `Livros_ISBN` INT NOT NULL,
  `Pedidos_ID_pedidos` INT ZEROFILL NOT NULL,
  `Pedidos_Cliente_ID_cliente` INT NOT NULL,
  PRIMARY KEY (`Livros_ISBN`, `Pedidos_ID_pedidos`, `Pedidos_Cliente_ID_cliente`),
  INDEX `fk_Livros_has_Pedidos_Pedidos1_idx` (`Pedidos_ID_pedidos` ASC, `Pedidos_Cliente_ID_cliente` ASC) VISIBLE,
  INDEX `fk_Livros_has_Pedidos_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Livros_has_Pedidos_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livros_has_Pedidos_Pedidos1`
    FOREIGN KEY (`Pedidos_ID_pedidos` , `Pedidos_Cliente_ID_cliente`)
    REFERENCES `editora_trio`.`Pedidos` (`ID_pedidos` , `Cliente_ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
