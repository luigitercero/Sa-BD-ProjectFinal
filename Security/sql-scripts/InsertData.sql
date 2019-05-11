INSERT INTO employees (first_name, last_name, department, email) 
VALUES ('Lorenz', 'Vanthillo', 'IT', 'lvthillo@mail.com');
INSERT INTO product (sku,name,price,shortDescription,longDescription,active)
VALUES ('000000','name',25.00,'shortDescription','longdescription','1');
INSERT INTO image (url,productSku)
VALUES ("000000",'000000');
INSERT INTO category (name)
VALUES ('000000');
INSERT INTO category (name,categoryParent)
VALUES ('cat2',1);
INSERT INTO productCategory (productSku,categoryId)
VALUES ('000000',1);
INSERT INTO productCategory (productSku,categoryId)
VALUES ('000000',2);