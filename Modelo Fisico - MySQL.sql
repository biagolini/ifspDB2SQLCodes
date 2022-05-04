-- -----------------------------------------------------
-- Apagar BD antigo, caso exista
-- ----------------------------------------------------- 
DROP DATABASE IF EXISTS GameStore;

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
-- tblGamePlatform
-- -----------------------------------------------------
CREATE TABLE tblGamePlatform (
  idGamePlatform  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
  idHighlight  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
  idGamePlatform INTEGER NOT NULL,
  dsQuantity INTEGER NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblPrice
-- -----------------------------------------------------
CREATE TABLE tblPrice (
  idPrice  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGamePlatform INTEGER NOT NULL,
  dsValue DECIMAL(5,2)  NOT NULL,
  dsDateTimePublish DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE
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
  idCustomer INTEGER NOT NULL,
  idTypeStatusOrder INTEGER NOT NULL,   
  dsDateTimeOrder DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  dsTotalValue DECIMAL(7,2)  NOT NULL,
  dsTrackingCode VARCHAR(100),
  FOREIGN KEY (idCustomer) REFERENCES tblCustomer(idCustomer) ON DELETE CASCADE,
  FOREIGN KEY (idTypeStatusOrder) REFERENCES tblTypeStatusOrder(idTypeStatusOrder) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblIten
-- -----------------------------------------------------
CREATE TABLE tblIten (
  idIten INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idOrder  INTEGER NOT NULL,
  idPrice INTEGER NOT NULL,   
  dsQuantity INTEGER NOT NULL,  
  FOREIGN KEY (idOrder) REFERENCES tblOrder(idOrder) ON DELETE CASCADE,
  FOREIGN KEY (idPrice) REFERENCES tblPrice(idPrice) ON DELETE CASCADE
);

