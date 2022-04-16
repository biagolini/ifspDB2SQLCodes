-- -----------------------------------------------------
-- Criar BD
-- -----------------------------------------------------
CREATE DATABASE GameStore;

-- -----------------------------------------------------
-- Schema
-- -----------------------------------------------------
USE GameStore;


-- -----------------------------------------------------
-- tblTypeGenre
-- -----------------------------------------------------
CREATE TABLE tblTypeGenre (
  idTypeGenre INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);

-- -----------------------------------------------------
-- tblTypePlatform
-- -----------------------------------------------------
CREATE TABLE tblTypePlatform (
  idTypePlatform INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescription VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblPublisher
-- -----------------------------------------------------
CREATE TABLE tblPublisher (
  idPublisher INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescription VARCHAR(100) NOT NULL,
  dsWikipediaLink VARCHAR(100),
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblGame
-- -----------------------------------------------------
CREATE TABLE tblGame (
  idGame INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsName VARCHAR(150) NOT NULL,
  dsReleaseDate DATE NOT NULL,
  idTypeGenre INTEGER NOT NULL,
  idPublisher INTEGER NOT NULL,
  dsCover VARCHAR(200) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idTypeGenre) REFERENCES tblTypeGenre(idTypeGenre) ON DELETE CASCADE,
  FOREIGN KEY (idPublisher) REFERENCES tblPublisher(idPublisher) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblGamePlataform
-- -----------------------------------------------------
CREATE TABLE tblGamePlataform (
  idGamePlataform  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGame INTEGER NOT NULL,
  idTypePlatform INTEGER NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE,
  FOREIGN KEY (idTypePlatform) REFERENCES tblTypePlatform(idTypePlatform) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblMedia
-- -----------------------------------------------------
CREATE TABLE tblMedia (
  idMedia  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGame INTEGER NOT NULL,
  isVideo BOOLEAN NOT NULL, 
  dsUrl  VARCHAR(150) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblHighlight
-- -----------------------------------------------------
CREATE TABLE tblHighlight (
  idDestaque  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGame INTEGER NOT NULL,
  dsPublicationDate DATE NOT NULL, 
  stActive BOOLEAN NOT NULL DEFAULT 1,
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblTypeState
-- -----------------------------------------------------
CREATE TABLE tblTypeState (
  idTypeState  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsAbbreviation VARCHAR(2) NOT NULL,
  dsName VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);

-- -----------------------------------------------------
-- tblWarehouseEntrance
-- -----------------------------------------------------
CREATE TABLE tblWarehouseEntrance (
  idWarehouseEntrance  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGamePlataform INTEGER NOT NULL,
  dsQuantity INTEGER NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGamePlataform) REFERENCES tblGamePlataform(idGamePlataform) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblPrice
-- -----------------------------------------------------
-- SEE: https://stackoverflow.com/a/31514576/4678899
CREATE TABLE tblPrice (
  idPrice  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGamePlataform INTEGER NOT NULL,
  dsValue DECIMAL(5,2)  NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGamePlataform) REFERENCES tblGamePlataform(idGamePlataform) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblTypeStatusOrder
-- -----------------------------------------------------
CREATE TABLE tblTypeStatusOrder (
  idTypeStatusOrder  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblCustomer
-- -----------------------------------------------------
CREATE TABLE tblCustomer (
  idCustomer  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsUsername VARCHAR(255) NOT NULL,
  dsFirstName VARCHAR(255) NOT NULL,
  dsLastName VARCHAR(255) NOT NULL,
  dsEmail VARCHAR(255) NOT NULL,
  dsBirthDate DATE NOT NULL,
  dsCPF VARCHAR(14),
  dsStreet VARCHAR(100),
  dsNumber VARCHAR(20),
  dsCity VARCHAR(100),
  idTypeState INTEGER NOT NULL,
  dsZip VARCHAR(9) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idTypeState) REFERENCES tblTypeState(idTypeState) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblOrder
-- -----------------------------------------------------
CREATE TABLE tblOrder (
  idOrder  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idPrice INTEGER NOT NULL,  
  idCustomer INTEGER NOT NULL,
  idTypeStatusOrder INTEGER NOT NULL,   
  dsQuantity INTEGER NOT NULL,  
  dsTrackingCode VARCHAR(100),
  FOREIGN KEY (idPrice) REFERENCES tblPrice(idPrice) ON DELETE CASCADE,
  FOREIGN KEY (idCustomer) REFERENCES tblCustomer(idCustomer) ON DELETE CASCADE,
  FOREIGN KEY (idTypeStatusOrder) REFERENCES tblTypeStatusOrder(idTypeStatusOrder) ON DELETE CASCADE
);

