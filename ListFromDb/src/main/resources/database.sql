CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into product(name, price,quantity,description,photo,featured) 
values('Mobile 1', '2.0',2,1,'description 1','thum1.gif');
insert into product(name, price,quantity,description,photo,featured) 
values('Komputer 1', '5.0',1,4,'description 2','thum2.gif');
insert into product(name, price,quantity,description,photo,featured) 
values('Laptop 1', '7.0',0,3,'description 3','thum3.gif');