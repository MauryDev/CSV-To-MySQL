
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LivrariaIFBA`;

-- -----------------------------------------------------
-- Table `LivrariaIFBA`.`Livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LivrariaIFBA`.`Livros` (
  `idLivros` INT NOT NULL,
  `Autor` VARCHAR(45) NULL,
  `Num_Capitulos` INT NULL,
  `Num_Paginas` VARCHAR(45) NULL,
  `Nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idLivros`))
;


-- -----------------------------------------------------
-- Table `LivrariaIFBA`.`Alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LivrariaIFBA`.`Alunos` (
  `idAlunos` INT NOT NULL,
  `Curso` VARCHAR(45) NULL,
  `CPF` VARCHAR(45) NULL,
  `RG` VARCHAR(45) NULL,
  `Nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idAlunos`))
;


-- -----------------------------------------------------
-- Table `LivrariaIFBA`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LivrariaIFBA`.`Pedidos` (
  `idPedidos` INT NOT NULL,
  `id_Aluno` INT NULL,
  `id_Livro` INT NULL,
  `PrazodeEntrega` DATE NULL,
  PRIMARY KEY (`idPedidos`))
;
