
select *
INTO OUTFILE 'E:\producto.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM PRODUCTO;

select *
INTO OUTFILE 'E:\detalle_transaccion.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM detalle_transaccion;


select *
INTO OUTFILE 'E:\marca.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM marca;


select *
INTO OUTFILE 'E:\medida.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM medida;

select *
INTO OUTFILE 'E:\producto_precio.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM producto_precio;

select *
INTO OUTFILE 'E:\ProductoTipos.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM tipo_producto;


select *
INTO OUTFILE 'E:\Atipo_transaccion.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM tipo_transaccion;


select *
INTO OUTFILE 'E:\Atransaccion.csv' 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM transaccion;
