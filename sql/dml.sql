INSERT INTO pais(id_pais, nombre) VALUES (1, 'Ecuador'); 

INSERT INTO ciudad(id_ciudad, nombre, ref_pais) VALUES (1, 'Guayaquil', 1); 
INSERT INTO ciudad(id_ciudad, nombre, ref_pais) VALUES (2, 'Quito', 1); 
INSERT INTO ciudad(id_ciudad, nombre, ref_pais) VALUES (3, 'Cuenca', 1); 
INSERT INTO ciudad(id_ciudad, nombre, ref_pais) VALUES (4, 'Loja', 1); 

INSERT INTO cliente	VALUES ('0930077649', 'Juan', 'Guerra', 1);
INSERT INTO cliente	VALUES ('0938477346', 'Luis', 'Armando', 1);
INSERT INTO cliente	VALUES ('0938475649', 'Miguel', 'Torres', 1);
INSERT INTO cliente	VALUES ('0938472349', 'Juana', 'Jaramillo', 2);
INSERT INTO cliente	VALUES ('0939475649', 'Jimmy', 'Latorre', 2);
INSERT INTO cliente	VALUES ('0938475620', 'Gilda', 'Quinde', 3);
INSERT INTO cliente	VALUES ('0998475629', 'Rita', 'Cacias', 3);
INSERT INTO cliente	VALUES ('0936529649', 'Nella', 'Cassia', 4);

INSERT INTO proveedor VALUES(1, 'Cervecería Nacional C.A.', 'Km. 16,5 Vía a Daule');
INSERT INTO proveedor VALUES(2, 'Arca Continental', 'Av. Juan Tanca Marengo Km 4.5');

INSERT INTO producto VALUES (1, 'Coca Cola (Original) - 3lt.', 3.00);
INSERT INTO producto VALUES (2, 'Coca Cola (Original) - 2lt.', 2.00);
INSERT INTO producto VALUES (3, 'Coca Cola (Original) - 1lt.', 1.00);
INSERT INTO producto VALUES (4, 'Poni Malta - 311cm3 Retornable', 1.00);
INSERT INTO producto VALUES (5, 'Poni Malta - 225cm3 Retornable', 0.60);
INSERT INTO producto VALUES (6, 'Poni Malta - 330cm3 Lata', 1.00);
INSERT INTO producto VALUES (7, 'Poni Malta - 330cm3 PET Descartable', 0.80);
INSERT INTO producto VALUES (8, 'Pilsener 600 cm3 botella retornable', 1.50);
INSERT INTO producto VALUES (9, 'Pilsener 330 cm3 botella retornable', 1.00);
INSERT INTO producto VALUES (10, 'Pilsener 330 cm3 botella no retornable', 0.90);
INSERT INTO producto VALUES (11, 'Pilsener 330 cm3 Lata', 1.30);
INSERT INTO producto VALUES (12, 'Pilsener 225 cm3 botella retornable', 0.50);
INSERT INTO producto VALUES (13, 'Barriles de 30 lts', 25.00);

INSERT INTO proveedor_producto VALUES(2, 1);
INSERT INTO proveedor_producto VALUES(2, 2);
INSERT INTO proveedor_producto VALUES(2, 3);
INSERT INTO proveedor_producto VALUES(1, 4);
INSERT INTO proveedor_producto VALUES(1, 5);
INSERT INTO proveedor_producto VALUES(1, 6);
INSERT INTO proveedor_producto VALUES(1, 7);
INSERT INTO proveedor_producto VALUES(1, 8);
INSERT INTO proveedor_producto VALUES(1, 9);
INSERT INTO proveedor_producto VALUES(1, 10);
INSERT INTO proveedor_producto VALUES(1, 11);
INSERT INTO proveedor_producto VALUES(1, 12);
INSERT INTO proveedor_producto VALUES(1, 13);

INSERT INTO empleado VALUES('0928475847', 'Diana', 'Alcazar', 'dalcazar', '1234');
INSERT INTO empleado VALUES('0928387547', 'Lucas', 'Pita', 'lpita', '1234');
INSERT INTO empleado VALUES('0912375847', 'Manuel', 'Salazar', 'msalazar', '1234');

INSERT INTO factura VALUES(1, '2021-09-06', 39.2, '0928475847', '0938475620');
INSERT INTO factura_detalle VALUES(1, 1, 3.0, 1, 1);
INSERT INTO factura_detalle VALUES(2, 10, 10.0, 1, 3);
INSERT INTO factura_detalle VALUES(3, 2, 1.20, 1, 5);
INSERT INTO factura_detalle VALUES(4, 1, 25, 1, 13);

INSERT INTO factura VALUES(2, '2021-08-06', 8.5, '0928475847', '0938475620');
INSERT INTO factura_detalle VALUES(5, 1, 0.90, 2, 10);
INSERT INTO factura_detalle VALUES(6, 5, 5.0, 2, 9);
INSERT INTO factura_detalle VALUES(7, 2, 2.6, 2, 11);

INSERT INTO factura VALUES(3, '2021-08-20', 4.40, '0928475847', '0930077649');
INSERT INTO factura_detalle VALUES(8, 3, 3.90, 3, 11);
INSERT INTO factura_detalle VALUES(9, 1, 0.5, 3, 12);


SELECT * FROM factura;
SELECT * FROM factura_detalle;


