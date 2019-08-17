/*Test*/
DECLARE
    lv_product COMM_PRODUCTS.PRODUCTNAME%TYPE := 'Pant';
    lv_quantity COMM_PRODUCTS.QUANTITY%TYPE := 0;
BEGIN
    UPDATE COMM_PRODUCTS
        SET QUANTITY = lv_quantity
        WHERE PRODUCTNAME = lv_product;
        
    lv_quantity := 7;
    UPDATE COMM_PRODUCTS
        SET QUANTITY = lv_quantity
        WHERE PRODUCTNAME = lv_product;
        
    lv_quantity := 10;
    UPDATE COMM_PRODUCTS
        SET QUANTITY = lv_quantity
        WHERE PRODUCTNAME = lv_product;
        
    lv_quantity := 12;
    UPDATE COMM_PRODUCTS
        SET QUANTITY = lv_quantity
        WHERE PRODUCTNAME = lv_product;
END;
/*Test_Sangita*/
/*Test_James*/