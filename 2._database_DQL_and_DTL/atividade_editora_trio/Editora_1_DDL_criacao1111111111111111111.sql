-- MySQL Script generated by MySQL Workbench
-- Mon Oct 16 22:53:36 2023
-- Model: New Model    Version: 1.0
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
  `titulo` VARCHAR(125) NOT NULL,
  `editora` VARCHAR(125) NOT NULL,
  `paginas` INT ZEROFILL NOT NULL,
  `ano_publicacao` INT NOT NULL,
  `genero` VARCHAR(125) NOT NULL,
  `descricao` VARCHAR(225) NOT NULL,
  `valor` DECIMAL(7,2) ZEROFILL NOT NULL,
  `estoque` INT ZEROFILL NOT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE INDEX `ISBN_UNIQUE` (`ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`palavras-chave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`palavras-chave` (
  `ID_palavra_chave` INT NOT NULL,
  `descricao` VARCHAR(225) NULL,
  `palavra` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_palavra_chave`),
  UNIQUE INDEX `ID_palavra_chave_UNIQUE` (`ID_palavra_chave` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`area_de_conhecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`area_de_conhecimento` (
  `ID_area_de_conhecimento` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  `area` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_area_de_conhecimento`),
  UNIQUE INDEX `ID_area_de_conhecimento_UNIQUE` (`ID_area_de_conhecimento` ASC) VISIBLE)
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
  PRIMARY KEY (`ID_autor`),
  UNIQUE INDEX `ID_autor_UNIQUE` (`ID_autor` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`exemplares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`exemplares` (
  `ID_exemplar` INT NOT NULL,
  `localizacao` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `Livros_ISBN` INT NOT NULL,
  PRIMARY KEY (`ID_exemplar`, `Livros_ISBN`),
  INDEX `fk_exemplares_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  UNIQUE INDEX `ID_exemplar_UNIQUE` (`ID_exemplar` ASC) VISIBLE,
  CONSTRAINT `fk_exemplares_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Departammentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Departammentos` (
  `ID_departamento` INT NOT NULL,
  `departamento` VARCHAR(45) NOT NULL,
  `atividades` VARCHAR(125) NULL,
  `responsavel` VARCHAR(125) NULL,
  PRIMARY KEY (`ID_departamento`),
  UNIQUE INDEX `ID_departamento_UNIQUE` (`ID_departamento` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Funcionarios` (
  `ID_funcionario` INT NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(125) NOT NULL,
  `telefone` VARCHAR(13) NOT NULL,
  `dataADM` DATE NOT NULL,
  `dataDEM` DATE NOT NULL,
  `salario` DECIMAL(7,2) NOT NULL,
  `Departammentos_ID_departamento` INT NOT NULL,
  PRIMARY KEY (`ID_funcionario`),
  UNIQUE INDEX `ID_funcionario_UNIQUE` (`ID_funcionario` ASC) VISIBLE,
  INDEX `fk_Funcionarios_Departammentos1_idx` (`Departammentos_ID_departamento` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionarios_Departammentos1`
    FOREIGN KEY (`Departammentos_ID_departamento`)
    REFERENCES `editora_trio`.`Departammentos` (`ID_departamento`)
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
  `rua` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(15) NULL,
  `complemento` VARCHAR(125) NULL,
  UNIQUE INDEX `rua_UNIQUE` (`rua` ASC) VISIBLE,
  PRIMARY KEY (`ID_endereco`),
  UNIQUE INDEX `ID_endereco_UNIQUE` (`ID_endereco` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Cliente` (
  `ID_cliente` INT NOT NULL,
  `nome` VARCHAR(125) NOT NULL,
  `telefone` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `Endereco_ID_endereco` INT NOT NULL,
  PRIMARY KEY (`ID_cliente`, `Endereco_ID_endereco`),
  UNIQUE INDEX `ID_cliente_UNIQUE` (`ID_cliente` ASC) VISIBLE,
  INDEX `fk_Cliente_Endereco1_idx` (`Endereco_ID_endereco` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Endereco1`
    FOREIGN KEY (`Endereco_ID_endereco`)
    REFERENCES `editora_trio`.`Endereco` (`ID_endereco`)
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
-- Table `editora_trio`.`Vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Vendas` (
  `ID_venda` INT NOT NULL,
  `pagamento` VARCHAR(45) NOT NULL,
  `data_venda` DATE NOT NULL,
  `valor` DECIMAL(7,2) NOT NULL,
  `desconto` DECIMAL(4,2) NULL,
  `Cliente_ID_cliente` INT NULL,
  `Cliente_Endereco_ID_endereco` INT NULL,
  `Funcionarios_ID_funcionario` INT NOT NULL,
  PRIMARY KEY (`ID_venda`),
  INDEX `fk_Vendas_Cliente1_idx` (`Cliente_ID_cliente` ASC, `Cliente_Endereco_ID_endereco` ASC) VISIBLE,
  INDEX `fk_Vendas_Funcionarios1_idx` (`Funcionarios_ID_funcionario` ASC) VISIBLE,
  CONSTRAINT `fk_Vendas_Cliente1`
    FOREIGN KEY (`Cliente_ID_cliente` , `Cliente_Endereco_ID_endereco`)
    REFERENCES `editora_trio`.`Cliente` (`ID_cliente` , `Endereco_ID_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vendas_Funcionarios1`
    FOREIGN KEY (`Funcionarios_ID_funcionario`)
    REFERENCES `editora_trio`.`Funcionarios` (`ID_funcionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Pedidos` (
  `ID_pedido` INT NOT NULL,
  `data_pedido` DATE NOT NULL,
  `quantidade` INT NOT NULL,
  `status_pedido` VARCHAR(45) NULL,
  `Vendas_ID_venda` INT NULL,
  `Cliente_ID_cliente` INT NOT NULL,
  `Cliente_Endereco_ID_endereco` INT NOT NULL,
  `Vendas_ID_venda1` INT NULL,
  PRIMARY KEY (`ID_pedido`),
  INDEX `fk_Pedidos_Cliente1_idx` (`Cliente_ID_cliente` ASC, `Cliente_Endereco_ID_endereco` ASC) VISIBLE,
  INDEX `fk_Pedidos_Vendas1_idx` (`Vendas_ID_venda1` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_Cliente1`
    FOREIGN KEY (`Cliente_ID_cliente`)
    REFERENCES `editora_trio`.`Cliente` (`ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Vendas1`
    FOREIGN KEY (`Vendas_ID_venda1`)
    REFERENCES `editora_trio`.`Vendas` (`ID_venda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `editora_trio`.`Pedidos_has_Livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editora_trio`.`Pedidos_has_Livros` (
  `Pedidos_ID_pedido` INT NOT NULL,
  `Livros_ISBN` INT NOT NULL,
  PRIMARY KEY (`Pedidos_ID_pedido`, `Livros_ISBN`),
  INDEX `fk_Pedidos_has_Livros_Livros1_idx` (`Livros_ISBN` ASC) VISIBLE,
  INDEX `fk_Pedidos_has_Livros_Pedidos1_idx` (`Pedidos_ID_pedido` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_has_Livros_Pedidos1`
    FOREIGN KEY (`Pedidos_ID_pedido`)
    REFERENCES `editora_trio`.`Pedidos` (`ID_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_has_Livros_Livros1`
    FOREIGN KEY (`Livros_ISBN`)
    REFERENCES `editora_trio`.`Livros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;