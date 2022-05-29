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
CREATE TABLE GameStore.tblTypeGenre (
  idTypeGenre INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);

-- -----------------------------------------------------
-- tblTypePlatform
-- -----------------------------------------------------
CREATE TABLE GameStore.tblTypePlatform (
  idTypePlatform INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescription VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblPublisher
-- -----------------------------------------------------
CREATE TABLE GameStore.tblPublisher (
  idPublisher INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescription VARCHAR(100) NOT NULL,
  dsWikipediaLink VARCHAR(100),
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblGame
-- -----------------------------------------------------
CREATE TABLE GameStore.tblGame (
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
CREATE TABLE GameStore.tblGamePlatform (
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
CREATE TABLE GameStore.tblMedia (
  idMedia  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGame INTEGER NOT NULL,
  isVideo BOOLEAN NOT NULL, 
  dsUrl  VARCHAR(175) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1, 
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblHighlight
-- -----------------------------------------------------
CREATE TABLE GameStore.tblHighlight (
  idHighlight  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGame INTEGER NOT NULL,
  dsHighlightHeader  VARCHAR(100) NOT NULL,
  dsHighlightImage  VARCHAR(150) NOT NULL,
  dsHighlightDescription VARCHAR(500) NOT NULL,
  dsPublicationDate DATE NOT NULL, 
  stActive BOOLEAN NOT NULL DEFAULT 1,
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblTypeState
-- -----------------------------------------------------
CREATE TABLE GameStore.tblTypeState (
  idTypeState  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsAbbreviation VARCHAR(2) NOT NULL,
  dsName VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblPrice
-- -----------------------------------------------------
CREATE TABLE GameStore.tblPrice (
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
CREATE TABLE GameStore.tblTypeStatusOrder (
  idTypeStatusOrder  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblCustomer
-- -----------------------------------------------------
CREATE TABLE GameStore.tblCustomer (
  idCustomer  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
CREATE TABLE GameStore.tblOrder (
  idOrder  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  idCustomer INTEGER NOT NULL,
  idTypeStatusOrder INTEGER NOT NULL,   
  dsDateTimeOrder DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  dsTotalValue DECIMAL(10,2) DEFAULT 0,
  dsTrackingCode VARCHAR(100),
  FOREIGN KEY (idCustomer) REFERENCES tblCustomer(idCustomer) ON DELETE CASCADE,
  FOREIGN KEY (idTypeStatusOrder) REFERENCES tblTypeStatusOrder(idTypeStatusOrder) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblItem
-- -----------------------------------------------------
CREATE TABLE GameStore.tblItem (
  idItem INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idOrder  INTEGER NOT NULL,
  idPrice INTEGER NOT NULL,   
  dsQuantity INTEGER NOT NULL,  
  FOREIGN KEY (idOrder) REFERENCES tblOrder(idOrder) ON DELETE CASCADE,
  FOREIGN KEY (idPrice) REFERENCES tblPrice(idPrice) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblUserProfile
-- -----------------------------------------------------
CREATE TABLE GameStore.tblUserProfile (
  idUserProfile INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescription VARCHAR(255) NOT NULL UNIQUE,
  isFromCompany BOOLEAN NOT NULL DEFAULT 0
);

-- -----------------------------------------------------
-- tblUser
-- -----------------------------------------------------
CREATE TABLE GameStore.tblUser (
  idUser  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCustomer  INTEGER,
  dsName VARCHAR(255) NOT NULL,
  dsUsername VARCHAR(255) UNIQUE,  
  dsPassword  VARCHAR(255),
  dsPasswordDateTimeLastEdition  DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  idUserProfile INTEGER  NOT NULL DEFAULT 2,
  stActive BIT NOT NULL DEFAULT 1, 
  FOREIGN KEY (idUserProfile) REFERENCES tblUserProfile(idUserProfile),
  FOREIGN KEY (idCustomer) REFERENCES tblCustomer(idCustomer)
);

-- -----------------------------------------------------
-- tblTypeWarehouseMovement
-- -----------------------------------------------------
CREATE TABLE GameStore.tblTypeWarehouseMovement (
  idTypeWarehouseMovement  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblWarehouseEntrance
-- -----------------------------------------------------
CREATE TABLE GameStore.tblWarehouseEntrance (
  idWarehouseEntrance  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGamePlatform INTEGER NOT NULL,
  idTypeWarehouseMovement  INTEGER NOT NULL  DEFAULT 1,
  dsQuantity INTEGER NOT NULL,
  dsMovementDateTime DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE,
  FOREIGN KEY (idTypeWarehouseMovement) REFERENCES tblTypeWarehouseMovement(idTypeWarehouseMovement) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblWarehouseExit
-- -----------------------------------------------------
CREATE TABLE GameStore.tblWarehouseExit (
  idWarehouseExit  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGamePlatform INTEGER NOT NULL,
  idTypeWarehouseMovement  INTEGER NOT NULL,
  dsQuantity INTEGER NOT NULL,
  dsMovementDateTime DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE,
  FOREIGN KEY (idTypeWarehouseMovement) REFERENCES tblTypeWarehouseMovement(idTypeWarehouseMovement) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblWarehouseBalance
-- -----------------------------------------------------
CREATE TABLE GameStore.tblWarehouseBalance (
  idWarehouseBalance  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idGamePlatform INTEGER NOT NULL,
  dsQuantity INTEGER NOT NULL DEFAULT 0,
  dsLastUpdate DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE
);


