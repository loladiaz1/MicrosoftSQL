----TPO 2----
---PARTE A---

--Discos--
create table Artistas (
	codArtista int,
	nombre varchar(100),
	constraint PK_Artistas primary key (codArtista)
)

create table Generos (
	codGenro int,
	descripcion varchar (100),
	constraint PK_Genero primary key (codGenro)
)

create table Albumes (
	codAlbum int,
	titulo varchar (100),
	fecha datetime,
	codArtista int,
	codGenro int,
	constraint PK_Albumnes primary key (codAlbum),
	constraint FK_Albumnes_Generos foreign key (codGenro) references Generos(codGenro)
)

create  table Temas (
	codTemas int,
	titulo varchar(100),
	orden int,
	duracion time,
	codAlbum int,
	constraint PK_Temas primary key (codTemas),
	constraint FK_Temas_Albumnes foreign key (codAlbum) references Albumes (codAlbum)
)

----agregar artista a discos----
insert into Artistas values (3, 'Taylor Swift')
insert into Artistas values (1, 'Los piojos ')
insert into Artistas values (5,'My chemical romance')
insert into Artistas values (2,'One Direction')
insert into Artistas values (8, 'Mozart')
insert into Artistas values (4,'Green Day')
insert into Artistas values (10, 'Deftones')
insert into Artistas values (7, 'Calvin Harris')
insert into Artistas values (13, 'Oasis')
insert into Artistas values (6,'Beethoven')
insert into Artistas values (11,'David Guetta')
insert into Artistas values (9,'Linkin Park')
insert into Artistas values (12,'Las pastillas del abuelo ')

----agregar generos a disco----
insert into Generos values (1, 'Rock')
insert into Generos values (2,'Pop')
insert into Generos values (3,'Electronica')
insert into Generos values (4, 'Clasica')
insert into Generos values (5, 'Rock Nacional')

----agregar albumnes a disco----
--formato de fecha 'MM/DD/AA'
insert into Albumes values (1, 'Lover', '08/23/19', 3, 2)
insert into Albumes values (2, 'Red', '10/22/12', 3, 2)
insert into Albumes values (3, '1989', '01/01/14', 3, 2)
insert into Albumes values (4, 'Evermore', '12/11/20', 3, 2)
insert into Albumes values (5, 'Civilizacion', '07/08/07', 1, 5)
insert into Albumes values (6, '3er Arco', '01/01/96', 1, 5)
insert into Albumes values (7, 'Maquina de sangre', '11/14/03', 1, 5)
insert into Albumes values (8, 'The black parade', '10/23/06', 5, 1)
insert into Albumes values (9, 'Danger days: the true lives of the Fabulous Killjoys', '01/01/02', 5, 1)
insert into Albumes values (10, 'Number One', '10/30/12', 5, 1)
insert into Albumes values (11, 'Four ', '11/17/12', 2, 2)
insert into Albumes values (12, 'Take me Home ', '11/12/12', 2, 2)
insert into Albumes values (13, 'Midnight Memories', '11/25/13', 2, 2)
insert into Albumes values (14, 'Mozart ', '11/17/90', 8, 4)
insert into Albumes values (15, 'Dooki', '02/01/94', 4, 1)
insert into Albumes values (16, 'American Idiot', '09/21/04', 4, 1)
insert into Albumes values (17, 'Diamond Eyes', '01/01/08', 10, 1)
insert into Albumes values (18, 'Motion', '10/31/14', 7, 3)
insert into Albumes values (19, 'Heathen Chemistry', '02/03/02', 13, 1)

----agregar temas a disco----
INSERT INTO Temas VALUES (1, 'I Forgot That You Existed', 1, '00:02:51', 1);
INSERT INTO Temas VALUES (2, 'Cruel Summer', 2, '00:02:58', 1);
INSERT INTO Temas VALUES (3, 'Lover', 3, '00:03:41', 1);
INSERT INTO Temas VALUES (4, 'The Man', 4, '00:03:10', 1);
INSERT INTO Temas VALUES (5, 'The Archer', 5, '00:03:31', 1);
INSERT INTO Temas VALUES (6, 'State of Grace', 1, '00:05:22', 2);
INSERT INTO Temas VALUES (7, 'Red', 2, '00:03:43', 2);
INSERT INTO Temas VALUES (8, 'Treacherous', 3, '00:04:01', 2);
INSERT INTO Temas VALUES (9, 'I Knew You Were Trouble', 4, '00:03:39', 2);
INSERT INTO Temas VALUES (10, 'All Too Well', 5, '00:05:29', 2);
INSERT INTO Temas VALUES (11, '22ñ', 6, '00:03:52', 2);
INSERT INTO Temas VALUES (12, 'Begin Again', 7, '00:03:58', 2);

INSERT INTO Temas VALUES (13, 'Welcome to New York', 1, '00:03:32', 3);
INSERT INTO Temas VALUES (14, 'Blank Space', 2, '00:03:52', 3);
INSERT INTO Temas VALUES (15, 'Style', 3, '00:03:51', 3);
INSERT INTO Temas VALUES (16, 'Shake It Off', 4, '00:03:39', 3);
INSERT INTO Temas VALUES (17, 'Bad Blood', 5, '00:03:31', 3);
INSERT INTO Temas VALUES (18, 'Wildest Dreams', 6, '00:03:40', 3);

INSERT INTO Temas VALUES (19, 'Willow', 1, '00:03:34', 4);
INSERT INTO Temas VALUES (20, 'Champagne Problems', 2, '00:04:03', 4);
INSERT INTO Temas VALUES (21, 'Gold Rushñ', 3, '00:03:05', 4);
INSERT INTO Temas VALUES (22, 'Tis the Damn Season', 4, '00:03:52', 4);

INSERT INTO Temas VALUES (25, 'Bicho de Ciudad', 1, '00:04:32', 5);
INSERT INTO Temas VALUES (26, 'El Farolito', 2, '00:04:21', 5);
INSERT INTO Temas VALUES (27, 'Como Alí', 3, '00:03:56', 5);
INSERT INTO Temas VALUES (28, 'Tan Solo', 4, '00:04:15', 5);
INSERT INTO Temas VALUES (29, 'Dientes de Cordero', 5, '00:03:42', 5);

INSERT INTO Temas VALUES (30, 'Verano del 92', 1, '00:04:30', 6);
INSERT INTO Temas VALUES (31, 'taxi boy', 2, '00:03:45', 6);

INSERT INTO Temas VALUES (32, 'cancion de cuna', 1, '00:03:30', 7);
INSERT INTO Temas VALUES (33, 'Sudestada', 2, '00:04:15', 7);
INSERT INTO Temas VALUES (34, 'fantasma', 3, '00:03:50', 7);
INSERT INTO Temas VALUES (35, 'amor de perros', 4, '00:04:10', 7);
INSERT INTO Temas VALUES (36, 'Solo y en paz', 5, '00:03:20', 7);

INSERT INTO Temas VALUES (37, 'the end.', 1, '00:03:30', 8);
INSERT INTO Temas VALUES (38, 'dead!', 2, '00:04:15', 8);
INSERT INTO Temas VALUES (39, 'mama', 3, '00:03:30', 8);
INSERT INTO Temas VALUES (40, 'cancer', 4, '00:04:15', 8);

INSERT INTO Temas VALUES (41, 'vampire money', 1, '00:03:30', 9);
INSERT INTO Temas VALUES (42, 'look alive', 2, '00:04:15', 9);
INSERT INTO Temas VALUES (43, 'Na Na Na', 3, '00:03:45', 9);
INSERT INTO Temas VALUES (44, 'Sing', 4, '00:04:00', 9);

INSERT INTO Temas VALUES (45, 'boy division', 1, '00:04:00', 10);

INSERT INTO Temas VALUES (46, '18', 1, '00:04:00', 11);
INSERT INTO Temas VALUES (47, 'no control', 2, '00:04:00', 11);
INSERT INTO Temas VALUES (48, 'clouds', 3, '00:04:00', 11);

INSERT INTO Temas VALUES (49, 'kiss you', 1, '00:04:00', 12);
INSERT INTO Temas VALUES (50, 'summer love', 2, '00:03:45', 12);

INSERT INTO Temas VALUES (51, 'you & i', 1, '00:03:45', 13);
INSERT INTO Temas VALUES (52, 'strongñ', 2, '00:03:10', 13);
INSERT INTO Temas VALUES (53, 'alive', 3, '00:02:45', 13);
INSERT INTO Temas VALUES (54, 'diana', 4, '00:05:00', 13);

INSERT INTO Temas VALUES (55, 'mozart', 1, '00:08:45', 14);

INSERT INTO Temas VALUES (56, 'she', 1, '00:03:45', 15);
INSERT INTO Temas VALUES (57, 'in the end', 2, '00:05:45', 15);
INSERT INTO Temas VALUES (58, 'f.o.d', 3, '00:03:20', 15);

INSERT INTO Temas VALUES (59, 'american idiot', 1, '00:01:45', 16);
INSERT INTO Temas VALUES (60, 'holiday', 2, '00:05:30', 16);

INSERT INTO Temas VALUES (61, 'sextape', 1, '00:03:45', 17);
INSERT INTO Temas VALUES (62, 'royal', 2, '00:03:33', 17);

INSERT INTO Temas VALUES (63, 'outside', 1, '00:03:45', 18);
INSERT INTO Temas VALUES (64, 'blame', 2, '00:02:00', 18);
INSERT INTO Temas VALUES (65, 'love now', 3, '00:02:00', 18);

INSERT INTO Temas VALUES (66, 'stop crying your heart out', 1, '00:05:04', 19);
INSERT INTO Temas VALUES (67, 'she is love', 2, '00:03:09', 19);

/*
drop table Artistas;
drop table Temas;
drop table Albumes;
drop table Generos;
*/


--Pedidos y facturas--
create table Clientes (
	codCliente int, --
	nombre varchar(100),
	saldo decimal,
	constraint pk_Clientes primary key(codCliente)
)
 
create table Pedidos (
	nroPedido int,
	fecha date,
	codCliente int, --
	fechaEntrega date,
	lugarEntrega varchar(100),
	constraint pk_Pedidos primary key(nroPedido),
	constraint fk_Pedidos_Clientes foreign key (codCliente) references Clientes(codCliente)
)
 
create table Facturas (
	nroFactura int, 
	fecha date, 
	codCliente int, --
	codPedido int, 
	-- total antes de aplicar cualquier descuento
	bruto decimal, 
	iva decimal, 
	--Impuesto sobre los Ingresos Brutos. La tasa de IIBB en la provincia de Buenos Aires es del 3%
	IIBB decimal,
	final decimal,
	constraint pk_Facturas primary key(nroFactura),
	constraint fk_Facturas_Clientes foreign key(codCliente) references Clientes(codCliente),
	constraint fk_Facturas_Pedidos foreign key(codPedido) references Pedidos(nroPedido)
)
 
create table Productos (
	codProducto int, --
	descripción varchar(100), 
	stock int, 
	puntoReposicion varchar(100), 
	precio decimal,
	constraint pk_Productos primary key(codProducto)
)

create table ItemsPedido (
	codProducto int , --
	codPedido int, 
	cantidad int,
	constraint pk_ItemsPedido primary key(codProducto, codPedido),
	constraint fk_ItemsPedido_Productos foreign key(codProducto) references Productos(codProducto),
	constraint fk_ItemsPedido_Pedidos foreign key(codPedido) references Pedidos(nroPedido)
)
 
create table ItemsFactura (
	 codProducto int, --
	 nroFactura int, 
	 cantidad int, 
	 precio decimal, 
	 descuento decimal,
	 constraint pk_ItemsFactura primary key (codProducto),
	 constraint fk_ItemsFactura_Productos foreign key(codProducto) references Productos(codProducto),
	 constraint fk_ItemsFactura_Facturas foreign key(nroFactura) references Facturas(nroFactura),
)
 
create table Composiciones (
	 codProducto int, --
	 codProductoComponente int, 
	 cantidad int,
	 constraint pk_Composiciones primary key (codProducto, codProductoComponente),
	 constraint fk_Composiciones_productos foreign key(codProducto) references Productos(codProducto)
)

insert into Clientes values (454897, 'Martinez, Lucia', 4500.89);
insert into Clientes values (123456, 'Gonzalez, Juan', -98);
insert into Clientes values (345675, 'Perez, Maria', 2800.75);
insert into Clientes values (987654, 'Lopez, Carlos', 5100.30);
insert into Clientes values (193467, 'Rodriguez, Laura', 6700.45);
insert into Clientes values (654321, 'Martinez, Pedro', 6000.75);
insert into Clientes values (234567, 'Garcia, Sofia', 4300.20);
insert into Clientes values (876543, 'Fernandez, Jorge', 3900.60);
insert into Clientes values (567890, 'Torres, Ana', -234);
insert into Clientes values (789012, 'Diaz, Carlos', -789);

insert into Pedidos values (193749, '08/24/19', 454897, '09/25/19', 'Martinez');
insert into Pedidos values (194567, '07/12/20', 123456, '08/15/20', 'San isidro');
insert into Pedidos values (195678, '05/06/21', 345675, '06/10/21', 'Acassuso');
insert into Pedidos values (196789, '10/18/21', 987654, '02/22/21', 'Nuñez');
insert into Pedidos values (197890, '03/02/18', 193467, '04/05/18', 'Vicente Lopez');
insert into Pedidos values (198901, '09/15/23', 987654, '12/10/23', 'Rivadavia');
insert into Pedidos values (199001, '11/30/23', 876543, '12/25/23', 'Palermo');
insert into Pedidos values (199002, '04/15/24', 567890, '05/20/24', 'Belgrano');
insert into Pedidos values (199003, '06/28/24', 567890, '07/30/24', 'Recoleta');
insert into Pedidos values (199004, '09/14/24', 789012, '10/18/24', 'Almagro');
insert into Pedidos values (199005, '09/14/24', 789012, '10/18/24', 'Rivadavia');
insert into Pedidos values (199006, '09/14/22', 987654, '10/18/22', 'Almagro');
insert into Pedidos values (199007, '09/23/23', 987654, '09/28/23', 'Recoleta');
insert into Pedidos values (199008, '07/14/24', 345675, '07/23/24', 'Acassuso');
insert into Pedidos values (199009, '09/11/20', 193467, '10/13/20', 'Constitución');

insert into Facturas values (789234, '03/02/21', 123456, 196789, 1601, 21, 0.3, (1601 * 0.21) + (1601 * 0.003) + 1601);
insert into Facturas values (789235, '04/15/21', 345675, 197890, 1800, 21, 0.3, (1800 * 0.21) + (1800 * 0.003) + 1800);
insert into Facturas values (789236, '05/30/21', 987654, 198901, 780, 21, 0.3, (780 * 0.21) + (780 * 0.003) + 780);
insert into Facturas values (789237, '07/10/21', 193467, 199001, 1432, 21, 0.3, (1432 * 0.21) + (1432 * 0.003) + 1432);
insert into Facturas values (789238, '08/25/21', 234567, 199002, 3993, 21, 0.3, (3993 * 0.21) + (3993 * 0.003) + 3993);
insert into Facturas values (789239, '10/03/21', 876543, 199003, 3192, 21, 0.3, (3192 * 0.21) + (3192 * 0.003) + 3192);
insert into Facturas values (789240, '02/25/23', 234567, 199004, 1200, 21, 0.3, (1200 * 0.21) + (1200 * 0.003) + 1200);
insert into Facturas values (789241, '02/03/23', 876543, 199005, 1020, 21, 0.3, (1020 * 0.21) + (1020 * 0.003) + 1020);
insert into Facturas values (789242, '02/26/23', 234567, 199006, 4500, 21, 0.3, (4500 * 0.21) + (4500 * 0.003) + 4500);
insert into Facturas values (789243, '02/21/23', 876543, 199007, 3010, 21, 0.3, (3010 * 0.21) + (3010 * 0.003) + 3010);

insert into Productos values (928374, 'Manzanas rojas', 67, 70, 23);
insert into Productos values (445566, 'Leche', 200, 100, 20);
insert into Productos values (556677, 'Pan lactal', 150, 100, 249);
insert into Productos values (667788, 'Huevos', 100, 30, 399);
insert into Productos values (778899, 'Ensalada de rúcula y espinacas con peras caramelizadas, nueces y aderezo balsámico', 120, 100, 179);
insert into Productos values (889900, 'Aceite de oliva', 90, 20, 499);
insert into Productos values (990011, 'Acondicionador reparador para cabello seco y dañado con aceite de argán y keratina', 80, 79, 500);
insert into Productos values (673452, 'Galletas integrales de quinua y coco con chips de chocolate amargo', 500, 200, 500);
insert into Productos values (673453, 'Salsa de tomate orgánica con albahaca fresca y sin conservantes añadidos', 90, 20, 780);
insert into Productos values (673454, 'Crema hidratante con vitamina E', 25, 20, 670);
insert into Productos values (673455, 'Yogur natural sin azúcar', 10, 30, 600);
insert into Productos values (673456, 'Detergente', 25, 20, 340);
insert into Productos values (673457, 'Salmón ahumado estilo tradicional', 10, 15, 1000);
insert into Productos values (673458, 'Mantequilla de maní cremosa natural', 25, 20, 200);
insert into Productos values (673459, 'Cepillo de dientes', 10, 15, 240);

insert into ItemsPedido values (928374, 194567, 45);
insert into ItemsPedido values (667788, 197890, 34);
insert into ItemsPedido values (889900, 199001, 78);
insert into ItemsPedido values (445566, 193749, 90);
insert into ItemsPedido values (990011, 195678, 2);

insert into ItemsFactura values (928374, 789234, 12, 23, 25);
insert into ItemsFactura values (556677, 789234, 5, 249, 35);
insert into ItemsFactura values (778899, 789237, 8, 179, 10);
insert into ItemsFactura values (990011, 789238, 1, 500, 50);
insert into ItemsFactura values (445566, 789234, 4, 20, 25);
insert into ItemsFactura values (889900, 789238, 7, 499, 35);
insert into ItemsFactura values (673455, 789240, 2, 600, 50);
insert into ItemsFactura values (673453, 789236, 1, 780, 50);
insert into ItemsFactura values (667788, 789239, 8, 399, 25);
insert into ItemsFactura values (673452, 789242, 9, 500, 25);
insert into ItemsFactura values (673454, 789243, 3, 670, 35);
insert into ItemsFactura values (673456, 789241, 3, 340, 35);
insert into ItemsFactura values (673457, 789243, 1, 1000, 25);

insert into Composiciones values (928374, 438654, 45);
insert into Composiciones values (889900, 438654, 99);
insert into Composiciones values (889900, 123789, 58);
insert into Composiciones values (928374, 347898, 87);
insert into Composiciones values (556677, 192756, 49);
insert into Composiciones values (778899, 234987, 27);
insert into Composiciones values (778899, 347890, 12);
insert into Composiciones values (778899, 378965, 34);
insert into Composiciones values (928374, 438764, 120);
insert into Composiciones values (445566, 491576, 56);
insert into Composiciones values (445566, 327899, 44);

/*
drop table ItemsFactura;
drop table ItemsPedido;
drop table Composiciones;
drop table Facturas;
drop table Pedidos;
drop table Clientes;
drop table Productos;
*/




---PARTE B---

create table Usuarios(
	IdUsuario int,
	Nombre varchar(40),
	Alias varchar(20),
	Contraseña varchar(40),
	Activo varchar(5),
		constraint ck_Activo check (Activo in('True','False')),
	Correo varchar(40),
		constraint ck_Correo check (Correo LIKE '%@%'),
	constraint pk_Usuarios primary key (IdUsuario)
)

insert into Usuarios values (123456, 'Pilar Garcia', 'pilarty', 'holahola23', 'True', 'pilargarcia@uade.edu.ar');
insert into Usuarios values (123478, 'Juan Pérez', 'juanito', 'contraseña123', 'True', 'juanitop12345@email.com');
insert into Usuarios values (234567, 'María González', 'maria_g', 'clave456', 'True', 'mariaagonzalezz@uade.edu.ar');
insert into Usuarios values (345678, 'Carlos Rodríguez', 'carlitoss', 'abc123', 'True', 'rodriguezcarlos@gmail.com');
insert into Usuarios values (456789, 'Ana López', 'anita', 'miclave', 'True', 'analopezlopez@gmail.com');
insert into Usuarios values (567890, 'Luis Martínez', 'luisito_mar', '123456', 'True', 'luis777@hotmail.com');
insert into Usuarios values (678901, 'Laura Sánchez', 'lauraaa', 'abcd', 'True', 'laura123@gmail.com');
insert into Usuarios values (789012, 'Javier Fernández', 'javier2023', 'qazwsx', 'True', 'javifernandez98@uade.edu.ar');
insert into Usuarios values (890123, 'Elena Ramírez', 'elenita', 'elenapass', 'True', 'elenaram@hotmail.com');
insert into Usuarios values (901234, 'Andrés Castro', 'andresc', 'andres123', 'True', 'andycastro2022@uade.edu.ar');
insert into Usuarios values (123045, 'Beatriz Ortega', 'bea', 'beatrizpass', 'True', 'beatrizzzzz@uade.edu.ar');


create table Categorias(
	IdCategoria int,
	Nombre varchar(100),
	descripcion varchar(600),
	constraint pk_Categorias primary key(IdCategoria),
	--constraint fk_Categoria_noticias foreign key (IdCategoria) references Noticias(IdCategoria)
)

insert into Categorias values (1, 'policial', 'Una noticia policial informa sobre eventos y actividades relacionados con la policía y la ley, como crímenes, arrestos, investigaciones y operativos policiales.');
insert into Categorias values (2, 'Deportes', 'Una noticia deportiva cubre eventos, resultados y noticias relacionadas con el mundo del deporte, proporcionando a los lectores información actualizada sobre competiciones, atletas y equipos');
insert into Categorias values (3, 'Entretenimiento', 'Una noticia de entretenimiento cubre eventos y novedades en películas, música, celebridades y cultura pop.');
insert into Categorias values (4, 'Moda', 'Una noticia de moda informa sobre tendencias, diseñadores y eventos en la industria de la moda.');
insert into Categorias values (5, 'Politica', 'Una noticia política informa sobre eventos y decisiones relacionadas con el gobierno, políticos y políticas públicas.');
insert into Categorias values (6, 'publicidad', 'chivo')


create table Noticias (
	IdNoticia int,
    Titulo varchar(60),
    IdCategoria int,
    Autor varchar(20),
    Fecha date,
		constraint ck_fecha1 check (Fecha IS NOT NULL OR Fecha = GETDATE()),
    Ubicacion varchar(60),
    constraint pk_Noticia primary key(IdNoticia),
	constraint fk_Noticias_Categorias foreign key (IdCategoria) references Categorias(IdCategoria)
)

insert into Noticias values(1234, 'Muere Charly Garcia', 3, 'Pilar Garcia', '09/12/23', 'F:\Noticias\Fallecimientos');
insert into Noticias values(1235, 'Muere reconocido actor por COVID-19', 3, 'Juan Pérez', '09/13/23', 'F:\Noticias\Covid');
insert into Noticias values(5678, 'Nueva ley de protección del medio ambiente', 5, 'María González', '09/21/23', 'F:\Noticias\MedioAmbiente');
insert into Noticias values(9012, 'Descubrimiento arqueológico en Egipto', 6, 'Carlos Rodríguez', '09/27/23', 'F:\Noticias\Arqueologia');
insert into Noticias values(3456, 'Proyecto de energía renovable a gran escala', 5, 'Ana López', '09/16/23', 'F:\Noticias\EnergiaRenovable');
insert into Noticias values(7890, 'Los infaltables del verano', 6, 'Luis Martínez', '09/17/23', 'F:\Noticias\ShopNow');
insert into Noticias values(2345, 'Lanzamiento de nueva coleccion alta gama', 4, 'Laura Sánchez', '09/18/23', 'F:\Noticias\Espacio');
insert into Noticias values(6789, 'Se revelan los resultados de las paso',5 , 'Javier Fernández', '09/14/23', 'F:\Noticias\IA');
insert into Noticias values(1011, 'Inagura el campeonato de tenis', 2, 'Elena Ramírez', '09/20/23', 'F:\Noticias\Inaguraciones');
insert into Noticias values(2945, 'Nuevo presidente elegido en elecciones históricas', 5, 'Andrés Castro', '09/15/23', 'F:\Noticias\Politica');
insert into Noticias values(6089, 'Equipo local gana el campeonato nacional de fútbol',2, 'Beatriz Ortega', '09/19/23', 'F:\Noticias\Deportes');
insert into Noticias values(1001, 'Robo millonario en el centro de la ciudad', 1, 'Andrés Sánchez', '09/28/23', 'F:\Noticias\Policia');
insert into Noticias values(1213, 'Estreno de la esperada película de ciencia ficción', 3, 'Laura Pérez', '09/13/23', 'F:\Noticias\Cine');
insert into Noticias values(1415, 'Desfile de moda con diseñadores internacionales', 4, 'Elena Fernández', '09/22/23', 'F:\Noticias\Moda');
insert into Noticias values(1617, 'Reformas importantes en el sistema educativo', 5, 'Alejandro Gómez', '09/23/23', 'F:\Noticias\Politica');
insert into Noticias values(1819, 'Lanzamiento de nueva campaña publicitaria', 5, 'Marta López', '09/24/23', 'F:\Noticias\Publicidad');


create table Comentarios(
	IdComentario int,
	IdNoticia int,
	Texto varchar(100),
	IdUsuario int,
	Fecha date,
	constraint pk_Comentario primary key(IdComentario),
	constraint fk_Comentarios_Usuarios foreign key(IdUsuario) references Usuarios(IdUsuario),
	constraint fk_Comentarios_Noticias foreign key(IdNoticia) references Noticias(IdNoticia)
)

insert into Comentarios values (124, 1234, 'No me gusta, siento que falta creatividad.',  123045, '09/13/23');
insert into Comentarios values (567, 1001, 'Título poco llamativo.',  901234, '09/12/20');
insert into Comentarios values (987, 1001, 'Me gusta, aborda y explaya mas este tema.',  789012, '08/15/23');
insert into Comentarios values (269, 3456, 'No me gusta, siento que falta creatividad.',  678901, '01/23/22');
insert into Comentarios values (193, 5678, 'Este párrafo no tiene sentido, poco entendible.',  234567, '09/09/23');
insert into Comentarios values (367, 2345, 'Muchos errores de ortografía.',  567890, '03/29/23');


create table Privilegios(
	IdUsuario int,
	Privilegio varchar(20)
		constraint ck_Privilegios check (Privilegio is not null and (Privilegio = 'Crear noticia' or Privilegio = 'Responsable')),
	IdCategoria int,
	constraint fk_Privilegios_usuarios foreign key (IdUsuario) references Usuarios(IdUsuario),
	constraint fk_Privilegios_categoria foreign key (IdCategoria) references Categorias(IdCategoria)
)

insert into Privilegios values (123456, 'Responsable', 1);
insert into Privilegios values (234567, 'Crear noticia', 2);
insert into Privilegios values (345678, 'Responsable', 3);
insert into Privilegios values (456789, 'Crear noticia', 1);


create table Votaciones(
	IdVotacion int,
	IdNoticia int,
	FechaInicio DateTime,
	FechaFin DateTime,
	Pregunta varchar(50),
	Respuesta1 varchar(50),
	Respuesta2 varchar(50),
	Respuesta3 varchar(50),
	Voto1 int,
	Voto2 int,
	Voto3 int,
	constraint pk_Votaciones primary key (IdVotacion),
	constraint fk_Votaciones_Noticias foreign key (IdNoticia) references Noticias(IdNoticia)
)

insert into Votaciones values (1, 1234, '2023-10-30 08:00:00', '2023-11-06 20:00:00', '¿Qué te parece la noticia?', 'Buena', 'Regular', 'Mala', 2, 4, 1);
insert into Votaciones values (2, 5678, '2023-11-01 10:00:00', '2023-11-08 18:00:00', '¿Qué opinas sobre la noticia?', 'Interesante', 'No me interesa', 'Indiferente', 4, 3, 0);
insert into Votaciones values (3, 9012, '2023-11-05 09:00:00', '2023-11-12 19:00:00', '¿Qué opinas sobre este descubrimiento?', 'Fascinante', 'No me sorprende', 'No me interesa', 0, 1, 0);
insert into Votaciones values (4, 3456, '2023-11-03 11:00:00', '2023-11-10 21:00:00', '¿Qué piensas sobre la energía renovable?', 'Importante para el futuro', 'No es sostenible', 'Indiferente', 1, 0, 1);
insert into Votaciones values (5, 7890, '2023-11-04 12:00:00', '2023-11-11 22:00:00', '¿Te interesa el mundo de la moda?', 'Sí, mucho', 'No me gusta la moda', 'No me interesa', 0, 3, 0);
insert into Votaciones values (6, 2345, '2023-11-02 14:00:00', '2023-11-09 16:00:00', '¿Qué opinas sobre la nueva campaña publicitaria?', 'Creativa y atractiva', 'Poco efectiva', 'No me interesa', 2, 0, 8);
insert into Votaciones values (7, 6089, '2023-11-06 16:00:00', '2023-11-13 14:00:00', '¿Te gusta el fútbol local?', 'Sí, soy fanático', 'No sigo el fútbol', 'Indiferente', 6, 1, 2);


/*
drop table Noticias;
drop table Categorias;
drop table Comentarios;
drop table Temas;
drop table Usuarios;
drop table Privilegios;
drop table Votaciones;
*/




---PARTE C---

--Discos--
--¿Cuántos temas tienen los álbumes del género rock?
SELECT COUNT(*) AS Cantidad_Temas_Rock
FROM Temas t                                         /*Las letras t, a y g que aparecen solas en la consulta SQL son alias de las tablas. Los alias de las tablas son una forma de darle un nombre temporal a la tabla en una consulta específica*/
JOIN Albumes a ON t.codAlbum = a.codAlbum
JOIN Generos g ON a.codGenro = g.codGenro
WHERE g.descripcion = 'rock' 


--¿Cuántos artistas distintos hicieron álbumes del género clásico?
SELECT COUNT(*) AS Cantidad_Artistas_Clasica
FROM (
    SELECT ar.codArtista
    FROM Artistas ar
    JOIN Albumes al ON ar.codArtista = al.codArtista
    JOIN Generos g ON al.codGenro = g.codGenro
    WHERE g.descripcion = 'clasica'
    GROUP BY ar.codArtista
) AS Artistas_Clasica


--¿Cuáles son los géneros que tienen más de tres álbumes?
 SELECT g.descripcion AS Genero, COUNT(*) AS Cantidad_Albumes
FROM Generos g
JOIN Albumes a ON g.codGenro = a.codGenro
GROUP BY g.descripcion
HAVING COUNT(*) > 3


--¿Cuál es el álbum con más temas (considere que puede haber más de uno)?
SELECT A.codAlbum, A.titulo, COUNT(T.codTemas) as numTemas
FROM Albumes A
JOIN Temas T ON A.codAlbum = T.codAlbum
GROUP BY A.codAlbum, A.titulo
HAVING COUNT(T.codTemas) = (
    SELECT TOP 1 COUNT(T2.codTemas)
    FROM Temas T2
    GROUP BY T2.codAlbum
    ORDER BY COUNT(T2.codTemas) DESC
)


--¿Cuáles son los álbumes que tienen un título que es igual al título de alguno de los temas del mismo?
SELECT A.codAlbum, A.titulo
FROM Albumes A
JOIN Temas T ON A.codAlbum = T.codAlbum
WHERE A.titulo = T.titulo


--Determine el nombre de los artistas y de los álbumes de aquellos álbumes del género pop con temas que contengan una letra ñ en el título.
SELECT Ar.nombre AS NombreArtista, Al.titulo AS TituloAlbum
FROM Artistas Ar
JOIN Albumes Al ON Ar.codArtista = Al.codArtista
JOIN Temas T ON Al.codAlbum = T.codAlbum
JOIN Generos G ON Al.codGenro = G.codGenro
WHERE G.descripcion = 'pop' AND T.titulo LIKE '%ñ%'


--¿Cuáles son los discos que pertenezcan a géneros que contengan una letra p en la descripción pero que no tengan una letra s?en la descripción pero que no tengan una letra s?
SELECT Al.titulo AS TituloAlbum
FROM Albumes Al
JOIN Generos G ON Al.codGenro = G.codGenro
WHERE G.descripcion LIKE '%p%' AND G.descripcion NOT LIKE '%s%'


--Pedidos y Facturas--
--¿Cuáles son los clientes con saldo negativo?
select *
	from Clientes
	where saldo < 0


--Determine si el bruto de las facturas es igual a la sumatoria de sus ítems. 
select Facturas.nroFactura, 
		case when Facturas.bruto = (select sum(ItemsFactura.precio)
										from ItemsFactura
										where (ItemsFactura.nroFactura = Facturas.nroFactura))
		then 'Es Igual'
		else 'Es distinto'
		end as igualdad
from Facturas


--Determine cuales facturas tienen menos cantidad de artículos vendidos que los pedidos.
SELECT	f.nroFactura, p.nroPedido
FROM Facturas f 
JOIN Pedidos p ON f.codPedido = p.nroPedido
WHERE (SELECT SUM(cantidad) FROM ItemsFactura WHERE nroFactura = f.nroFactura) < (SELECT SUM(cantidad) FROM ItemsPedido WHERE codPedido = p.nroPedido) 


--Determine el artículo que esté compuesto por más componentes.		
select max(veces) as max_veces
    from (Select count(codProducto) as veces, codProducto 
	from Composiciones group by codProducto
    )
    as veces00


--¿Cuáles son los productos que no figuran en ningún pedido?
select codProducto, descripción
from Productos 
	where Productos.codProducto <> all (select codProducto from ItemsPedido)


--Determine el cliente con la factura más costosa.
SELECT TOP 1 C.codCliente, C.nombre, MAX(F.final) as FacturaMasCostosa
FROM Clientes C
JOIN Facturas F ON C.codCliente = F.codCliente
GROUP BY C.codCliente, C.nombre
ORDER BY FacturaMasCostosa DESC


--¿Cuáles son los artículos cuyo stock es menor al punto de reposición?
select P.descripción, P.stock, P.puntoReposicion
from Productos P
where stock < puntoReposicion


--¿Cuáles son los privilegios de cada usuario?
select U.nombre, P.privilegio
from Usuarios U
join Privilegios P on U.IdUsuario = P.IdUsuario


--¿Cuál es el usuario que escribió la noticia más votada?
SELECT N.Autor
FROM Noticias N
JOIN (
    SELECT IdNoticia, MAX(Voto1 + Voto2 + Voto3) as MaxVotos
    FROM Votaciones V
    GROUP BY IdNoticia
) V ON N.IdNoticia = V.IdNoticia
WHERE V.MaxVotos = (
    SELECT MAX(Voto1 + Voto2 + Voto3)
    FROM Votaciones V
)


--¿Cuántos votos recibió en total cada noticia?
SELECT IdNoticia, SUM(Voto1 + Voto2 + Voto3) as TotalVotos
FROM Votaciones
GROUP BY IdNoticia


--¿Qué usuarios escribieron noticias que pertenezcan al género policiales y que tengan al menos un comentario?
SELECT DISTINCT N.Autor
FROM Noticias N
INNER JOIN Categorias C ON N.IdCategoria = C.IdCategoria
INNER JOIN Comentarios COM ON N.IdNoticia = COM.IdNoticia
WHERE C.Nombre = 'policial'
GROUP BY N.Autor
HAVING COUNT(COM.IdComentario) >= 1  


--¿Cuáles son los pedidos que tienen productos con una descripción que contenga más de 60 caracteres en total?
SELECT P.nroPedido, PR.descripción as Producto
FROM Pedidos P
JOIN ItemsPedido I ON P.nroPedido = I.codPedido
JOIN Productos PR ON I.codProducto = PR.codProducto
WHERE LEN(PR.descripción) > 60


--Determine el total de todas las facturas de cada cliente del mes de febrero del corriente año
SELECT C.codCliente, C.nombre, SUM(F.final) as TotalFacturasFebrero
FROM Clientes C
JOIN Facturas F ON C.codCliente = F.codCliente
WHERE MONTH(F.fecha) = 2 AND YEAR(F.fecha) = YEAR(GETDATE())
GROUP BY C.codCliente, C.nombre






----TPO 3----

---PARTE A---
--Funciones--
/*
Crear una función que reciba la descripción de un género y devuelva el nombre 
del artista que posee más discos, que el autor con más discos durante la década
del 2000 (considera la década como el período 2001 – 2010)
*/
create or alter function artistaMas2000(
    @genero varchar)
    returns varchar 
    as 

    begin
    declare @codGenero int
    select @codGenero = codgenro    from Generos 
    where descripcion = @genero

    declare @artista00 varchar
    select  @artista00 = (
    select nombre from Artistas where Artistas.codArtista=
    (select max(codArtista) from Albumes
    where Albumes.codGenro=@codGenero and fecha  between '2001-01-01 00:00:00.000' and '2010-12-31 23:59:59.999'))

    return @artista00
    end;


/*
Crear una funciona que devuelva la lista de temas de acuerdo el nombre de un
artista pasado como parámetro. Informe el nombre del tema, la duración, el orden,
el nombre del álbum donde se encuentra.
*/
create or alter function ListaTemas
	(@nombreA varchar(100))
	returns table
	as
	return (
	select t.Titulo as NombreTema, t.duracion, t.orden, al.titulo as NombreAlbum
	from Albumes al inner join temas t on al.codAlbum = t.codAlbum inner join Artistas ar on al.codArtista = ar.codArtista
		where ar.nombre = @nombreA
	)

select *
	from ListaTemas('Taylor Swift')


--Crear una función que devuelva el título de la noticia más votada en un rango de fechas determinado pasado como parámetro.
create or alter function NoticiaMasVotada
	(@fecha1 datetime, @fecha2 datetime)
	returns varchar(60)
	as
	begin 
	declare @titulo varchar(60)
	select @titulo = Titulo 
			from Noticias
			where IdNoticia = (
				select IdNoticia
				from votaciones v1
				group by IdNoticia
				having (sum(Voto1) + sum(Voto2) +sum(Voto3)) = 
					(select max(suma_votos)
					from (select (sum(Voto1) + sum(Voto2) +sum(Voto3)) as suma_votos
								from Votaciones v2
								where FechaInicio >= @fecha1 and FechaFin <= @fecha2
								group by IdNoticia
					) as subconsulta
					)
					)
	return @titulo
	end

declare @titulo varchar(60);
set @titulo = dbo.NoticiaMasVotada('2023-11-01 00:00.000', '2023-11-14 23:59.000');
print 'El título de la noticia más votada es ' + '"' + @titulo + '"';  


/*Crear una función de determine quienes son los usuarios que al menos hicieron 
20 comentarios a noticias de genero economía en los últimos 30 días. Indique el 
nombre de los usuarios.
*/
CREATE OR ALTER FUNCTION ComentariosEconomia()
RETURNS TABLE 
AS
RETURN 
(
    SELECT U.Nombre
    FROM Usuarios U
    JOIN Comentarios C ON U.IdUsuario = C.IdUsuario
    JOIN Noticias N ON C.IdNoticia = N.IdNoticia
    JOIN Categorias Cat ON N.IdCategoria = Cat.IdCategoria
    WHERE Cat.Nombre = 'economía' AND C.Fecha >= DATEADD(day, -30, GETDATE())
    GROUP BY U.Nombre
    HAVING COUNT(*) >= 20
)


/*Crear una función que retorne la cantidad de votos en una fecha determinada 
pasada como parámetro. Indicar la fecha, el título, el nombre de la categoría, la 
pregunta y la cantidad de votos totales recibidos, las respuestas y sus cantidades 
de votos.
*/
CREATE OR ALTER FUNCTION VotosPorFecha (@fechas DATE)
RETURNS TABLE 
AS
RETURN 
(
    SELECT 
        V.FechaInicio AS Fecha, 
        N.Titulo AS Titulo, 
        Cat.Nombre AS Categoria, 
        V.Pregunta AS Pregunta, 
        (V.Voto1 + V.Voto2 + V.Voto3) AS VotosTotales,
        V.Respuesta1, V.Voto1,
        V.Respuesta2, V.Voto2,
        V.Respuesta3, V.Voto3
    FROM Votaciones V
    JOIN Noticias N ON V.IdNoticia = N.IdNoticia
    JOIN Categorias Cat ON N.IdCategoria = Cat.IdCategoria
    WHERE V.FechaInicio = @fechas
)


/*Crear una función que determine la cantidad de dinero pagado (facturado a un 
cliente) de aquellos productos que poseen al menos 4 productos en su 
composición.
*/
CREATE OR ALTER FUNCTION TotalFacturadoProductosConComposicion()
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @TotalFacturado DECIMAL(10,2);

    SELECT @TotalFacturado = SUM(IFact.precio * IFact.cantidad)
    FROM ItemsFactura IFact
    INNER JOIN (
        SELECT codProducto
        FROM Composiciones
        GROUP BY codProducto
        HAVING COUNT(codProductoComponente) >= 4
    ) Comp ON IFact.codProducto = Comp.codProducto;

    RETURN @TotalFacturado;
END

SELECT dbo.TotalFacturadoProductosConComposicion() --ME SALE NULL, REVISAR!!! 




---PARTE B---

--Procedimientos--

--1
CREATE OR ALTER PROCEDURE CambiarCategoriaDeNoticia
    @TituloNoticia VARCHAR(60),
    @NombreCategoria VARCHAR(100)
AS
BEGIN
    -- Verificar que la noticia y la categoría existen
    IF NOT EXISTS (SELECT 1 FROM Noticias WHERE Titulo = @TituloNoticia)
    BEGIN
        PRINT 'La noticia no existe.';
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM Categorias WHERE Nombre = @NombreCategoria)
    BEGIN
        PRINT 'La categoría no existe.';
        RETURN;
    END

    -- Verificar que la noticia pertenezca a una categoría distinta de la ingresada
    IF EXISTS (SELECT 1 FROM Noticias n JOIN Categorias c ON n.IdCategoria = c.IdCategoria WHERE n.Titulo = @TituloNoticia AND c.Nombre = @NombreCategoria)
    BEGIN
        PRINT 'La noticia ya pertenece a la categoría ingresada.';
        RETURN;
    END

    -- Verificar que se modificará solo una noticia
    IF (SELECT COUNT(*) FROM Noticias WHERE Titulo = @TituloNoticia) > 1
    BEGIN
        PRINT 'Hay más de una noticia con ese título.';
        RETURN;
    END

    -- Cambiar la categoría de la noticia
    UPDATE Noticias
    SET IdCategoria = (SELECT IdCategoria FROM Categorias WHERE Nombre = @NombreCategoria)
    WHERE Titulo = @TituloNoticia;

    PRINT 'La categoría de la noticia ha sido actualizada exitosamente.';
END

EXEC CambiarCategoriaDeNoticia @TituloNoticia = 'Título de la Noticia', @NombreCategoria = 'Nueva Categoría'


--2
CREATE  OR ALTER PROCEDURE CargarVotos
    @TituloNoticia VARCHAR(60),
    @Pregunta VARCHAR(50),
    @RespuestaVotada VARCHAR(50),
    @FechaCarga DATETIME,
    @CantidadVotos INT OUTPUT,
    @PorcentajeVotos FLOAT OUTPUT
AS
BEGIN
--valida existencia de noticia,respuesta,pregunta
	IF NOT EXISTS (SELECT 1 FROM Noticias WHERE Titulo = @TituloNoticia)
    BEGIN
        PRINT 'La noticia no existe.';
        RETURN;
    END
	IF NOT EXISTS (SELECT 1 FROM Votaciones WHERE Pregunta = @Pregunta AND (Respuesta1 = @RespuestaVotada OR Respuesta2 = @RespuestaVotada OR Respuesta3 = @RespuestaVotada))
    BEGIN
        PRINT 'La pregunta y/o la respuesta no existen.';
        RETURN;
    END
	--valida fecha 
	IF NOT EXISTS (SELECT 1 FROM Votaciones WHERE FechaInicio <= @FechaCarga AND FechaFin >= @FechaCarga)
    BEGIN
        PRINT 'La fecha de carga no está en el rango de fechas válido para esta votación.';
        RETURN;
    END
	UPDATE Votaciones
    SET 
        Voto1 = CASE WHEN Respuesta1 = @RespuestaVotada THEN Voto1 + 1 ELSE Voto1 END,
        Voto2 = CASE WHEN Respuesta2 = @RespuestaVotada THEN Voto2 + 1 ELSE Voto2 END,
        Voto3 = CASE WHEN Respuesta3 = @RespuestaVotada THEN Voto3 + 1 ELSE Voto3 END
    WHERE Pregunta = @Pregunta;
	SELECT 
        @CantidadVotos = CASE 
            WHEN Respuesta1 = @RespuestaVotada THEN Voto1 
            WHEN Respuesta2 = @RespuestaVotada THEN Voto2 
            WHEN Respuesta3 = @RespuestaVotada THEN Voto3 
        END,
        @PorcentajeVotos = CASE 
            WHEN Respuesta1 = @RespuestaVotada THEN CAST(Voto1 AS FLOAT) / (Voto1 + Voto2 + Voto3) 
            WHEN Respuesta2 = @RespuestaVotada THEN CAST(Voto2 AS FLOAT) / (Voto1 + Voto2 + Voto3) 
            WHEN Respuesta3 = @RespuestaVotada THEN CAST(Voto3 AS FLOAT) / (Voto1 + Voto2 + Voto3) 
        END
    FROM Votaciones
    WHERE Pregunta = @Pregunta;

    PRINT 'El voto ha sido cargado exitosamente.';
END


--3
CREATE PROCEDURE FacturarPedido @nroPedido int, @nombreCliente varchar(100), @nroFactura int OUTPUT, @importeBruto decimal(10, 2) OUTPUT, @importeNeto decimal(10, 2) OUTPUT
AS
BEGIN
    -- Verificar que el cliente ingresado exista 
    IF NOT EXISTS (SELECT 1 FROM Clientes C JOIN Pedidos P ON C.codCliente = P.codCliente WHERE P.nroPedido = @nroPedido AND C.nombre = @nombreCliente)
    BEGIN
        RAISERROR ('Error: El cliente ingresado no existe o no coincide con el cliente almacenado en el pedido.', 16, 1);
        RETURN;
    END

    -- Crear factura
    INSERT INTO Facturas (fecha, codCliente, codPedido, bruto, iva, IIBB, final)
    SELECT GETDATE(), P.codCliente, P.nroPedido, SUM(IP.cantidad * PR.precio), SUM(IP.cantidad * PR.precio) * 0.21, SUM(IP.cantidad * PR.precio) * 0.03, SUM(IP.cantidad * PR.precio) * 1.24
    FROM Pedidos P
    JOIN ItemsPedido IP ON P.nroPedido = IP.codPedido
    JOIN Productos PR ON IP.codProducto = PR.codProducto
    WHERE P.nroPedido = @nroPedido
    GROUP BY P.codCliente, P.nroPedido;

    SET @nroFactura = SCOPE_IDENTITY();

    -- Crear ítems de factura
    INSERT INTO ItemsFactura (codProducto, nroFactura, cantidad, precio, descuento)
    SELECT IP.codProducto, @nroFactura, IP.cantidad, PR.precio, 0
    FROM ItemsPedido IP
    JOIN Productos PR ON IP.codProducto = PR.codProducto
    WHERE IP.codPedido = @nroPedido;

    
    SELECT @importeBruto = bruto, @importeNeto = final
    FROM Facturas
    WHERE nroFactura = @nroFactura;
END


--4
CREATE  OR ALTER PROCEDURE ListadoNoticiasVotaciones @nombreCategoria VARCHAR(100)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Categorias WHERE Nombre = @nombreCategoria)
    BEGIN
        PRINT 'Error!: La categoría no existe.'
        RETURN
    END

    DECLARE @resultado TABLE (
        Categoria VARCHAR(100),
        Noticia VARCHAR(60),
        Usuario VARCHAR(40),
        Comentario VARCHAR(100),
        Pregunta VARCHAR(50),
        Respuesta VARCHAR(50),
        Votos INT
    )

    INSERT INTO @resultado
    SELECT 
        Cat.Nombre AS Categoria,
        N.Titulo AS Noticia,
        U.Nombre AS Usuario,
        C.Texto AS Comentario,
        V.Pregunta AS Pregunta,
        V.Respuesta1 AS Respuesta,
        V.Voto1 AS Votos
    FROM Categorias Cat
    JOIN Noticias N ON Cat.IdCategoria = N.IdCategoria
    JOIN Comentarios C ON N.IdNoticia = C.IdNoticia
    JOIN Usuarios U ON C.IdUsuario = U.IdUsuario
    JOIN Votaciones V ON N.IdNoticia = V.IdNoticia
    WHERE Cat.Nombre = @nombreCategoria

    SELECT * FROM @resultado
END

EXEC ListadoNoticiasVotaciones @nombreCategoria = 'Entretenimiento' --VERIFICA SIN FUNCIONA 
EXEC ListadoNoticiasVotaciones @nombreCategoria = 'MUSICA' --VERIFICA CUANDO NO EXISTE 


--5
create or alter procedure CrearUsuario
	@nuevoNombre varchar(100),
	@nuevoAlias varchar(100),
	@nuevoCorreo varchar(100),
	@nuevoPrivilegio varchar(100),
	@Categoria1 varchar(100),
	@Categoria2 varchar(100), 
	@Categoria3 varchar(100)
as
begin
	--Verifique que el alias no existe, caso contrario emitir un mensaje de error y finalizar.
	if exists (
		select 1 
		from Usuarios
		where Alias = @nuevoAlias
		)
	begin
		print('Error: el alias ya existe.')
		return;
	end

	--Verificar que el privilegio asignado sea correcto, caso contrario emitir un mensaje de error y finalizar.
	if not exists (
		select 1 
		from Privilegios
		where Privilegio = @nuevoPrivilegio
		)
	begin
		print('Error: el privilegio no existe.')
		return;
	end

	/*Verificar que al menos uno de los géneros tenga un valor y que los ingresados
	sean correctos, caso contrario emitir un mensaje de error y finalizar.*/
	if @Categoria1 IS NULL AND @Categoria2 IS NULL AND @Categoria3 IS NULL
    begin
        print 'Error: al menos una categoria debe tener un valor.';
        return;
    end

	/*
	Crear al usuario y agregarle los privilegios correspondientes. El password de
	un usuario nuevo debe ser igual al alias concatenado con el número de día del
	ingreso.
	*/
	begin
	print('Nuevo usuario: ')
	print('Nombre: ' + @nuevoNombre)
	print('Alias: ' + @nuevoAlias)
	print('Correo: ' + @nuevoCorreo)
	print('Privilegio: ' + @nuevoPrivilegio)
	declare @nuevoPassword varchar(100) 
	set @nuevoPassword = @nuevoalias + cast(day(getdate()) as varchar)
	print('Password: ' + @nuevoPassword)
	end
end;

exec CrearUsuario 
	@nuevoNombre = 'pablo',
	@nuevoAlias = 'pablito',
	@nuevoCorreo = 'pablomartinez@gmail.com',
	@nuevoPrivilegio = 'Crear Noticia',
	@Categoria1 = 'Deportes',
	@Categoria2 = 'Entretenimiento', 
	@Categoria3 = 'Moda'


--6
CREATE PROCEDURE CambiarCategoriaNoticia @tituloNoticia varchar(60), @nombreCategoria varchar(100)
AS
BEGIN
    -- Verificar que la noticia y la categoría existen
    IF NOT EXISTS (SELECT 1 FROM Noticias WHERE Titulo = @tituloNoticia)
    BEGIN
        RAISERROR ('Error: La noticia ingresada no existe.', 16, 1);
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM Categorias WHERE Nombre = @nombreCategoria)
    BEGIN
        RAISERROR ('Error: La categoría ingresada no existe.', 16, 1);
        RETURN;
    END

    -- Verificar que la noticia pertenezca a una categoría distinta de la ingresada
    IF EXISTS (SELECT 1 FROM Noticias N JOIN Categorias C ON N.IdCategoria = C.IdCategoria WHERE N.Titulo = @tituloNoticia AND C.Nombre = @nombreCategoria)
    BEGIN
        RAISERROR ('Error: La noticia ya pertenece a la categoría ingresada.', 16, 1);
        RETURN;
    END

    -- Modificar la noticia con la categoría ingresada
    BEGIN TRANSACTION;
    UPDATE Noticias
    SET IdCategoria = (SELECT IdCategoria FROM Categorias WHERE Nombre = @nombreCategoria)
    WHERE Titulo = @tituloNoticia;

    -- Si al actualizar se verifica que se modificaron más de un registro volver al estado original 
    IF @@ROWCOUNT > 1
    BEGIN
        ROLLBACK TRANSACTION;
        RAISERROR ('Error: Se modificaron más de un registro. Cantidad de registros afectados: %d.', 16, 1, @@ROWCOUNT);
        RETURN;
    END

    COMMIT TRANSACTION;
END

EXEC CambiarCategoriaNoticia @tituloNoticia = 'titulo de la noticia', @nombreCategoria = 'nombre de la categoria'


--7
create or alter procedure FacturacionTrimestre @cliente varchar(100), @trimestre int
as
begin
	if not exists (select * from clientes c where nombre = @cliente)
	begin
		print('El cliente no existe')
		return
	end
	if @trimestre < 0 or @trimestre > 4
	begin
		print('El trimestre no es valido')
		return
	end
	else
	begin
		declare @i int = 3
		declare @existe int = 0
		while @i < 13
			begin 
				if @i/3 = @trimestre
					if exists (select * from facturas f where month(f.fecha) between (@i - 2) and @i)
					begin
						set @existe = 1
					end
				set @i = @i +3
			end
	end
	if @existe = 0
	begin
		print('El cliente no posee facturacion ese trimestre')
		return
	end

	declare @nroCliente int
	select @nroCliente = c.codCliente from Clientes c where @cliente = c.nombre
	declare @nombre varchar(100)
	select @nombre = 'Facturacion_' + replace(@nroCliente, ' ', '_') + '_' + replace(@trimestre, ' ', '_')
	declare @sentencia nvarchar(3000)

	if exists (select * from sysobjects where name = @nombre)
	begin
		Select @sentencia = 'drop table ' + @nombre
		exec sp_executeSQL @sentencia
	end

	select @sentencia = 'create table ' + @nombre +
						' (nroFactura int,' +
						'fechaFactura date,' +
						'cliente varchar(30),' +
						'nroPedido int,' +
						'fechaPedido date,' +
						'cantProductos int,' +
						'cantUnidades int,' +
						'bruto int,' +
						'iva int,' +
						'IIBB int,' +
						'final int)'

	exec sp_executeSQL @sentencia
end
			
exec FacturacionTrimestre @cliente = 'Diaz, Carlos' , @trimestre = 4

drop procedure FacturacionTrimestre;


--8
create or alter procedure CrearTabla
	@inicio date,
	@fin date,
	@registros int output

	as
	begin
	
	--Verificar que el rango de fechas sea válido (debe tener al menos un trimestre). Caso contrario enviar un mensaje y finalizar el procedimiento.
	declare @diferencia int = datediff(month, @inicio, @fin)
	if @diferencia < 3
	begin
		print 'Rango de fechas no válido.'
		return 
	end
	
	--Debe existir información para ese trimestre. Caso contrario enviar un mensaje y finalizar el procedimiento. 
	declare @cant int = 0
	select @cant = count(nroFactura)
    from Facturas F
    where F.fecha between @inicio and @fin;

    if @cant = 0
    begin
        print 'No hay información para ese trimestre.';
        return;
    end

	set @registros = @cant

	declare @sentencia nvarchar(3000)
	declare @tabla varchar(100)

	set @tabla  = 'RC_' + month(@inicio) + year(@inicio) + '_' + month(@fin) + month(@fin)
	
	set @sentencia = 'create table ' + @tabla + ' (Producto varchar(20) primary key, cant int, MesAño date)'
	exec sp_executeSQL @sentencia

	/*
	select @sentencia = 'insert into ' + @tabla +
						' select codProducto, sum(cantidad) as suma, fecha ' +
						' from Facturas fac inner join ItemsFactura itemfac on fac.nroFactura = itemfac.nroFactura ' +
						' where fecha >= + @inicio and fecha <= @fin '+
						' group by codProducto'

	*/
	exec sp_executeSQL @sentencia
	end


declare @inicioFecha date = '2023-02-03'
declare @finFecha date = '2023-02-26'
declare @registros2 int
execute CrearTabla @inicioFecha, @finFecha, @registros2 output


--9
create or alter procedure mostrarListado
as
begin
	--1° Cursor
	declare cursorArtistaYAlbum cursor for
	select ar.nombre as nombArtista, al.titulo as nombAlbum, al.codAlbum, format(al.fecha, 'dd/MM/yyyy') as fechaAlbum
	from Artistas ar inner join Albumes al on ar.codArtista = al.codArtista

	declare @nombArtista varchar(100)
	declare @nombAlbum varchar(100)
	declare @codAlbum int
	declare @fechaAlbum varchar(100)

	open cursorArtistaYAlbum
	fetch next from cursorArtistaYAlbum into @nombArtista, @nombAlbum, @codAlbum, @fechaAlbum

	while @@FETCH_STATUS = 0
	begin
		print 'Artista: ' + @nombArtista
		print 'Discografia'
		print @fechaAlbum + ':' + @nombAlbum

		--2° Cursor
		declare cursorTema cursor for
		select codTemas as nro, titulo, duracion
			from Temas
			where codAlbum = @codAlbum

		declare @nro int;
		declare @titulo varchar(100);
		declare @duracion time;

		open cursorTema
		fetch next from cursorTema into @nro, @titulo, @duracion
		
		while @@FETCH_STATUS = 0
		begin
			print format(@nro, '00') + '-' + @titulo + ' ' + convert(varchar(20), @duracion, 108)
			fetch next from cursorTema into @nro, @titulo, @duracion
			
		end
		print('')
		close cursorTema
		deallocate cursorTema

		fetch next from cursorArtistaYAlbum into @nombArtista, @nombAlbum, @codAlbum, @fechaAlbum
	end	

	close cursorArtistaYAlbum
    deallocate cursorArtistaYAlbum
    
end
exec mostrarListado


--10
create or alter procedure mostrarListadoProd
as
begin
	declare cursorProductos cursor for
	select codProducto, descripción, precio
	from Productos

	declare @codProducto int
	declare @descripcion varchar(100)
	declare @precio decimal

	open cursorProductos
	fetch next from cursorProductos into @codProducto, @descripcion, @precio

	while @@FETCH_STATUS = 0
	begin
	print 'Producto: ' + @descripcion

		declare cursorComponentes cursor for
		select codProductoComponente, cantidad
		from Composiciones
		where codProducto = @codProducto

		declare @codProductoComponente int;
		declare @cantidad int;

		open cursorComponentes
		fetch next from cursorComponentes into @codProductoComponente, @cantidad

		print 'Componente  cantidad'
		while @@FETCH_STATUS = 0
		begin
			print convert(varchar(10), @codProductoComponente) + '      ' + convert(varchar(10), @cantidad);

			fetch next from cursorComponentes into @codProductoComponente, @cantidad
		end
		
		close cursorComponentes
		deallocate cursorComponentes
		print 'Total del producto ' + @descripcion + ' ' + convert(varchar(20), @precio);

		print('')
		fetch next from cursorProductos into @codProducto, @descripcion, @precio	
		end	

		close cursorProductos
		deallocate cursorProductos  
end
exec mostrarListadoProd




---PARTE C---

--Procedimientos--

/*Definir un trigger para la actualización de la tabla de Productos verificando 
que los precios actualizados sean al menos un 17% más caros que los 
existentes. Si no es así no incrementar los precios e informar el error.*/
create trigger verificarPrecio on Productos
for update 
as
begin
	declare @codigo int;
	declare @precioAnterior decimal;
	declare @precioNuevo decimal;

	select @codigo = inserted.codProducto , @precioAnterior = deleted.precio, @precioNuevo = inserted.precio
	from inserted inner join deleted on deleted.codProducto = inserted.codProducto

if ((@precioAnterior * 0.17 + @precioAnterior) > @precioNuevo)
	begin
		print('Error: el precio nuevo no es 17% mas caro que el anterior.')
		rollback transaction;
	end
end

drop trigger verificarPrecio;

--Prueba
update Productos 
set precio = 25
where codProducto = 928374


/*Definir un trigger para generar un registro de los pedidos que fueron 
facturados, almacenándolos en una nueva tabla llamada logs (la tabla debe 
ser creada previamente fuera del trigger). 
Incluir en el log el numero de pedido, el numero de factura,
la fecha y hora de la modificación y el usuario 
que está conectado y las filas involucradas en la operación (cantidad de filas 
que involucro la grabación de la factura).
*/
create table logs (
	codPedido int,
	nroFactura int,
	fechaMod date,
	horaMod time,
	usuario varchar(50),
	filas int
	)
go

create trigger registroFacturas on Facturas
	for insert
	as
	begin
		declare @codPedido int;
		declare @nroFactura int;
		declare @fechaMod date;
		declare @horaMod time;
		declare @usuario varchar(50) = suser_sname();
		declare @filas int;
		select @codPedido = inserted.codPedido, @nroFactura = inserted.nroFactura
			from inserted
		select @fechaMod = cast(getdate() as date)
		select @horaMod = cast(getdate() as time)
		select @filas = count(*) from inserted 

		insert into logs values(@codPedido, @nroFactura, @fechaMod, @horaMod, @usuario, @filas)
	end

--Prueba
insert into Facturas values (222222, '2023-12-06', 789012, 199009, 1000, 21, 0, 1210)
select * from logs

delete from Facturas where nroFactura = 222222
drop table logs;
drop trigger registroFacturas;


/*Crear un trigger que impida el borrado o modificación de las facturas. Solo 
deber permitir que la misma se marque como anulada indicando al operador 
que la hizo. Incluir estas operaciones en el log creado para el punto anterior 
(modifique o cree las tablas como crea necesario para cumplir este objetivo)
*/
alter table Facturas
	add condicion varchar(20);
go
update Facturas
set condicion = 'optimo'
go

alter table logs
	add condicion varchar(20);
go
update logs
set condicion = 'optimo'
go

create trigger anularBorrado on Facturas
	for delete
	as
	begin
		declare @facturaEliminada int;
		select @facturaEliminada = deleted.nroFactura
		from deleted
		rollback transaction;

		if (select count(*) 
				from logs
				where @facturaEliminada = logs.nroFactura) > 0
					begin
						update logs
						set condicion = 'anulada'
						where nroFactura = @facturaEliminada
					end
			else
				begin
					insert into logs(nroFactura, condicion) values(@facturaEliminada, 'anulada')
				end

		if @facturaEliminada is not null
		begin
			update Facturas
				set condicion = 'anulada'
				where nroFactura = @facturaEliminada
		end
	end
go

create trigger anularModificacion on Facturas
	for update
	as
	begin
		declare @facturaModificada int;
		select @facturaModificada = deleted.nroFactura
		from deleted
		rollback transaction;

		if (select count(*) 
				from logs
				where @facturaModificada = logs.nroFactura) > 0
					begin
						update logs
						set condicion = 'anulada'
						where nroFactura = @facturaModificada
					end
			else
				begin
					insert into logs(nroFactura, condicion) values(@facturaModificada, 'anulada')
				end

		if @facturaModificada is not null
		begin
			update Facturas
				set condicion = 'anulada'
				where nroFactura = @facturaModificada
		end
	end

--drop trigger anularBorrado;
--drop trigger anularModificacion;

--Pruebas
delete from Facturas where nroFactura = 222222
update Facturas set iva = 22 where nroFactura = 789234
select * from Facturas
select * from logs
