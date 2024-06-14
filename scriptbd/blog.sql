-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 06:26:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(1, 'Super Mario: El cl&aacute;sico atemporal', 'Super Mario es un personaje ic&oacute;nico y una de las franquicias de videojuegos m&aacute;s queridas de todos los tiempos. Creado por Shigeru Miyamoto de Nintendo, el juego se lanz&oacute; por primera vez en 1985 y desde entonces se ha convertido en un fen&oacute;meno cultural. Su popularidad ha perdurado durante casi cuatro d&eacute;cadas y sigue cautivando a audiencias de todas las edades.\r\n\r\nEl protagonista del juego, Mario, es un fontanero que se embarca en una misi&oacute;n para rescatar a la Princesa Toadstool del malvado Bowser. En el camino, debe navegar a trav&eacute;s de una serie de obst&aacute;culos y enemigos, recogiendo monedas y potenciadores para ayudarlo en su viaje. La jugabilidad simple pero desafiante del juego lo ha convertido en un favorito entre los jugadores de todas las edades.\r\n\r\nUna de las caracter&iacute;sticas definitorias del juego es su mundo colorido y vibrante, lleno de personajes y lugares memorables. Desde el Reino Champi&ntilde;&oacute;n hasta el Castillo de Bowser, cada nivel es distinto y ofrece desaf&iacute;os &uacute;nicos. La banda sonora del juego tambi&eacute;n es ic&oacute;nica, con melod&iacute;as pegajosas que son reconocibles al instante para cualquiera que haya jugado el juego.\r\n\r\nEl &eacute;xito de Super Mario se puede atribuir a su accesibilidad y atractivo universal. El juego es f&aacute;cil de aprender y jugar, pero tambi&eacute;n ofrece un nivel de desaf&iacute;o que mantiene a los jugadores enganchados. El personaje de Mario en s&iacute; mismo es un factor importante en la popularidad del juego. Con su caracter&iacute;stico sombrero rojo y bigote, se ha convertido en una de las figuras m&aacute;s reconocibles en la cultura pop.\r\n\r\nA lo largo de los a&ntilde;os, Super Mario ha generado numerosas secuelas y derivados, incluyendo Super Mario Bros. 2, Super Mario Bros. 3, Super Mario World y Super Mario 64. Cada juego ha introducido nuevos elementos y mec&aacute;nicas mientras mantiene la jugabilidad central que hizo que el original fuera tan exitoso.\r\n\r\nAdem&aacute;s de su impacto en la industria de los videojuegos, Super Mario tambi&eacute;n ha tenido un impacto cultural significativo. El personaje ha aparecido en innumerables formas de medios, incluidos dibujos animados, pel&iacute;culas e incluso parques tem&aacute;ticos. La influencia del juego se puede ver en todo, desde la moda hasta la m&uacute;sica, y ha inspirado a innumerables otros videojuegos a lo largo de los a&ntilde;os.\r\n\r\nEn conclusi&oacute;n, Super Mario es un cl&aacute;sico atemporal que se ha ganado su lugar en el pante&oacute;n de los grandes videojuegos. Su jugabilidad simple pero desafiante, su mundo vibrante y sus personajes ic&oacute;nicos han capturado los corazones de los jugadores de todo el mundo. Es dif&iacute;cil imaginar un mundo sin Super Mario, y solo podemos esperar que la franquicia contin&uacute;e deleitando e inspirando a nuevas generaciones de jugadores durante muchos a&ntilde;os m&aacute;s.', '', '2024-06-13 15:25:02', 2, 13, 0),
(2, 'Robots de IA: El estado actual del progreso', 'La inteligencia artificial (IA) ha avanzado mucho en los &uacute;ltimos a&ntilde;os, y esto se evidencia claramente en el campo de la rob&oacute;tica. Los avances en aprendizaje autom&aacute;tico y visi&oacute;n por computadora han permitido que los robots realicen tareas cada vez m&aacute;s complejas, desde la manufactura y el ensamblaje hasta la atenci&oacute;n m&eacute;dica y la hospitalidad. En esta entrada del blog, analizaremos algunos de los progresos actuales en robots de IA y exploraremos las posibles aplicaciones de esta tecnolog&iacute;a.\r\n\r\n    Manufactura y ensamblaje\r\n\r\nUna de las aplicaciones m&aacute;s establecidas de los robots de IA es en la manufactura y el ensamblaje. Los robots pueden realizar tareas repetitivas con rapidez y precisi&oacute;n, mejorando la eficiencia y reduciendo errores. Los robots impulsados por IA tambi&eacute;n pueden adaptarse a cambios en la l&iacute;nea de producci&oacute;n, lo que los hace m&aacute;s vers&aacute;tiles que los robots industriales tradicionales.\r\n\r\n    Atenci&oacute;n m&eacute;dica\r\n\r\nLos robots de IA tambi&eacute;n est&aacute;n haciendo incursiones en la industria de la salud. Los robots pueden ayudar a m&eacute;dicos y enfermeras en una variedad de tareas, desde la monitorizaci&oacute;n de pacientes hasta la cirug&iacute;a. Tambi&eacute;n pueden ayudar a los pacientes con problemas de movilidad, proporcionando asistencia en tareas como levantarse de la cama o moverse por el hospital.\r\n\r\n    Hospitalidad\r\n\r\nOtro &aacute;rea donde los robots de IA est&aacute;n teniendo un impacto es en la hospitalidad. Los robots pueden usarse para recibir a los hu&eacute;spedes, proporcionar informaci&oacute;n sobre el hotel e incluso entregar el servicio de habitaciones. Tambi&eacute;n pueden realizar tareas de limpieza, como la limpieza y reabastecimiento de habitaciones.\r\n\r\n    Agricultura\r\n\r\nLos robots de IA tambi&eacute;n se est&aacute;n utilizando en la agricultura, donde pueden realizar tareas como plantar y cosechar cultivos. Tambi&eacute;n pueden usarse para monitorizar la salud de los cultivos e identificar &aacute;reas que requieren atenci&oacute;n.\r\n\r\n    Educaci&oacute;n\r\n\r\nLos robots de IA tambi&eacute;n se est&aacute;n utilizando en la educaci&oacute;n. Los robots pueden proporcionar experiencias de aprendizaje personalizadas para los estudiantes, adapt&aacute;ndose a sus necesidades y preferencias individuales. Tambi&eacute;n pueden utilizarse para ense&ntilde;ar programaci&oacute;n y otras materias STEM.\r\n\r\nEn conclusi&oacute;n, los robots de IA han avanzado mucho en los &uacute;ltimos a&ntilde;os y sus posibles aplicaciones son vastas. Desde la manufactura y el ensamblaje hasta la atenci&oacute;n m&eacute;dica y la hospitalidad, los robots ya est&aacute;n teniendo un impacto en una variedad de industrias. A medida que el aprendizaje autom&aacute;tico y la visi&oacute;n por computadora contin&uacute;en avanzando, podemos esperar ver robots de IA a&uacute;n m&aacute;s sofisticados en los pr&oacute;ximos a&ntilde;os, ayudando a mejorar la eficiencia, la seguridad y la calidad de vida de las personas en todo el mundo.', '', '2024-06-13 15:27:18', 4, 13, 0),
(3, 'Avances en la realidad virtual: El futuro de los juegos inmersivos', 'Una de las aplicaciones m&aacute;s populares y conocidas de la realidad virtual (VR) es en los videojuegos. Los juegos de realidad virtual proporcionan una experiencia altamente inmersiva, transportando a los jugadores a un mundo virtual donde pueden interactuar con su entorno de una manera que los videojuegos tradicionales no pueden igualar. Aqu&iacute; hay algunas formas en que la realidad virtual est&aacute; avanzando en la industria del juego:\r\n\r\n    Jugabilidad inmersiva\r\n\r\nLos juegos de VR proporcionan a los jugadores un nivel de inmersi&oacute;n que los juegos tradicionales no pueden igualar. Con la VR, los jugadores pueden estar completamente inmersos en un mundo virtual e interactuar con &eacute;l de una manera que se siente natural. Pueden usar sus manos para recoger objetos, explorar nuevos entornos y experimentar una jugabilidad que no se parece a nada m&aacute;s.\r\n\r\n    Mec&aacute;nicas de juego &uacute;nicas\r\n\r\nLa realidad virtual permite mec&aacute;nicas de juego &uacute;nicas que no pueden replicarse en los videojuegos tradicionales. Por ejemplo, en Beat Saber, los jugadores usan controladores de movimiento para cortar y esquivar bloques entrantes al ritmo de una canci&oacute;n. La sensaci&oacute;n de moverse f&iacute;sicamente para esquivar obst&aacute;culos o interactuar con objetos en un mundo virtual crea una experiencia de juego incre&iacute;blemente &uacute;nica.\r\n\r\n    Entornos realistas\r\n\r\nLa realidad virtual permite a los desarrolladores de juegos crear entornos altamente detallados y realistas, sumergiendo a los jugadores en un mundo que se siente vivo. El uso de audio 3D e iluminaci&oacute;n realista a&ntilde;ade a la sensaci&oacute;n de inmersi&oacute;n, creando una experiencia que se siente como un entorno del mundo real.\r\n\r\n    Capacidades multijugador\r\n\r\nLa realidad virtual tambi&eacute;n tiene el potencial de revolucionar los juegos multijugador. Los auriculares de VR permiten el seguimiento completo del cuerpo, lo que significa que los jugadores pueden interactuar entre s&iacute; en un espacio virtual. Esto abre posibilidades para experiencias multijugador que se sienten como interacciones en la vida real.\r\n\r\n    Nuevas formas de contar historias\r\n\r\nLa realidad virtual tambi&eacute;n proporciona nuevas formas de contar historias. Por ejemplo, juegos como The Walking Dead: Saints &amp; Sinners utilizan la VR para crear una experiencia narrativa altamente inmersiva. Al colocar a los jugadores en un mundo virtual, pueden involucrarse completamente en la historia, interactuando con el entorno y los personajes de una manera que los juegos tradicionales no pueden replicar.\r\n\r\nEn conclusi&oacute;n, la realidad virtual est&aacute; avanzando en la industria del juego al proporcionar a los jugadores una experiencia altamente inmersiva y &uacute;nica. Con el continuo desarrollo de hardware y software, podemos esperar ver juegos de VR a&uacute;n m&aacute;s emocionantes en el futuro.', '', '2024-06-13 15:30:59', 4, 13, 0),
(4, 'Takoyaki: Una deliciosa comida callejera japonesa', 'Takoyaki es una comida callejera japonesa popular que se ha vuelto cada vez m&aacute;s popular en todo el mundo. Estas bolas saladas de masa generalmente se rellenan con pulpo picado y otros ingredientes, y se cocinan en una parrilla especial hasta que est&eacute;n doradas. En esta entrada del blog, exploraremos la historia y los ingredientes del takoyaki y explicaremos c&oacute;mo hacer este delicioso bocadillo en casa.\r\n\r\nHistoria del Takoyaki\r\n\r\nEl takoyaki se origin&oacute; en la regi&oacute;n de Kansai en Jap&oacute;n durante la d&eacute;cada de 1930. Fue creado por un vendedor ambulante llamado Tomekichi Endo, quien se inspir&oacute; en un plato llamado akashiyaki. El takoyaki se volvi&oacute; r&aacute;pidamente popular y desde entonces se ha convertido en un alimento b&aacute;sico en festivales y puestos de comida callejera en todo Jap&oacute;n.\r\n\r\nIngredientes del Takoyaki\r\n\r\nEl takoyaki se hace tradicionalmente con una masa a base de harina, huevo y caldo de dashi. La masa se vierte en una parrilla especial de takoyaki, que tiene cavidades semiesf&eacute;ricas para darle a las bolas su forma distintiva. Luego, se a&ntilde;ade pulpo picado a cada cavidad junto con cebolletas, jengibre encurtido y tempura crujiente (tenkasu).\r\n\r\nCocinar Takoyaki\r\n\r\nCocinar takoyaki requiere una parrilla especial de takoyaki, que tiene cavidades semiesf&eacute;ricas para darle a las bolas su forma distintiva. Para cocinar takoyaki, vierte la masa en las cavidades de la parrilla caliente y a&ntilde;ade el pulpo picado, las cebolletas, el jengibre encurtido y el tenkasu. Cuando la masa comience a cocerse, usa un palillo para voltear cada bola y asegurarte de que se cocinen uniformemente por todos lados. El takoyaki se considera terminado cuando est&aacute; dorado y crujiente por fuera.\r\n\r\nServir Takoyaki\r\n\r\nEl takoyaki generalmente se sirve cubierto con salsa takoyaki, que es una salsa espesa y salada similar a la salsa tonkatsu, mayonesa, y copos de bonito seco. Tambi&eacute;n puede adornarse con aonori (algas secas en polvo) y cebolletas.\r\n\r\nDisfrutar del Takoyaki\r\n\r\nEl takoyaki se disfruta mejor caliente, reci&eacute;n salido de la parrilla. La combinaci&oacute;n de la masa crujiente, el pulpo tierno y las coberturas sabrosas lo convierte en un bocadillo delicioso y satisfactorio. Ya sea que est&eacute;s explorando un festival japon&eacute;s o cocinando en casa, el takoyaki es un manjar que seguramente complacer&aacute; a tus papilas gustativas.\r\n\r\nEn conclusi&oacute;n, el takoyaki es una deliciosa comida callejera japonesa que se ha ganado su lugar en los corazones de los amantes de la comida de todo el mundo. Su historia, ingredientes y m&eacute;todos de cocci&oacute;n &uacute;nicos lo convierten en un bocadillo fascinante y delicioso. Si a&uacute;n no has probado el takoyaki, te animamos a que lo pruebes. &iexcl;Puede que encuentres tu nueva comida callejera favorita!', '', '2024-06-13 15:32:30', 5, 13, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
