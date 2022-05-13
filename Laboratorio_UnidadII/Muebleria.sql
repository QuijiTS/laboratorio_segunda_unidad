CREATE DATABASE muebleria_la_espina;

USE muebleria_la_espina;

CREATE TABLE personal(
codigo VARCHAR(5),
nombre VARCHAR(50),
tipoTrabajador VARCHAR(20),
agnodeNacimiento int,
genero VARCHAR(10),
sueldo$ DECIMAL(7,2),
PRIMARY KEY (codigo)
);

CREATE TABLE tienda(
idTienda int,
nombreTienda VARCHAR(20),
ubicacionTienda VARCHAR(70),
agnoApertura int,
PRIMARY KEY(idTienda)
);

CREATE TABLE mueble(
codigo VARCHAR(20),
nombreMueble VARCHAR(30),
tipoMueble VARCHAR(10),
precio DECIMAL(7,2),
existencia int,
PRIMARY KEY(codigo)
);

CREATE TABLE venta(
codigoFactura VARCHAR(5),
nombreCliente VARCHAR(50),
codigoMueble VARCHAR(20),
nombreMueble VARCHAR(30),
PRIMARY KEY(codigoFactura)
);

INSERT INTO personal VALUES
("T2014","Maureene Bickerstaffe","Gerente","1996","Femenino","2000.00"),
("T6865","Laurie Audas","Gerente","1988","Femenino","2000.00"),
("T0647","Aube Josifovitz","Limpieza","1990","Masculino","1176.91"),
("T9241","Franciska Baribal","Ventas","1995","Femenino","1095.85"),
("T0957","Rena Pinnell","Ventas","1986","Femenino","1000.17"),
("T3979","Gav Job","Ventas","1987","Masculino","940.74"),
("T3373","Raleigh Stanner","Cajero","1987","Masculino","733.68"),
("T2903","Philippa Giller","Limpieza","1989","Femenino","958.94"),
("T6852","Agnola Radbond","Ventas","1996","Femenino","1299.83"),
("T2806","Adrea Chrispin","Cajero","1996","Femenino","540.07"),
("T7835","Maybelle Duffree","Cajero","1987","Femenino","1083.72"),
("T3472","Flore Foottit","Ventas","1986","Femenino","678.85"),
("T4335","Kerri Roskam","Ventas","1995","Femenino","798.48"),
("T4565","Ana Annakin","Gerente","1985","Femenino","2000.00"),
("T0547","Claudine Edger","Cajero","1985","Femenino","1275.77");

INSERT INTO tienda VALUES
("001","Muebleria La Espina","C.C. Interplaza Quetzaltenango, 00001, Guatemala","1999"),
("002","Muebleria La Espina","Centro Comercial Montblanc, 19 Avenida, Quezaltenango, Guatemala","20010"),
("003","Muebleria La Espina","4a Calle 18-01, Quezaltenango, Guatemala 00011, Guatemala","2018");

INSERT INTO mueble VALUES
("135835472398","Ganesh","Dormitorio","1899.00","20"),
("345257856321","New Avellana-Off White","Salas","1699.00","15"),
("320144789562","Versalhes","Cocina","5449.00","11"),
("789632145297","Camastron Milky","Dormitorio","5699.00","16"),
("012369875321","Escritorio Office Computer","Oficina","949.00","30"),
("852543015784","Gavetero Sport","Dormitorio","3299.00","21"),
("654230157265","Sofa Cama Apia","Sala","7499.00","10"),
("452032145632","Comedor Solus","Cocina","9999.00","15"),
("856234585224","Connect","Oficina","749.00","26"),
("549856659596","Baul Sport","Dormitorio","1399.00","27"),
("641516436644","Berlin","Sala","3699.00","36"),
("257532734273","Silla Vita","Cocina","1099.00","50"),
("437235837253","Studio 900","Oficina","1849.00","34"),
("037423750572","Simmons","Dormitorio","1199.00","30"),
("374179227507","BackCare Ion Repair","Dormitorio","7086.75","30");

INSERT INTO venta VALUES
("F0001","Luisa Gonzales","037423750572","Simmons"),
("F0002","Oscar Sanchez","852543015784","Gavetero Sport"),
("F0003","Jose Quijivix","452032145632","Comedor Solus"),
("F0004","Andrea Mendez","654230157265","Sofa Cama Apia"),
("F0005","Vicente Fernandez","374179227507","BackCare Ion Repair");

UPDATE mueble
SET existencia = "29"
WHERE codigo = "037423750572";

UPDATE mueble
SET existencia = "20"
WHERE codigo = "852543015784";

UPDATE mueble
SET existencia = "14"
WHERE codigo = "452032145632";

UPDATE mueble
SET existencia = "9"
WHERE codigo = "654230157265";

UPDATE mueble
SET existencia = "29"
WHERE codigo = "374179227507";

UPDATE personal
SET nombre = "Alison Bickerstaffe"
WHERE codigo = "T2014";

UPDATE personal
SET nombre = "Hal Stanner"
WHERE codigo = "T3373";

UPDATE personal
SET nombre = "Jenifer Edger"
WHERE codigo = "T0547";

DELETE FROM personal
WHERE agnodeNacimiento = "1996";

DELETE FROM mueble
WHERE codigo = "789632145297";

DELETE FROM mueble
WHERE codigo = "549856659596";