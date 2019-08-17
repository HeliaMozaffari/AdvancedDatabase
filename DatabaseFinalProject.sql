CREATE TABLE Comm_Customers
(Customer_id  NUMBER(4),
FirstName VARCHAR2(30) NOT NULL,
LastName VARCHAR2(30) NOT NULL,
Address VARCHAR2(30),
PhoneNo  NUMBER(20),                                                	
Email VARCHAR2(30),
PostalCode VARCHAR2(10),
City VARCHAR2(20),
State VARCHAR2(2),
 CONSTRAINT Comm_Customers_Customer_id_pk PRIMARY KEY(Customer_id)
 );
INSERT INTO Comm_Customers
 VALUES (1001, 'Wonjun', 'Choi', '225 Sackville St', '6478894532', 'wchoi30@yahoo.com', 'M5A0B9', 'Toronto', 'ON');
 INSERT INTO Comm_Customers
 VALUES (1002, 'Sangita', 'Shrestha', '82 Chelwood Road', '6475438967', 'sang200@gmail.com', 'M1K2K8', 'Scarborough', 'ON');
 INSERT INTO Comm_Customers
 VALUES (1003, 'Jhon', 'Smith', '45 Bonniewood St', '6474036744', 'jhon1800@gmail.com',  'M5D7R8', 'Scarborough', 'ON');
INSERT INTO Comm_Customers
 VALUES (1004, 'Adam', 'Donald', '65 Parliament St', '6474036744', 'adam123@gmail.com', 'M5D7R8', 'Toronto', 'ON');
INSERT INTO Comm_Customers
 VALUES (1005, 'Mayy', 'Kan', '44 Sumach St', '6474026475', 'mayy3434@gmail.com', 'A7B6R8', 'Toronto', 'ON');
INSERT INTO Comm_Customers
 VALUES (1006, 'Nayoung', 'Kim', '67 Saint St', '6475802647', 'nkim888@gmail.com', 'S6J6P5', 'Calgary', 'AL');
INSERT INTO Comm_Customers
 VALUES (1007, 'Mona', 'Hassan', '58 Bertand St', '3064439954', 'hassanmona666@gmail.com', 'K5L6F5', 'Weyburn', 'SK');
INSERT INTO Comm_Customers
 VALUES (1008, 'Nadia', 'Isfaq', '33 George St', '3061249369', 'isfaqnad@gmail.com', 'M8K5k9', 'Regina', 'SK');
INSERT INTO Comm_Customers
 VALUES (1009, 'Andy', 'Lakraj', '29 Munnro St', '6477985679', 'andylakraj@gmail.com', 'M5K7k2', 'Toronto', 'ON');
INSERT INTO Comm_Customers
 VALUES (1010, 'Paul', 'Lee', '72 Main St', '6475438890', 'leepaul555@gmail.com', 'A4K3H1', 'Toronto', 'ON');


CREATE TABLE Comm_Cart
(Cart_id  NUMBER(4),
Customer_id  NUMBER(4),
Status VARCHAR2(20),
 CONSTRAINT Comm_Cart_Cart_id_pk PRIMARY KEY(Cart_id),
 CONSTRAINT Comm_Cart_Customer_id_fk FOREIGN KEY (Customer_id)
 REFERENCES Comm_Customers(Customer_id));
 
INSERT INTO Comm_Cart
 VALUES (201, 1001, 'Out');
 INSERT INTO Comm_Cart
 VALUES (202, 1002, 'Out');
 INSERT INTO Comm_Cart
 VALUES (203, 1002, 'Out');
  INSERT INTO Comm_Cart
 VALUES (204, 1004, 'Out');
  INSERT INTO Comm_Cart
 VALUES (205, 1003, 'Not');
   INSERT INTO Comm_Cart
 VALUES (206, 1005, 'Out');
 INSERT INTO Comm_Cart
 VALUES (207, 1006, 'Out');
  INSERT INTO Comm_Cart
 VALUES (208, 1007, 'Out');
   INSERT INTO Comm_Cart
 VALUES (209, 1009, 'Not');
  INSERT INTO Comm_Cart
 VALUES (210, 1010, 'Out');
 CREATE TABLE Comm_Category
(Category_id  NUMBER(4),
CategoryName VARCHAR2(20),
 CONSTRAINT Comm_Category_Category_id_pk PRIMARY KEY(Category_id));

INSERT INTO Comm_Category
 VALUES (301, 'Clothing');
  INSERT INTO Comm_Category
 VALUES (302, 'Sports');
 INSERT INTO Comm_Category
 VALUES (303, 'Sports');
INSERT INTO Comm_Category
 VALUES (304, 'Electronics');
 INSERT INTO Comm_Category
 VALUES (305, 'Clothing');
  INSERT INTO Comm_Category
 VALUES (306, 'Clothing');
   INSERT INTO Comm_Category
 VALUES (307, 'Electronics');
    INSERT INTO Comm_Category
 VALUES (308, 'Electronics');
    INSERT INTO Comm_Category
 VALUES (309, 'Clothing');
    INSERT INTO Comm_Category
 VALUES (310, 'Electronics');
 
CREATE TABLE Comm_Products
(Product_id NUMBER(4),
Category_id  NUMBER(4),
ProductName varchar2(30) NOT NULL,
Price NUMBER(5,2) NOT NULL,
Quantity NUMBER(3) NOT NULL,
Color varchar2(20),
Status varchar2(10),
  CONSTRAINT Comm_Products_Product_id_pk PRIMARY KEY(Product_id),
  CONSTRAINT Comm_Products_Category_id_fk FOREIGN KEY (Category_id)
 REFERENCES Comm_Category(Category_id));
INSERT INTO Comm_Products
VALUES (3001, 301, 'Jacket', 280.00, '200', 'Black', 'Good');
INSERT INTO Comm_Products
VALUES (3002, 302, 'Hockey Sticks Junior', 9.99, '50', 'Black', 'Good');
INSERT INTO Comm_Products
VALUES (3003, 303, 'Hockey Ball Junior', 9.99, '60', 'Orange', 'Good');
INSERT INTO Comm_Products
VALUES (3004, 304, 'Samsung Phone', 900.00, '300', 'Black',  'Wow');
INSERT INTO Comm_Products
VALUES (3005, 305, 'Shirt', 60.00, '250', 'White', '');
INSERT INTO Comm_Products
VALUES (3006, 306, 'Leggins', 25.00, '300', 'Black',  '');
INSERT INTO Comm_Products
VALUES (3007, 307, 'iPhone 10s', 999.00, '350', 'Silver',  'Wow');
INSERT INTO Comm_Products
VALUES (3008, 308, 'Hard disk', 145.00, '100', 'Black and White', '');
INSERT INTO Comm_Products
VALUES (3009, 309, 'Pant', 80.00, '400', 'Blue', '');
INSERT INTO Comm_Products
VALUES (3010, 310, 'Acer Laptop', 850.00, '200', 'Black', 'Wow');
CREATE TABLE Comm_CartP
(CartP_id NUMBER(4),
Cart_id  NUMBER(4),
Product_id NUMBER(4),
ProductName varchar2(30) NOT NULL,
Price NUMBER(5,2) NOT NULL,
Quantity NUMBER(3) NOT NULL,
  CONSTRAINT Comm_CartP_CartP_id_pk PRIMARY KEY(CartP_id),
  CONSTRAINT Comm_CartP_Cart_id_fk FOREIGN KEY (Cart_id)
  REFERENCES Comm_Cart(Cart_id),
  CONSTRAINT Comm_CartP_Product_id_fk FOREIGN KEY (Product_id)
  REFERENCES Comm_Products(Product_id));
  INSERT INTO Comm_CartP
VALUES  (9001, 201, 3001, 'Jacket', 280.00, '200');
INSERT INTO Comm_CartP
VALUES (9002, 202, 3002, 'Hockey Sticks Junior', 9.99, '50');
INSERT INTO Comm_CartP
VALUES (9003, 203, 3003, 'Hockey Ball Junior', 9.99, '60');
INSERT INTO Comm_CartP
VALUES (9004, 204, 3004, 'Samsung Phone', 900.00, '300');
INSERT INTO Comm_CartP
VALUES (9005, 205, 3005, 'Shirt', 60.00, '250');
INSERT INTO Comm_CartP
VALUES (9006, 206, 3006, 'Leggins', 25.00, '300');
INSERT INTO Comm_CartP
VALUES (9007, 207, 3007, 'iPhone 10s', 999.00, '350');
INSERT INTO Comm_CartP
VALUES (9008, 208, 3008, 'Hard disk', 145.00, '100');
INSERT INTO Comm_CartP
VALUES (9009, 209, 3009, 'Pant', 80.00, '400');
INSERT INTO Comm_CartP
VALUES (9010, 210, 3010, 'Acer Laptop', 850.00, '200');
CREATE TABLE Comm_Shipping
(Shipping_id NUMBER(4),
Cart_id  NUMBER(4),
Address VARCHAR2(30),
PhoneNo  Varchar2(20),
PostalCode VARCHAR2(10),
City VARCHAR2(20),
State VARCHAR2(2),
Country VARCHAR2(6),
Status VARCHAR2(20),
  CONSTRAINT Comm_Shipping_Shipping_id_pk PRIMARY KEY(Shipping_id),
  CONSTRAINT Comm_Shipping_Cart_id_fk FOREIGN KEY (Cart_id)
  REFERENCES Comm_Cart(Cart_id)
  );    
INSERT INTO Comm_Shipping
 VALUES (5001, 201, '225 Sackville St', '6478894532', 'M5A0B9', 'Toronto', 'ON', 'Canada', 'Delivered');
 INSERT INTO Comm_Shipping
 VALUES (5002, 202, '82 Chelwood Road', '6475438967', 'M1K2K8', 'Scarborough', 'ON', 'Canada', 'Ordered');
 INSERT INTO Comm_Shipping
 VALUES (5003, 203, '82 Chelwood Road', '6475438967', 'M1K2K8', 'Scarborough', 'ON', 'Canada', 'Ordered');
INSERT INTO Comm_Shipping
 VALUES (5004, 204, '65 Parliament St', '6474036744', 'M5D7R8', 'Toronto', 'ON', 'Canada', 'Shipped');
 INSERT INTO Comm_Shipping
 VALUES (5005, 205, '45 Bonniewood St', '6474036744', 'M5D7R8', 'Scarborough', 'ON', 'Canada', 'Ordered');
 INSERT INTO Comm_Shipping
 VALUES (5006, 206, '44 Sumach St', '6474026475', 'A7B6R8', 'Toronto', 'ON', 'Canada', 'Delivered');
INSERT INTO Comm_Shipping
 VALUES (5007, 207, '67 Saint St', '6475802647', 'S6J6P5', 'Calgary', 'AL', 'Canada', 'Shipped');
INSERT INTO Comm_Shipping
 VALUES (5008, 208, '58 Bertand St', '3064439954', 'K5L6F5', 'Weyburn', 'SK', 'Canada', 'Delivered');
INSERT INTO Comm_Shipping
 VALUES (5009, 209, '29 Munnro St', '6477985679', 'M5K7k2', 'Toronto', 'ON', 'Canada', 'Not Delivered');
INSERT INTO Comm_Shipping
 VALUES (5010, 210, '72 Main St', '6475438890', 'A4K3H1', 'Toronto', 'ON', 'Canada', 'Ordered');
 /*Triggers*/
CREATE OR REPLACE TRIGGER product_status_trg
    AFTER UPDATE OF QUANTITY
    ON COMM_PRODUCTS
    FOR EACH ROW
DECLARE
    TEMP_STATUS COMM_PRODUCTS.STATUS%TYPE;
BEGIN
    IF :NEW.Quantity > 10 THEN
        TEMP_STATUS := 'IN STOCK';
    ELSIF :NEW.Quantity = 0 THEN
        TEMP_STATUS := 'NO STOCK';
    ELSE
        TEMP_STATUS := 'LOW STOCK';
    END IF;
    DBMS_OUTPUT.PUT_LINE(:NEW.Quantity);
    DBMS_OUTPUT.PUT_LINE(TEMP_STATUS);
    /*UPDATE COMM_PRODUCTS
        SET STATUS = TEMP_STATUS
        WHERE QUANTITY = :NEW.QUANTITY;*/
END;

/*Stored Function1: Sangita*/

/*Store Fuction 2: James*/



