/* Almacen */
	Almacen_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Producto_ID
	Cantidad
	Consumo
	
-------------------------------
/* Producto */
	Producto_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Codigo
	Nombre
	Precio	
	Precio_Venta
	Precio_Mayoreo
	Descripcion
	Imagen
	Medida
	Unidad_Medida_ID
	Marca_ID
	Tipo_Producto_ID

/* Tipo_Producto */
	Tipo_Producto
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Nombre
	Descripcion


/* Unidad_Medida */
	Unidad_Medida_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Nombre
	Descripcion


/* Marca */
	Marca_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Nombre
	Descripcion

/* Transaccion */
	Transaccion_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Nombre
	Total
	Detalle
	Tipo_Transaccion_ID

/* Tipo_transaccion */
	Tipo_transaccion_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Nombre VARCHAR(50) NOT NULL,


/* Detalle_Transaccion */
	Detalle_Transaccion_ID
--Auditoria
	Cliente_ID  
	Corp_ID  --corporacion
	IsActive 
	Created  
	CreatedBy 
	Updated 
	UpdatedBy
--Campos
	Transaccion_id
	Producto_id
	Ĉantidad
	Nombre
	Descripcion


