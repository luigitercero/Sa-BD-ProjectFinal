CREATE TABLE employees (
first_name varchar(25),
last_name  varchar(25),
department varchar(15),
email  varchar(50)
);


CREATE TABLE reporte (
  id int(11) NOT NULL AUTO_INCREMENT,
  periodo int(11) NOT NULL,
  tipo int(11) NOT NULL,
  pais varchar(50) NOT NULL,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
--
-- Estructura de tabla para la tabla products
--

CREATE TABLE product (
  sku varchar(255) COLLATE latin1_bin NOT NULL,
  name varchar(255) COLLATE latin1_bin  NULL,
  price decimal(10,0)  NULL,
  shortDescription varchar(255) COLLATE latin1_bin  NULL,
  longDescription text COLLATE latin1_bin  NULL,
  active tinyint(1)  NULL DEFAULT '1',
  inventario int null,
  PRIMARY KEY (sku)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla images
--

CREATE TABLE image (
  id int(11) NOT NULL AUTO_INCREMENT,
  url text COLLATE latin1_bin,
  productSku varchar(255) COLLATE latin1_bin NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (productSku) REFERENCES product(sku) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla categories
--

CREATE TABLE category (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE latin1_bin NOT NULL,
  categoryParent int(11) NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (categoryParent) REFERENCES category (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla product_categories
--

CREATE TABLE productCategory (
  id int(11) NOT NULL AUTO_INCREMENT,
  productSku varchar(255) COLLATE latin1_bin NOT NULL,
  categoryId int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (productSku) REFERENCES product(sku) ON DELETE CASCADE,
  FOREIGN KEY (categoryId) REFERENCES category(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------
