-- -----------------------------------------------------
-- Apagar BD antigo, caso exista
-- -----------------------------------------------------
USE master;  
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
  idTypeGenre INTEGER NOT NULL IDENTITY(1,1),
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY(idTypeGenre)
);

-- -----------------------------------------------------
-- tblTypePlatform
-- -----------------------------------------------------
CREATE TABLE tblTypePlatform (
  idTypePlatform INTEGER NOT NULL IDENTITY(1,1),
  dsDescription VARCHAR(50) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY(idTypePlatform)
);

-- -----------------------------------------------------
-- tblPublisher
-- -----------------------------------------------------
CREATE TABLE tblPublisher (
  idPublisher INTEGER NOT NULL IDENTITY(1,1),
  dsDescription VARCHAR(100) NOT NULL,
  dsWikipediaLink VARCHAR(100),
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY(idPublisher)
);

-- -----------------------------------------------------
-- tblGame
-- -----------------------------------------------------
CREATE TABLE tblGame (
  idGame INTEGER NOT NULL IDENTITY(1,1),
  dsName VARCHAR(150) NOT NULL,
  dsReleaseDate DATE NOT NULL,
  idTypeGenre INTEGER NOT NULL,
  idPublisher INTEGER NOT NULL,
  dsCover VARCHAR(200) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY(idGame),
  FOREIGN KEY (idTypeGenre) REFERENCES tblTypeGenre(idTypeGenre) ON DELETE CASCADE, 
  FOREIGN KEY (idPublisher) REFERENCES tblPublisher(idPublisher) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblGamePlatform
-- -----------------------------------------------------
CREATE TABLE tblGamePlatform (
  idGamePlatform INTEGER NOT NULL IDENTITY(1,1),
  idGame INTEGER NOT NULL,
  idTypePlatform INTEGER NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY (idGamePlatform),
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE, 
  FOREIGN KEY (idTypePlatform) REFERENCES tblTypePlatform(idTypePlatform) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblMedia
-- -----------------------------------------------------
CREATE TABLE tblMedia (
  idMedia INTEGER NOT NULL IDENTITY(1,1),
  idGame INTEGER NOT NULL,
  isVideo BIT NOT NULL,
  dsUrl  VARCHAR(150) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY (idMedia),
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblHighlight
-- -----------------------------------------------------
CREATE TABLE tblHighlight (
  idHighlight INTEGER NOT NULL IDENTITY(1,1),
  idGame INTEGER NOT NULL,
  dsPublicationDate DATE NOT NULL, 
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY (idHighlight),
  FOREIGN KEY (idGame) REFERENCES tblGame(idGame) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- tblTypeState
-- -----------------------------------------------------
CREATE TABLE tblTypeState (
  idTypeState INTEGER NOT NULL IDENTITY(1,1),
  dsAbbreviation VARCHAR(2) NOT NULL,
  dsName VARCHAR(50) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY(idTypeState)
);

-- -----------------------------------------------------
-- tblWarehouseEntrance
-- -----------------------------------------------------
CREATE TABLE tblWarehouseEntrance (
  idWarehouseEntrance INTEGER NOT NULL IDENTITY(1,1),
  idGamePlatform INTEGER NOT NULL,
  dsQuantity INTEGER NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY (idWarehouseEntrance),
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE,  
);

-- -----------------------------------------------------
-- tblPrice
-- -----------------------------------------------------
-- SEE: https://stackoverflow.com/a/31514576/4678899
CREATE TABLE tblPrice (
  idPrice INTEGER NOT NULL IDENTITY(1,1),
  idGamePlatform INTEGER NOT NULL,
  dsValue DECIMAL(5,2)  NOT NULL,
  dsDateTimePublish DATETIME NOT NULL DEFAULT GETDATE();
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY (idPrice),
  FOREIGN KEY (idGamePlatform) REFERENCES tblGamePlatform(idGamePlatform) ON DELETE CASCADE,  
);

-- -----------------------------------------------------
-- tblTypeStatusOrder
-- -----------------------------------------------------
CREATE TABLE tblTypeStatusOrder (
  idTypeStatusOrder INTEGER NOT NULL IDENTITY(1,1),
  dsDescriptionEN VARCHAR(50) NOT NULL,
  dsDescriptionPT VARCHAR(50) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY(idTypeStatusOrder)
);

-- -----------------------------------------------------
-- tblCustomer
-- -----------------------------------------------------
CREATE TABLE tblCustomer (
  idCustomer INTEGER NOT NULL IDENTITY(1,1),
  dsUsername VARCHAR(255) NOT NULL,
  dsFirstName VARCHAR(255) NOT NULL,
  dsLastName VARCHAR(255) NOT NULL,
  dsEmail VARCHAR(255) NOT NULL,
  dsBirthDate DATE NOT NULL,
  dsCPF VARCHAR(14),
  dsStreet VARCHAR(100),
  dsNumber INTEGER,
  dsCity VARCHAR(100),
  idTypeState INTEGER NOT NULL,
  dsZip VARCHAR(9) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  PRIMARY KEY (idCustomer),
  FOREIGN KEY (idTypeState) REFERENCES tblTypeState(idTypeState) ON DELETE CASCADE
);


-- -----------------------------------------------------
-- tblOrder
-- -----------------------------------------------------
CREATE TABLE tblOrder (
  idOrder INTEGER NOT NULL IDENTITY(1,1),
  idCustomer INTEGER NOT NULL,
  idTypeStatusOrder INTEGER NOT NULL, 
  dsDateTimeOrder DATETIME NOT NULL DEFAULT GETDATE();
  dsTotalValue DECIMAL(7,2)  NOT NULL,
  dsTrackingCode VARCHAR(100),
  PRIMARY KEY (idOrder),  
  FOREIGN KEY (idCustomer) REFERENCES tblCustomer(idCustomer) ON DELETE CASCADE, 
  FOREIGN KEY (idTypeStatusOrder) REFERENCES tblTypeStatusOrder(idTypeStatusOrder) ON DELETE CASCADE
);



-- -----------------------------------------------------
-- tblItem
-- -----------------------------------------------------
CREATE TABLE tblItem (
  idItem INTEGER NOT NULL IDENTITY(1,1),
  idOrder INTEGER NOT NULL,
  idPrice INTEGER NOT NULL,   
  dsQuantity INTEGER NOT NULL,  
  FOREIGN KEY (idOrder) REFERENCES tblOrder(idOrder) ON DELETE CASCADE,
  FOREIGN KEY (idPrice) REFERENCES tblPrice(idPrice) ON DELETE CASCADE
);

