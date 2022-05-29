-- -----------------------------------------------------
-- Trigger
-- -----------------------------------------------------
-- Trigger para atualizar campo de data-hora da ultima atualização da senha de usuário
DROP TRIGGER IF EXISTS trig_password_last_edition;
DELIMITER $$
CREATE TRIGGER trig_password_last_edition
BEFORE UPDATE ON tbluser
FOR EACH ROW
BEGIN 
	IF NEW.dsPassword <> OLD.dsPassword THEN 
		SET NEW.dsPasswordDateTimeLastEdition = CURRENT_TIMESTAMP; 
	END IF; 
END $$
DELIMITER ;



-- Triger que cria um tupla para tabela de balanço de estoque, toda vez que um novo produto for cadastrado
DROP TRIGGER IF EXISTS trig_create_balance_control;

DELIMITER $$
CREATE TRIGGER trig_create_balance_control
AFTER INSERT ON tblGamePlatform
FOR EACH ROW
BEGIN
	INSERT INTO GameStore.tblWarehouseBalance(idGamePlatform) VALUES (NEW.idGamePlatform);
END $$
DELIMITER ;


-- Triger que aumenta quantidade no balanço, quanto há uma entrada de produto no estoque
DROP TRIGGER IF EXISTS trig_increase_balance_control;

DELIMITER $$
CREATE TRIGGER trig_increase_balance_control
AFTER INSERT ON tblWarehouseEntrance
FOR EACH ROW
BEGIN
UPDATE tblWarehouseBalance 
		SET 
			dsQuantity =  (dsQuantity + NEW.dsQuantity)
		WHERE
			tblWarehouseBalance.idGamePlatform = NEW.idGamePlatform;

END $$
DELIMITER ;



-- Triger que diminui a quantidade no balanço, quanto há uma saida de produto no estoque
DROP TRIGGER IF EXISTS trig_decrease_balance_control;

DELIMITER $$
CREATE TRIGGER trig_decrease_balance_control
AFTER INSERT ON tblWarehouseExit
FOR EACH ROW
BEGIN
UPDATE tblWarehouseBalance 
		SET 
			dsQuantity =  (dsQuantity - NEW.dsQuantity)
		WHERE
			tblWarehouseBalance.idGamePlatform = NEW.idGamePlatform;

END $$
DELIMITER ;



-- Trigger quando inserido um item de um pedido, atualizar a quantidade no estoque + o valor total do pedido
DROP TRIGGER IF EXISTS trig_update_order;

DELIMITER $$
CREATE TRIGGER trig_update_order
AFTER INSERT ON tblItem
FOR EACH ROW
BEGIN
	-- Declaração de variáveis
    DECLARE v_idGamePlatform INT;  
	DECLARE v_subItem_value  DECIMAL(10,2);    
    DECLARE v_old_total_value  DECIMAL(10,2);  
    
	-- Parte I: Registra a saida, e devido ao outro trigger vai reduz estoque automaticamente
    SELECT idGamePlatform INTO v_idGamePlatform FROM tblPrice WHERE tblPrice.idPrice = NEW.idPrice;   
	INSERT INTO GameStore.tblWarehouseExit(idGamePlatform,dsQuantity,idTypeWarehouseMovement) VALUES (v_idGamePlatform,NEW.dsQuantity,1);

	-- Parte II: Atualiza valor total da ordem   
    SELECT dsValue INTO v_subItem_value FROM tblPrice WHERE idPrice = NEW.idPrice;       
    SELECT dsTotalValue INTO v_old_total_value FROM tblOrder WHERE tblOrder.idOrder = NEW.idOrder;

	IF v_old_total_value IS NULL THEN 
		UPDATE tblOrder 
        SET dsTotalValue =  0
        WHERE
			tblOrder.idOrder = NEW.idOrder;
	END IF;     
    
	UPDATE tblOrder 
		SET 
			dsTotalValue =  ((v_subItem_value* NEW.dsQuantity) + dsTotalValue) 
		WHERE
			tblOrder.idOrder = NEW.idOrder;
END $$
DELIMITER ;
