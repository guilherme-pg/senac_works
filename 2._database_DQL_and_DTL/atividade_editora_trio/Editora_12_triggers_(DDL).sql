-- Crie um script para criar todas os triggers (DDL), 
-- no mínimo 6 triggers coerentes com o seu minimundo.

USE editora_trio;

DELIMITER //
CREATE TRIGGER after_venda
AFTER INSERT ON Vendas_has_Livros
FOR EACH ROW
BEGIN
    DECLARE livros_qtd INT;
    DECLARE novo_estoque INT;
    
    -- Obter a quantidade de livros vendidos
    SELECT quantidade INTO livros_qtd FROM Vendas_has_Livros
    WHERE Vendas_ID_venda = NEW.Vendas_ID_venda
    AND Livros_ISBN = NEW.Livros_ISBN;
    
    -- Atualizar o estoque
    UPDATE Livros
    SET estoque = estoque - livros_qtd
    WHERE ISBN = NEW.Livros_ISBN;
END;
//
DELIMITER ;

-- Trigger para impedir exclusão de livros com exemplares associados
DELIMITER //
CREATE TRIGGER before_delete_livro
BEFORE DELETE ON Livros
FOR EACH ROW
BEGIN
    DECLARE num_exemplares INT;
    
    -- Verificar se existem exemplares associados ao livro
    SELECT COUNT(*) INTO num_exemplares FROM exemplares
    WHERE Livros_ISBN = OLD.ISBN;
    
    -- Impedir a exclusão se houver exemplares associados
    IF num_exemplares > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Não é possível excluir o livro. Existem exemplares associados.';
    END IF;
END;
//
DELIMITER ;

-- Trigger para impedir a atualização do ISBN em livros com vendas associadas
DELIMITER //
CREATE TRIGGER before_update_isbn
BEFORE UPDATE ON Livros
FOR EACH ROW
BEGIN
    DECLARE num_vendas INT;
    
    -- Verificar se existem vendas associadas ao livro
    SELECT COUNT(*) INTO num_vendas FROM Vendas_has_Livros
    WHERE Livros_ISBN = OLD.ISBN;
    
    -- Impedir a atualização se houver vendas associadas
    IF num_vendas > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Não é possível atualizar o ISBN. Existem vendas associadas.';
    END IF;
END;
//
DELIMITER ;