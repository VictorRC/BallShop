Use BallShop

select * from dbo.ProductAttributeValue
select * from AttributeValue

CREATE TABLE ProductAttributeValue (  ProductID INT NOT NULL,  AttributeValueID INT NOT NULL,  PRIMARY KEY (ProductID, AttributeValueID) )
 INSERT INTO ProductAttributeValue (ProductID, AttributeValueID) SELECT p.ProductID, av.AttributeValueID FROM product p, AttributeValue av;




ALTER TABLE AttributeValue
 ADD CONSTRAINT FK_AttributeValue_Attribute
  FOREIGN KEY(AttributeID) 
  REFERENCES Attribute (AttributeID)
   GO
  
   ALTER TABLE ProductAttributeValue 
   ADD CONSTRAINT FK_ProductAttributeValue_AttributeValue
    FOREIGN KEY(AttributeValueID) 
	REFERENCES AttributeValue (AttributeValueID)
	 GO
	 
	  ALTER TABLE ProductAttributeValue
	   WITH CHECK 
	   ADD CONSTRAINT FK_ProductAttributeValue_Product 
	   FOREIGN KEY(ProductID) 
	   REFERENCES Product (ProductID)
	    GO

 CREATE PROCEDURE CatalogGetProductAttributeValues (@ProductId INT) 
 AS SELECT a.Name AS AttributeName,       av.AttributeValueID,        av.Value AS AttributeValue 
 FROM AttributeValue av INNER JOIN attribute a 
 ON av.AttributeID = a.AttributeID 
 WHERE av.AttributeValueID IN 
  (SELECT AttributeValueID   FROM ProductAttributeValue   WHERE ProductID = @ProductID)
   ORDER BY a.Name;

   exec CatalogGetProductAttributeValues 1

