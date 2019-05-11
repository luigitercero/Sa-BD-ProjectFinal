CREATE TABLE employees (
first_name varchar(25),
last_name  varchar(25),
department varchar(15),
email  varchar(50)
);




CREATE TABLE credenciales (
  client_id int(11) NOT NULL AUTO_INCREMENT,
  client_secret varchar(50) NOT NULL,
  servicio varchar(250) NOT NULL,
  funciones varchar(250) NOT NULL,
  PRIMARY KEY(client_id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
--
-- Estructura de tabla para la tabla products
--

CREATE TABLE product (
  sku varchar(255) COLLATE latin1_bin NOT NULL,
  name varchar(255) COLLATE latin1_bin NOT NULL,
  price decimal(10,0) NOT NULL,
  shortDescription varchar(255) COLLATE latin1_bin NOT NULL,
  longDescription text COLLATE latin1_bin NOT NULL,
  active tinyint(1) NOT NULL DEFAULT '1',
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
