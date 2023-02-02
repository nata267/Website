-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 02 2023 г., 20:56
-- Версия сервера: 5.7.15
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dbname`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `contents`, `lang`) VALUES
(1, 'about', '<h4>О нас</h4>\r\n<hr/>\r\n<p>Компания <b>Natalia Romanova PR</b> была основана профессиональным разработчиком программного обеспечения Натальей Романовой в 2022 году в Сербии, чтобы предложить разработку полного жизненного цикла, включая планирование и оценку, определение требований, проектирование и разработку функций и функций, кодирование, тестирование, контроль качества, внедрение, усовершенствование и обслуживание продукта и инфраструктуры.</p>\r\n<p>Мы являемся экспертами в области объектно-ориентированного проектирования и анализа с более чем 14-летним опытом создания уникальных и оригинальных продуктов и решений.</p>\r\n<p>Мы предлагаем нашим клиентам разработку веб-приложений для Windows, распределенных клиент-серверных приложений, интернет- и интранет-приложений в гетерогенных средах, а также обслуживание и поддержку ваших существующих приложений.</p>\r\n<h4>Технологии, которые мы используем</h4>\r\n<hr/>\r\n<ul>\r\n<li>C++, STL, boost, QT</li>\r\n<li>PHP, CakePHP, Lavarel, Symphony</li>\r\n<li>MS SQL Server, Transact-SQL, MySql, Postgree Sql</li>\r\n<li>JS, React, Typescript</li>\r\n<li>Perl, Python, Bash scripting</li>\r\n<li>Market data protocols: FIX, Omnet, ITCH, PITCH, SBE</li>\r\n<li>AWS EC2</li>\r\n</ul>\r\n<h4>Отзывы клиентов</h4>\r\n<hr/>\r\n<p>Одним из наших основных клиентов является CQG Inc., известный поставщик рыночных данных. Мы гордимся тем, что завершили с ними несколько успешных проектов. Мы создали для них программное обеспечение, предоставляющее рыночные данные с NSE of India, рынка MEFF, биржи MexDer, Nasdaq Nordic и многих других.</p>\r\n<p>Отзывы клиентов:</p>\r\n<p><i>\"Сейчас мы завершаем проект подключения SGX GIFT, в котором Наталья Романова является ведущим разработчиком по части рыночных данных. Это очень сложный проект с нестандартной реализацией, технической схемой и развертыванием и очень-очень сжатыми сроками. И Наталья Романова была нашим водителем со стороны рыночных данных - она доказала, что может отвечать не только за \"свой\" экземпляр парсера, но и за все направления и этапы - внедрение, настройка, релиз системы, интеграция (два парсера), тестирование (не полностью предоставленные рыночные данные по тестовому корму) и т.д.\r\nНаташа всегда делает все возможное и даже больше, чтобы успеть и качественно.<br/>Спасибо Вам за работу и за ответственность, Наталья!\"\r\n<br/><br/>Светлана Багиян, PM, CQG Inc., 10 июля 2022 г.</i></p>\r\n<p><i>\"Техническое обслуживание и большое обслуживание за последние полгода. Все было, как и ожидалось, и, поскольку я привык к тому, что задача технического обслуживания поручалась Наташе - быстро и оперативно.\r\nЯ особенно благодарен Наташе за серию заданий по помощи ребятам из GW в их тестировании. Эти задачи требовали не только знания того, как работают взаимосвязанные вещи, но и терпения в общении, а также не бояться взять на себя инициативу в поисках первопричины проблемы, подозревая ее не на стороне парсера/головной станции.\"<br/><br/>Евгений Саченко, PM, CQG Inc., 22 ноября 2022 г.</i></p>\r\n<h4>Стоимость</h4>\r\n<hr/>\r\n<p>Основными факторами, влияющими на стоимость разработки, являются сложность проекта и используемые технологии. Если вы заинтересованы в разработке программного обеспечения вместе с нами, свяжитесь с нами по электронной почте или по телефону.</p>\r\n<h4>Контакты</h4>\r\n<hr/>\r\n<p>Расположение офиса: Vodovodska 6.deo, broj 7, Белград, Сербия, 11147<br/>\r\nТелефон: +381 64 3673354<br/>\r\nЭлектронная почта: nata267@yandex.ru<br/>\r\nИНН: 112933045</p>', 'RUS'),
(2, 'about', '<h4>О нама</h4>\r\n<hr/>\r\n<p><b>Наталиа Романова ПР</b> компанију је основала професионална програмерка софтвера Наталија Романова 2022. године у Србији како би понудила развој целог животног циклуса укључујући планирање и процену, дефинисање захтева, дизајн и развој карактеристика и функционалности, кодирање, тестирање, осигурање квалитета, имплементација, побољшања и одржавање производа и инфраструктуре.</p>\r\n<p>Ми смо експерти за објектно оријентисан дизајн и анализу са историјом изградње јединствених и оригиналних производа и решења са више од 14 година искуства.</p>\r\n<p>Нудимо нашим клијентима развој софтверских апликација заснованих на web, Windows, дистрибуираних клијент/сервер апликација, Интернет и Интранет апликација у хетерогеним окружењима, као и одржавање и подршку ваших постојећих апликација.</p>\r\n<h4>Технологије које користимо</h4>\r\n<hr/>\r\n<ul>\r\n<li>C++, STL, boost, QT</li>\r\n<li>PHP, CakePHP, Lavarel, Symphony</li>\r\n<li>MS SQL Server, Transact-SQL, MySql, Postgree Sql</li>\r\n<li>JS, React, Typescript</li>\r\n<li>Perl, Python, Bash scripting</li>\r\n<li>Market data protocols: FIX, Omnet, ITCH, PITCH, SBE</li>\r\n<li>AWS EC2</li>\r\n</ul>\r\n<h4>Изјаве клијената</h4>\r\n<hr/>\r\n<p>Један од наших главних клијената је CQG Inc., познати добављач података о тржишту. Поносни смо што смо са њима завршили неколико успешних пројеката. За њих смо креирали софтвер који пружа тржишне податке из NSE Индије, MEFF тржишта, MexDer берзе, Nasdaq Nordic и многих других.</p>\r\n<p>Изјаве клијената:</p>\r\n<p><i>\"Сада завршавамо пројекат повезивања SGX Gift где је Наталија Романова водећи програмер за страну тржишних података. То је веома компликован пројекат са нестандардном имплементацијом, техничким изгледом и применом и веома-веома агресивним роком. И Наталија Романова је била наш возач са стране тржишних података – доказала је да може бити одговорна не само за „свој” парсер инстанцу, већ за све области и фазе – имплементацију, конфигурацију, издавање система, интеграцију (два парсера), тестирање (не потпуно обезбеђени тржишни подаци о тестној храни) итд.\r\nНаташа увек даје све од себе, а још више да квалитетно стигне на време.<br/>Хвала вам на послу и на вашој одговорности, Натаља!“\r\n<br/><br/>Светлана Багииан, PM, CQG Inc., 10. јул 2022.</i></p>\r\n<p><i>„Одржавање и доста одржавања у последњих пола године. Све је било како сам очекивао и као што сам навикао да задатак одржавања буде додељен Наташи – брзо и са одговором.\r\nПосебно сам захвалан Наташи на низу задатака у помагању ГВ момцима у њиховом тестирању. Ови задаци захтевају не само знање о томе како ствари међусобно повезују функционишу, већ и стрпљење у комуникацији и исто тако да се не плашите да преузмете вођство у потрази за основним узроком проблема док сумњате да није на страни парсера.“<br/><br/>Евгениј Саченко, PM, CQG Inc., 22. новембар 2022.</i></p>\r\n<h4>Цена</h4>\r\n<hr/>\r\n<p>Главни фактори који утичу на цену развоја су сложеност пројекта и коришћене технологије. Ако сте заинтересовани за развој софтвера са нама, контактирајте нас путем е-поште или телефоном.</p>\r\n<h4>Контакти</h4>\r\n<hr/>\r\n<p>Локација канцеларије: Водоводска 6.део, број 7, Београд, Србија, 11147<br/>\r\nТелефон: +381 64 3673354<br/>\r\nЕмаил: nata267@yandex.ru<br/>\r\nПИБ: 112933045</p>', 'SRP'),
(3, 'about', '<h4>About US</h4>\r\n<hr/>\r\n<p><b>Natalia Romanova PR</b> company was founded by professional software developer Natalia Romanova in 2022 year in Serbia to offer full life cycle development including planning and assessment, requirements definition, features and functionality design and development, coding, testing, QA, implementation, product and infrastructure enhancements and maintenance.</p>\r\n<p>We are expert in object-oriented design and analysis with a history of building unique and original products and solutions with more than 14 years of experience.</p>\r\n<p>We offer to our clients the development of web-based, windows-based software applications, distributed client/server applications, Internet and Intranet applications on heterogeneous environments as well as maintenance and support of your existing applications.</p>\r\n<h4>Technologies we use</h4>\r\n<hr/>\r\n<ul>\r\n<li>C++, STL, boost, QT</li>\r\n<li>PHP, CakePHP, Lavarel, Symphony</li>\r\n<li>MS SQL Server, Transact-SQL, MySql, Postgree Sql</li>\r\n<li>JS, React, Typescript</li>\r\n<li>Perl, Python, Bash scripting</li>\r\n<li>Market data protocols: FIX, Omnet, ITCH, PITCH, SBE</li>\r\n<li>AWS EC2</li>\r\n</ul>\r\n<h4>Customer&#39;s testimonials</h4>\r\n<hr/>\r\n<p>One of our major clients is CQG Inc., famous market data provider. We are proud to complete several successful projects with them. We created for them the software providing market data from NSE of India, MEFF market, MexDer exchange, Nasdaq Nordic and many others.</p>\r\n<p>Customer&#39;s testimonials:</p>\r\n<p><i>\"Now we complete SGX GIFT connectivity project where Natalya Romanova as the lead developer for market data side. It is very complicated project with non-standard implementation, technical layout and deployment, and very-very aggressive deadline. And Natalya Romanova was our driver from market data side - she proved that she can be responsible not only for \"her\" parser instance, but for all the areas and phases - implementation, configuration, system release, integration (two parsers), testing (not completely provided market data on test feed), etc. \r\nNatasha always does all her best and even more to be in time with good quality.<br/>Thanks you for your job and for your responsibility, Natalya!\"\r\n<br/><br/>Svetlana Bagiyan, PM, CQG Inc., 10 July, 2022</i></p>\r\n<p><i>\"Maintenance and a lot of maintenance past half of the year. Everything was as expected and as I was used to having a maintenance task being assigned to Natasha - quickly and responsively. \r\nI&#39;m especially thankful to Natasha for a series of tasks in helping GW guys in their testing. These tasks required not just knowledge of how interconnecting things work but patience in communication and the same not to be afraid of taking a lead in search of a problem root-cause while suspecting it not on a parser&#39;/headend side.\"<br/><br/>Evgeniy Sachenko, PM, CQG Inc., 22 November, 2022</i></p>\r\n<h4>Costs</h4>\r\n<hr/>\r\n<p>The main factors which affect the cost of development are project complexity and technologies used. If you are interested in software development with us, please contact us by email or by phone.</p>\r\n<h4>Contacts</h4>\r\n<hr/>\r\n<p>Office Location: Vodovodska 6.deo, broj 7, Belgrade, Serbia, 11147<br/>\r\nPhone: +381 64 3673354<br/>\r\nEmail: nata267@yandex.ru<br/>\r\nPIB: 112933045</p>', 'ENG'),
(4, 'projects', '<h4>Client-server banking application “Currencies Board”</h4>\r\n<hr/>\r\n<p>\r\n<table border=\"0\"><tr>\r\n<td><img src=/img/currencies_1.png width=100/></td>\r\n<td><img src=/img/currencies_2.png width=200/></td>\r\n<td><img src=/img/currencies_3.png width=100/></td>\r\n<td><img src=/img/currencies_4.png width=100/></td></tr><tr>\r\n<td><img src=/img/currencies_5.png width=100/></td>\r\n<td><img src=/img/currencies_7.png width=200/></td>\r\n<td><img src=/img/currencies_6.png width=100/></td><td></td>\r\n</tr></table></p>\r\n<p><a href=https://smartgroup.pro/raboty/tkv/ target=_blank>https://smartgroup.pro/raboty/tkv/</a></p>\r\n<p>\r\nArchitecture,  implementation of client-side, server-side software, building structure of database, developing of hand-coded http server, writing installation scripts.\r\n<br/>\r\nTechnologies: <b>C++/QT 5.3.1, sqlite, tcp, xml</b></p>\r\n\r\n<h4>Personal open-source project \"Cookbook\"</h4>\r\n<hr/>\r\n<p><a href=https://github.com/nata267/Cookbook/ target=_blank>https://github.com/nata267/Cookbook</a></p>\r\n<p>\r\nFull cycle of developement and deployment.\r\n<br/>\r\nTechnologies: <b>C#, Asp.net mvc, Entity Framework, Sql Server 2014</b></p>\r\n\r\n<h4>Personal project: Application \"Cookbook\" for platform Windows Mobile 5,6</h4>\r\n<hr/>\r\n<p><img src=/img/cookbook.jpeg width=300 /></p>\r\n<p>\r\nIdea and development of the project, are fully mine. Writing all classes for gui, writing database structure(Sqlite), implementation using C++/Qt framework. Testing on emulator and deploying on device. \r\n<br/>\r\nTechnologies: <b>C++/Qt framework, Sqlite databases</b></p>\r\n\r\n<h4>Client-server application “CoAuthor” for creating interactive learning courses</h4>\r\n<hr/>\r\n<p><table border=\"0\"><tr>\r\n<td><img src=/img/coauthor_1.jpeg width=300 /></td>\r\n<td><img src=/img/coauthor_2.jpeg width=300 /></td>\r\n</tr></table></p>\r\n<p>\r\nDesign of arcitecture of application using UML tools. Design and implementation of core classes of application using C++/Qt framework. Design and implementation of GUI in the style of graphic editors. Writing unit tests, work with database MySQL. Worked in the team of 3 developers and 1 team leader in the role of Senior developer (responsible for other programmers\' work, making the most important decisions concerning development) \r\n<br/>\r\nTechnologies: <b>C++/Qt framework, Mysql databases</b></p>\r\n\r\n<h4>Virious web-projects</h4>\r\n<hr/>\r\n<p><a href=http://data-inform.ru/ target=_blank>http://data-inform.ru</a>\r\n<br/><a href=http://znak-nekachestva.ru/ target=_blank>http://znak-nekachestva.ru</a>\r\n</p>\r\n<p>Developing, writing scripts, writing structure of database, deploying, supporting.<br/>\r\nTechnologies: <b>PHP/Cake PHP/MySQL</b></p>', 'ENG'),
(5, 'projects', '<h4>Клиент-серверное приложение “Табло курсов валют”</h4>\r\n<hr/>\r\n<p><a href=https://smartgroup.pro/raboty/tkv/ target=_blank>https://smartgroup.pro/raboty/tkv/</a></p>\r\n<p>\r\nАрхитектура, реализация клиент-серверного программного обеспечения, построение структуры базы данных, разработка http-сервера, написание скриптов установки.\r\n<br/>\r\nТехнологии: <b>C++/QT 5.3.1, sqlite, tcp, xml</b></p>\r\n<h4>Персональный проект с открытым кодом \"Кулинарная книга\"</h4>\r\n<hr/>\r\n<p><a href=https://github.com/nata267/Cookbook/ target=_blank>https://github.com/nata267/Cookbook</a></p>\r\n<p>\r\nВесь цикл разработки и развертывания.\r\n<br/>\r\nТехнологии: <b>C#, Asp.net mvc, Entity Framework, Sql Server 2014</b></p>\r\n<h4>Различные веб-приложения</h4>\r\n<hr/>\r\n<p><a href=http://data-inform.ru/ target=_blank>http://data-inform.ru</a>\r\n<br/><a href=http://znak-nekachestva.ru/ target=_blank>http://znak-nekachestva.ru</a>\r\n</p>\r\n<p>Разработка, написание скриптов, написание структуры базы данных, развертывание, поддержка.<br/>\r\nTechnologies: <b>PHP/Cake PHP/MySQL</b></p>', 'RUS'),
(6, 'projects', '<h4>Апликација клијент-сервер „Цурренци Рате Боард“</h4>\r\n<hr/>\r\n<p><a href=https://smartgroup.pro/raboty/tkv/ target=_blank>https://smartgroup.pro/raboty/tkv/</a></p>\r\n<p>\r\nАрхитектура, имплементација клијент-серверског софтвера, изградња структуре базе података, развој ручно кодираног http-сервера, писање инсталационих скрипти.\r\n<br/>\r\nТехнологиje: <b>C++/QT 5.3.1, sqlite, tcp, xml</b></p>\r\n<h4>Лични пројекат отвореног кода \"Кувар\"</h4>\r\n<hr/>\r\n<p><a href=https://github.com/nata267/Cookbook/ target=_blank>https://github.com/nata267/Cookbook</a></p>\r\n<p>\r\nПун циклус развоја и имплементације.\r\n<br/>\r\nТехнологиje: <b>C#, Asp.net mvc, Entity Framework, Sql Server 2014</b></p>\r\n<h4>Разне веб апликације</h4>\r\n<hr/>\r\n<p><a href=http://data-inform.ru/ target=_blank>http://data-inform.ru</a>\r\n<br/><a href=http://znak-nekachestva.ru/ target=_blank>http://znak-nekachestva.ru</a>\r\n</p>\r\n<p>Израда, писање скрипти, писање структуре базе података, имплементација, подршка.<br/>\r\nTechnologies: <b>PHP/Cake PHP/MySQL</b></p>', 'SRP'),
(7, 'demo', 'Charts below demonstrate real-time market data (updates hourly) taken from free JSON stream API', 'ENG'),
(8, 'demo', 'Диаграммы ниже демонстрируют рыночные данные в реальном времени (обновления ежечасно), взятые из свободного REST API', 'RUS'),
(9, 'demo', 'Графикони испод показују тржишне податке у реалном времену (ажурирања сваких сат времена) преузете из бесплатног REST API', 'SRP');

-- --------------------------------------------------------

--
-- Структура таблицы `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230128143103', '2023-01-28 15:32:13', 800),
('DoctrineMigrations\\Version20230131211033', '2023-01-31 22:10:47', 852),
('DoctrineMigrations\\Version20230131211319', '2023-01-31 22:13:30', 64);

-- --------------------------------------------------------

--
-- Структура таблицы `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `quote`
--

INSERT INTO `quote` (`id`, `symbol`, `type`, `price`, `time`) VALUES
(39, 'ETH/USD', 'trade', 1617.5513810588684, '2023-02-01 20:00:00'),
(40, 'LTC/USD', 'trade', 98.29715296543532, '2023-02-01 20:00:00'),
(41, 'BTC/USD', 'trade', 23387.828012437283, '2023-02-01 20:00:00'),
(42, 'XRP/USD', 'trade', 0.40768427973513416, '2023-02-01 20:00:00'),
(43, 'XRP/USD', 'trade', 0.41204321831873586, '2023-02-01 20:59:59'),
(44, 'ETH/USD', 'trade', 1632.45984599075, '2023-02-01 20:59:59'),
(45, 'LTC/USD', 'trade', 97.69238488106429, '2023-02-01 20:59:59'),
(46, 'BTC/USD', 'trade', 23571.940923636157, '2023-02-01 20:59:59'),
(47, 'LTC/USD', 'trade', 97.92876680262152, '2023-02-01 21:59:59'),
(48, 'BTC/USD', 'trade', 23683.215561143166, '2023-02-01 21:59:59'),
(49, 'ETH/USD', 'trade', 1635.324570294205, '2023-02-01 21:59:59'),
(50, 'XRP/USD', 'trade', 0.4132471551408419, '2023-02-01 21:59:59'),
(51, 'ETH/USD', 'trade', 1637.9790056574009, '2023-02-01 23:00:00'),
(52, 'LTC/USD', 'trade', 100.71054731432473, '2023-02-01 23:00:00'),
(53, 'XRP/USD', 'trade', 0.41441163072804194, '2023-02-01 23:00:00'),
(54, 'BTC/USD', 'trade', 23716.723777081203, '2023-02-01 23:00:00'),
(55, 'XRP/USD', 'trade', 0.41316218159499246, '2023-02-01 23:59:59'),
(56, 'LTC/USD', 'trade', 100.33252648699994, '2023-02-01 23:59:59'),
(57, 'ETH/USD', 'trade', 1641.8713486458275, '2023-02-01 23:59:59'),
(58, 'BTC/USD', 'trade', 23731.80186212532, '2023-02-01 23:59:59'),
(59, 'LTC/USD', 'trade', 101.96500559027123, '2023-02-02 01:00:01'),
(60, 'XRP/USD', 'trade', 0.4166458828069253, '2023-02-02 01:00:00'),
(61, 'BTC/USD', 'trade', 24194.332562231375, '2023-02-02 01:00:00'),
(62, 'ETH/USD', 'trade', 1692.4914933551515, '2023-02-02 01:00:00'),
(63, 'ETH/USD', 'trade', 1675.715216657786, '2023-02-02 02:00:01'),
(64, 'BTC/USD', 'trade', 23956.1959329668, '2023-02-02 02:00:01'),
(65, 'XRP/USD', 'trade', 0.4108911032059994, '2023-02-02 02:00:01'),
(66, 'LTC/USD', 'trade', 100.98408652982921, '2023-02-02 02:00:01'),
(67, 'ETH/USD', 'trade', 1670.33828944057, '2023-02-02 02:59:59'),
(68, 'LTC/USD', 'trade', 100.69323189194674, '2023-02-02 02:59:59'),
(69, 'XRP/USD', 'trade', 0.41308521878527493, '2023-02-02 02:59:59'),
(70, 'BTC/USD', 'trade', 23890.483725736693, '2023-02-02 03:00:00'),
(71, 'XRP/USD', 'trade', 0.4127112091678901, '2023-02-02 04:00:01'),
(72, 'ETH/USD', 'trade', 1671.6025987184228, '2023-02-02 04:00:01'),
(73, 'BTC/USD', 'trade', 23857.29706367722, '2023-02-02 04:00:01'),
(74, 'LTC/USD', 'trade', 100.84594114404985, '2023-02-02 04:00:01'),
(75, 'BTC/USD', 'trade', 23887.89264404699, '2023-02-02 04:59:59'),
(76, 'LTC/USD', 'trade', 101.06289782141704, '2023-02-02 04:59:59'),
(77, 'XRP/USD', 'trade', 0.41396612335887256, '2023-02-02 04:59:59'),
(78, 'ETH/USD', 'trade', 1673.0952354676233, '2023-02-02 04:59:59'),
(79, 'LTC/USD', 'trade', 100.46663475181606, '2023-02-02 06:00:00'),
(80, 'XRP/USD', 'trade', 0.4123966461325649, '2023-02-02 06:00:00'),
(81, 'ETH/USD', 'trade', 1670.2090939401373, '2023-02-02 06:00:00'),
(82, 'BTC/USD', 'trade', 23808.43530534137, '2023-02-02 06:00:00'),
(83, 'ETH/USD', 'trade', 1666.9795574812752, '2023-02-02 06:59:58'),
(84, 'XRP/USD', 'trade', 0.4117711080677723, '2023-02-02 06:59:58'),
(85, 'BTC/USD', 'trade', 23793.433863855153, '2023-02-02 06:59:58'),
(86, 'LTC/USD', 'trade', 100.32124405958716, '2023-02-02 06:59:58'),
(87, 'LTC/USD', 'trade', 99.97219137496653, '2023-02-02 08:00:00'),
(88, 'ETH/USD', 'trade', 1664.635972984271, '2023-02-02 08:00:00'),
(89, 'BTC/USD', 'trade', 23787.5517137413, '2023-02-02 08:00:00'),
(90, 'XRP/USD', 'trade', 0.4129732290373854, '2023-02-02 08:00:00'),
(91, 'LTC/USD', 'trade', 100.30513290121223, '2023-02-02 09:00:00'),
(92, 'XRP/USD', 'trade', 0.41498066636417796, '2023-02-02 09:00:00'),
(93, 'ETH/USD', 'trade', 1670.0438427956458, '2023-02-02 09:00:00'),
(94, 'BTC/USD', 'trade', 23804.286888373703, '2023-02-02 09:00:00'),
(95, 'XRP/USD', 'trade', 0.41484311115871364, '2023-02-02 09:59:59'),
(96, 'BTC/USD', 'trade', 23835.966105806554, '2023-02-02 09:59:59'),
(97, 'LTC/USD', 'trade', 100.43230382926446, '2023-02-02 09:59:59'),
(98, 'ETH/USD', 'trade', 1674.5588939232075, '2023-02-02 09:59:59'),
(99, 'LTC/USD', 'trade', 100.02318541210639, '2023-02-02 11:00:00'),
(100, 'ETH/USD', 'trade', 1669.2405035056802, '2023-02-02 11:00:00'),
(101, 'BTC/USD', 'trade', 23785.10568561712, '2023-02-02 11:00:01'),
(102, 'XRP/USD', 'trade', 0.4143100084907213, '2023-02-02 11:00:01'),
(103, 'BTC/USD', 'trade', 23826.33187880961, '2023-02-02 12:00:00'),
(104, 'ETH/USD', 'trade', 1672.2496496717686, '2023-02-02 12:00:00'),
(105, 'LTC/USD', 'trade', 100.30890440850558, '2023-02-02 12:00:00'),
(106, 'XRP/USD', 'trade', 0.41471285617510434, '2023-02-02 12:00:00'),
(107, 'ETH/USD', 'trade', 1676.4553282692784, '2023-02-02 13:00:00'),
(108, 'XRP/USD', 'trade', 0.41537774835396407, '2023-02-02 13:00:00'),
(109, 'LTC/USD', 'trade', 100.09288597852503, '2023-02-02 13:00:00'),
(110, 'BTC/USD', 'trade', 23802.022052952983, '2023-02-02 13:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Индексы таблицы `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

DELIMITER $$
--
-- События
--
CREATE DEFINER=`root`@`localhost` EVENT `add_quotes` ON SCHEDULE EVERY 5 SECOND STARTS '2023-01-31 12:59:25' ON COMPLETION NOT PRESERVE DISABLE DO BEGIN
INSERT INTO `quote` (`id`, `symbol`, `type`, `price`, `time`) VALUES (NULL, 'BTC/USD', 'trade', FLOOR(20000 * RAND()), CURRENT_TIMESTAMP());
INSERT INTO `quote` (`id`, `symbol`, `type`, `price`, `time`) VALUES (NULL, 'LTC/USD', 'trade', FLOOR(100 * RAND()), CURRENT_TIMESTAMP());
INSERT INTO `quote` (`id`, `symbol`, `type`, `price`, `time`) VALUES (NULL, 'ETH/USD', 'trade', FLOOR(2000 * RAND()), CURRENT_TIMESTAMP());
INSERT INTO `quote` (`id`, `symbol`, `type`, `price`, `time`) VALUES (NULL, 'XRP/USD', 'trade', RAND(), CURRENT_TIMESTAMP());
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
