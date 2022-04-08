
create database intracoffee;
use intracoffee;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Cafe'),
(2, 'Cocteles'),
(3, 'Dulces');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'americano', 'cafe_americano.jpg', 1, 5000, 5000),
(2, 12, '0', 0, 'capuchino', 'cafe_capuchino.jpg', 1, 25000, 25000),
(3, 1, '0', 4, 'americano', 'cafe_americano.jpg', 1, 5000, 5000),
(4, 2, '0', 4, 'capuchino', 'cafe_capuchino.jpg', 1, 25000, 25000),
(5, 3, '0', 5, 'caramelo macchiato', 'cafe_caramelo_macchiato.jpg', 1, 1000, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Cafe\r\n'),
(2, 'Cocteles\r\n'),
(3, 'Dulces\r\n');
-- (4, 'Ropa de niños\r\n'),
-- (5, 'Muebles\r\n'),
-- (6, 'Electrodomésticos\r\n'),
-- (7, 'Gadgets electrónicos\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'americano', 5000, 'americano ', 'cafe_americano.jpg', 'cafe americano'),
(2, 1, 1, 'capuchino', 25000, 'capuchino', 'cafe_capuchino.jpg', 'cafe capuchino'),
(3, 1, 1, 'caramelo macchiato', 30000, 'caramelo macchiato', 'cafe_caramelo_macchiato.jpg', 'cafe caramelo macchiato'),
(4, 1, 1, 'expreso', 32000, 'expreso', 'cafe_expreso.jpg', 'cafe expreso'),
(5, 1, 1, 'expresso helado', 10000, 'expresso helado', 'cafe_expresso_helado.jpg', 'cafe expresso helado'),
(6, 1, 1, 'hawaiano', 35000, 'hawaiano', 'cafe_hawaiano.jpg', 'hawaiano'),
(7, 1, 1, 'lagrima', 50000, 'lagrima', 'cafe_lagrima.jpg', 'cafe lagrima'),
(8, 1, 1, 'latte', 40000, 'latte', 'cafe_latte.jpg', 'cafe latte'),
(9, 1, 1, 'mocaccino', 12000, 'mocaccino', 'cafe_mocaccino.jpg', 'cafe mocaccino'),
(10, 1, 1, 'moka', 1000, 'moka', 'cafe_moka.jpg', 'cafe moka'),
(11, 1, 1, 'ruso', 1200, 'ruso', 'cafe_ruso.jpg', 'cafe ruso'),
(12, 1, 1, 'solo', 1500, 'solo', 'cafe_solo.jpg', 'cafe solo'),

(13, 2, 2, 'Baileys', 1200, 'Baileys', 'cocteleria_Baileys.jpg', 'cocteleria Baileys'),
(14, 2, 2, 'carajillo', 1400, 'carajillo', 'cocteleria_carajillo.jpg', 'cocteleria carajillo'),
(15, 2, 2, 'espresso martini', 1500, 'espresso martini', 'cocteleria_espresso_martini.jpg','cocteleria espresso martini'),
(16, 2, 2, 'hot russia coffe', 600, 'hot russia coffe', 'cocteleria_hot_russia_coffe.jpg', 'cocteleria hot russia coffe'),
(17, 2, 2, 'Irlandés', 1000, 'Irlandés', 'cocteleria_Irlandés.jpg', 'cocteleria Irlandés'),
(19, 2, 2, 'mazagrán', 3000, 'mazagrán', 'cocteleria_mazagrán.jpg', 'cocteleria mazagrán'),
(20, 2, 2, 'tiramisu', 1600, 'tiramisu', 'cocteleria_tiramisu.jpg', 'cocteleria tiramisu'),
(21, 2, 2, 'trufa', 800, 'trufa','cocteleria_trufa.jpg', 'trufa'),

(22, 3, 3, 'asiatico', 1300, 'asiatico', 'dulce_asiatico.jpg', 'dulce asiatico'),
(23, 3, 3, 'brownie', 1900, 'brownie','dulce_brownie.jpg', 'dulce brownie'),
(24, 3, 3, 'budin pan', 700, 'budin pan', 'dulce_budin_pan.jpg', 'dulce budin pan'),
(25, 3, 3, 'cupcake chocolate', 750, 'cupcake chocolate', 'dulce_cupcake_chocolate.jpg', 'dulce cupcake chocolate'),
(26, 3, 3, 'flan', 650, 'flan', 'dulce_flan.jpg', 'dulce flan'),
(27, 3, 3, 'galleta almendras', 2500, 'galleta almendras','dulce_galleta_almendras.jpg', 'dulce galleta almendras'),
(32, 3, 3, 'macarrones chocolate', 35000, 'macarrones chocolate', 'dulce_macarrones_chocolate.jpg', 'dulce macarrones chocolate'),
(33, 3, 3, 'pay fresa', 35000, 'pay fresa', 'dulce_pay_fresa.jpg', 'pay fresa'),
(34, 6, 4, 'pay limon', 1000, 'pay limon', 'dulce_pay_limon.JPG', 'dulce pay limon'),
(35, 6, 0, 'tarta manzana', 6000, 'tarta manzana', 'dulce_tarta_manzana.jpg', 'tarta manzanar'),
(36, 6, 5, 'tartaleta ricota', 1500, 'tartaleta ricota', 'dulce_tartaleta_ricota.JPG', 'dulce tartaleta ricota'),
(37, 6, 5, 'tiramisu', 20000, 'tiramisu', 'dulce_tiramisu.jpg', 'dulce tiramisu');

-- (38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'Microwave Oven'),
-- (39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
-- (40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies'),
-- (45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
-- (46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(9) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'demo', 'demo', 'demo@gmal.com', '12345', '123456789', 'Kolkata', 'VIP Road'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '9832268432', 'Hutton Road', 'Kolkata'),
(3, 'Rizwan', 'Khan', 'salmankhan@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080182', 'Hutton Road', 'Asansol'),
(4, 'Juan', 'Mathas', 'ricardocorazondeleon2018@gmail.com', '107f0be83ce4115a829215412c22ebcc', '9286444682', 'AV PANAMERICANA', 'sin numero'),
(5, 'tusolutionweb', 'tutos', 'tusolutionweb@gmail.com', 'e9e8c468973e6280e6a4497bdc279cf1', '9656444684', 'AV ramon castila', 'san blas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
