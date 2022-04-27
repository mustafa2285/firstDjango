-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 27 Nis 2022, 17:51:14
-- Sunucu sürümü: 8.0.27
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `firstdjango`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add category', 1, 'add_category'),
(2, 'Can change category', 1, 'change_category'),
(3, 'Can delete category', 1, 'delete_category'),
(4, 'Can view category', 1, 'view_category'),
(5, 'Can add blog', 2, 'add_blog'),
(6, 'Can change blog', 2, 'change_blog'),
(7, 'Can delete blog', 2, 'delete_blog'),
(8, 'Can view blog', 2, 'view_blog'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_turkish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$aYN55A4wklQz5Tb0ySZwlp$uxxvWi9UFSDzZtvtKz0TcgXbYGyKPjKNyCv5RD6mZ5E=', '2022-04-27 16:14:32.000000', 1, 'admin', 'mustafa', 'genç', 'm@gmail.com', 1, 1, '2022-04-26 14:13:23.000000'),
(2, 'pbkdf2_sha256$320000$0riKIlIUJHUyWnfMyixaTi$NdEkDPUVtCs2CUDE9RIhCd6uzXyVkxRwfHGwtsJdhNM=', '2022-04-27 15:08:58.516217', 0, 'mustafa ', 'mustafa', 'genç', 'm2@gmail.coml', 0, 1, '2022-04-27 09:37:30.523200'),
(3, 'pbkdf2_sha256$320000$FkOqnezmNFpffnCMuRqbR2$oguBe0bKvbdrLk7/DUBo3RbiE1bSiUU+6zol+IlWOP0=', NULL, 0, 'ali', 'ali', 'veli', 'm3@gmail.com', 0, 1, '2022-04-27 14:02:51.801650');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE IF NOT EXISTS `blog_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `description` longtext COLLATE utf8_turkish_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `slug` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `blog_blog_user_id_0e1a17e5` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog_blog`
--

INSERT INTO `blog_blog` (`id`, `title`, `image`, `description`, `is_active`, `slug`, `user_id`) VALUES
(1, 'python', 'blogs/330px-Python_logo_and_wordmark.svg.png', '<p><strong>Python</strong>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Nesne_y%C3%B6nelimli\" title=\"Nesne yönelimli\">nesne y&ouml;nelimli</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yorumlanan_programlama_dili\" title=\"Yorumlanan programlama dili\">yorumlamalı</a>, birimsel (mod&uuml;ler) ve etkileşimli&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Y%C3%BCksek_seviyeli_programlama_dili&amp;action=edit&amp;redlink=1\" title=\"Yüksek seviyeli programlama dili (sayfa mevcut değil)\">y&uuml;ksek seviyeli</a>&nbsp;bir&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Programlama_dilleri\" title=\"Programlama dilleri\">programlama dilidir</a>.<a href=\"https://tr.wikipedia.org/wiki/Python#cite_note-4\">[4]</a></p>\r\n\r\n<p>Girintilere dayalı basit s&ouml;z dizimi, dilin &ouml;ğrenilmesini ve akılda kalmasını kolaylaştırır. Bu da ona s&ouml;z diziminin ayrıntıları ile vakit yitirmeden programlama yapılmaya başlanabilen bir dil olma &ouml;zelliği kazandırır.</p>\r\n\r\n<p>Mod&uuml;ler yapısı, sınıf dizgesini (sistem) ve her t&uuml;rl&uuml; veri alanı girişini destekler. Hemen hemen her t&uuml;rl&uuml; platformda &ccedil;alışabilir (<a href=\"https://tr.wikipedia.org/wiki/Unix\" title=\"Unix\">Unix</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Linux\" title=\"Linux\">Linux</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Mac\" title=\"Mac\">Mac</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Windows</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Amiga\" title=\"Amiga\">Amiga</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Symbian\" title=\"Symbian\">Symbian</a>). Python ile sistem programlama, kullanıcı arabirimi programlama, ağ programlama, web programlama, uygulama ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1\" title=\"Veritabanı\">veri tabanı</a>&nbsp;yazılımı programlama gibi bir&ccedil;ok alanda yazılım geliştirebilirsiniz. B&uuml;y&uuml;k yazılımların hızlı bir şekilde prototiplerinin &uuml;retilmesi ve denenmesi gerektiği durumlarda da&nbsp;<a href=\"https://tr.wikipedia.org/wiki/C_programlama_dili\" title=\"C programlama dili\">C</a>&nbsp;ya da&nbsp;<a href=\"https://tr.wikipedia.org/wiki/C_plus_plus\" title=\"C plus plus\">C++</a>&nbsp;gibi dillere tercih edilir.</p>\r\n\r\n<p>Python 1980&#39;lerin sonunda&nbsp;<a href=\"https://tr.wikipedia.org/wiki/ABC_(programlama_dili)\" title=\"ABC (programlama dili)\">ABC programlama diline</a>&nbsp;alternatif olarak tasarlanmıştı. Python 2.0, ilk kez 2000 yılında yayınlandı. 2008&#39;de yayınlanan Python 3.0, dilin &ouml;nceki versiyonuyla tam uyumlu değildir ve Python 2.x&#39;te yazılan kodların Python 3.x&#39;te &ccedil;alışması i&ccedil;in değiştirilmesi gerekmektedir. Python 2 versiyonun resmi geliştirilme s&uuml;reci, dilin son s&uuml;r&uuml;m&uuml; olan Python 2.7.x serisi versiyonların ardından 1 Ocak 2020 itibarıyla resmi olarak sona erdi.<a href=\"https://tr.wikipedia.org/wiki/Python#cite_note-5\">[5]</a><a href=\"https://tr.wikipedia.org/wiki/Python#cite_note-6\">[6]</a>&nbsp;Python 2.x geliştirilme desteğinin sona ermesinin ardından, Python dilinin 3.6.x ve sonraki s&uuml;r&uuml;mlerinin geliştirilmesi devam etmektedir.<a href=\"https://tr.wikipedia.org/wiki/Python#cite_note-7\">[7]</a></p>', 1, 'python', 1),
(2, 'django', 'blogs/django.png', '<p>Django, Python Programlama Dili i&ccedil;in hazırlanmış ve BSD lisansı ile lisanslanmış y&uuml;ksek seviyeli bir web &ccedil;atısıdır. Basit kurulumu ve kullanımı, detaylı hata raporu sayfaları ve sunduğu yeni aray&uuml;z kodlama y&ouml;ntemleriyle diğer sunucu yazılımı ve &ccedil;atılardan kendini ayırmaktadır.</p>', 1, 'django', 1),
(3, 'c++', 'blogs/150px-ISO_C_Logo.svg.png', '<p><strong>C++</strong>&nbsp;(<a href=\"https://tr.wikipedia.org/wiki/T%C3%BCrk%C3%A7e\" title=\"Türkçe\">T&uuml;rk&ccedil;e</a>&nbsp;okunuşu:&nbsp;<em>ce artı artı</em>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İngilizce</a>&nbsp;okunuşu:&nbsp;<em>si plas plas</em>), Bell Laboratuvarlarından&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Bjarne_Stroustrup\" title=\"Bjarne Stroustrup\">Bjarne Stroustrup</a>&nbsp;tarafından 1979 yılından itibaren geliştirilmeye başlanmış,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/C_programlama_dili\" title=\"C programlama dili\">C</a>&#39;yi kapsayan ve &ccedil;ok paradigmalı, yaygın olarak kullanılan, genel ama&ccedil;lı bir&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Programlama_dilleri\" title=\"Programlama dilleri\">programlama dilidir</a>. İlk olarak&nbsp;<em>C With Classes</em>&nbsp;(Sınıflarla C) olarak adlandırılmış, 1983 yılında ismi C++<a href=\"https://tr.wikipedia.org/wiki/C%2B%2B#cite_note-1\">[1]</a>&nbsp;olarak değiştirilmiştir.</p>\r\n\r\n<p>Genel olarak her C programı aynı zamanda bir C++ programıdır, ancak her C++ programı bir C programı değildir. Bu durumun bazı istisnaları mevcuttur. C++&#39;ı C&#39;den ayıran &ouml;zellikler C++&#39;ın nesne paradigması kullanılarak programlamaya olanak tanıyan &ouml;zelliklerdir.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/S%C4%B1n%C4%B1f_(programlama)\" title=\"Sınıf (programlama)\">Sınıflar</a>&nbsp;sayesinde yeni veri t&uuml;rleri yaratılabilir veya varolan t&uuml;rlerden yenileri t&uuml;retilebilir. Ayrıca&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C3%87okbi%C3%A7imlilik\" title=\"Çokbiçimlilik\">&ccedil;okbi&ccedil;imlilik</a>&nbsp;sayesinde bir sınıf tanımıyla yazılmış kod, o sınıf</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>İşle&ccedil;ler[<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;veaction=edit&amp;section=2\" title=\"Değiştirilen bölüm: İşleçler\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;action=edit&amp;section=2\" title=\"Değiştirilen bölüm: İşleçler\">kaynağı değiştir</a>]</h4>\r\n\r\n<p>C++&#39;ın C&#39;den devraldığı ve onu geliştirdiği yapılardan biridir. Kısaca, &ouml;zel olarak anlamlandırılmış fonksiyonlar k&uuml;mesidir. Ancak bu fonksiyonlar, alışılageldik şekilde &ccedil;ağırılmaz, dilin semantik yapısı i&ccedil;erisinde &ouml;zel olarak değerlendirilir. operat&ouml;rler &ccedil;oğunlukla iki nesnenin arasına &ouml;zel bir işaret konulmasıyla &ccedil;ağrılır. &Ouml;rneğin, iki nesnenin toplanması i&ccedil;in iki nesnenin arasına &#39;+&#39; işareti konulması yeterlidir. Bu işaret, derleyiciye &#39;+&#39; operat&ouml;r fonksiyonunun &ccedil;ağırılacağını ifade eder. C&#39;den farklı olarak, C++&#39;ta operat&ouml;rlerin &ccedil;oğunu aşırı y&uuml;kleme yoluyla &ouml;zelleştirebilirsiniz.</p>\r\n\r\n<h3>&Ouml;nişlemci[<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;veaction=edit&amp;section=3\" title=\"Değiştirilen bölüm: Önişlemci\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;action=edit&amp;section=3\" title=\"Değiştirilen bölüm: Önişlemci\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>C++ Program kaynak kodlarının derlenmesi &uuml;&ccedil; aşamadan oluşur: &Ouml;nişlemci, kodun d&ouml;n&uuml;şt&uuml;r&uuml;lmesi ve bağlama. İlk aşama olan &ouml;nişlemciyi basit bir yorumlayıcı olarak g&ouml;r&uuml;lebilir. Bu aşamada, birtakım direktifler yardımıyla derlenecek kodlarda basit s&ouml;zc&uuml;ksel değişiklikler yapılabilir.</p>\r\n\r\n<p>&Ouml;nişlemci direktifleri # karakteriyle başlar, bu karakterden sonrası &ouml;nişlemci tarafından yorumlanır ve bu &ouml;zel karakterden &ouml;nce&nbsp;<em>beyaz boşluk</em>(tab ve boşluk) dışında bir şey olmaması gerekir. Bu direktifler yardımıyla derlenecek kodlar &uuml;zerinde birtakım kurallar belirlenebilir. Ayrıca dosyaya bir başka dosyayı dahil etmek veya işlemciye &ouml;zel direktifler vermek gibi işlemler i&ccedil;inde kullanılabilir.</p>\r\n\r\n<h2>Nesne Paradigması[<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;veaction=edit&amp;section=4\" title=\"Değiştirilen bölüm: Nesne Paradigması\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;action=edit&amp;section=4\" title=\"Değiştirilen bölüm: Nesne Paradigması\">kaynağı değiştir</a>]</h2>\r\n\r\n<h3>Sınıflar ve Nesneler[<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;veaction=edit&amp;section=5\" title=\"Değiştirilen bölüm: Sınıflar ve Nesneler\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;action=edit&amp;section=5\" title=\"Değiştirilen bölüm: Sınıflar ve Nesneler\">kaynağı değiştir</a>]</h3>\r\n\r\n<h4>Kalıtlama[<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;veaction=edit&amp;section=6\" title=\"Değiştirilen bölüm: Kalıtlama\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=C%2B%2B&amp;action=edit&amp;section=6\" title=\"Değiştirilen bölüm: Kalıtlama\">kaynağı değiştir</a>]</h4>\r\n\r\n<p>Kalıtlama diğer veri t&uuml;rlerinin &ouml;zelliklerinden bir veri t&uuml;r&uuml; elde etmeyi sağlar. Temel sınıftan kalıtım, &quot;public&quot;, &quot;protected&quot; ve &quot;private&quot; olarak ilan edilebilir. Bu erişim belirteci ilgili olmayan ve t&uuml;retilmiş sınıfların kalıtımını &quot;public&quot; ve &quot;protected&quot; &uuml;yelerine aktarabilir. Kalıtım ifadesi tek başına kullanılırsa &quot;public&quot; kalıtımı ifade eder. Diğer iki kalıtım t&uuml;r&uuml; &quot;public&quot; kalıtımdan daha az kullanılır. Ge&ccedil;iş belirteci ihmal edilirse &quot;class&quot; &quot;private&quot; olarak, &quot;struct&quot; &quot;public&quot; olarak kalıtılır. Temel sınıflar sanal olarak ilan edilebilir, bu sanal kalıtım olarak adlandırılır. Sanal kalıtım &ccedil;oklu kalıtımın problemlerinden sıyrılarak temel yalnızca bir &ouml;rneğinin kalıtım grafiğinde olmasını sağlar.</p>', 1, 'c', 2),
(4, 'TensorFlow', 'blogs/TensorFlow_logo.svg.png', '<p><strong>TensorFlow</strong>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Makine_%C3%B6%C4%9Frenimi\" title=\"Makine öğrenimi\">makine &ouml;ğrenimi</a>&nbsp;i&ccedil;in&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C3%96zg%C3%BCr_ve_a%C3%A7%C4%B1k_kaynak_kodlu_yaz%C4%B1l%C4%B1m\" title=\"Özgür ve açık kaynak kodlu yazılım\">&uuml;cretsiz ve a&ccedil;ık kaynaklı bir</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/K%C3%BCt%C3%BCphane_(bilgisayar_bilimi)\" title=\"Kütüphane (bilgisayar bilimi)\">yazılım k&uuml;t&uuml;phanesidir</a>&nbsp;. Bir dizi g&ouml;revde kullanılabilir, ancak&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Derin_%C3%B6%C4%9Frenme\" title=\"Derin öğrenme\">derin sinir ağlarının</a>&nbsp;eğitimi ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C3%87%C4%B1kar%C4%B1msal_istatistik\" title=\"Çıkarımsal istatistik\">&ccedil;ıkarımına</a>&nbsp;&ouml;zel olarak odaklanmaktadır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-4\">[4]</a><a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-YoutubeClip-5\">[5]</a></p>\r\n\r\n<p>Tensorflow, veri akışına ve&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Diferansiye_edilebilir_programlama&amp;action=edit&amp;redlink=1\" title=\"Diferansiye edilebilir programlama (sayfa mevcut değil)\">t&uuml;revlenebilir programlamaya</a>&nbsp;dayalı sembolik bir matematik kitaplığıdır.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Google\" title=\"Google\">Google&#39;da</a>&nbsp;hem araştırma hem de &uuml;retim i&ccedil;in kullanılmaktadır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-6\">[6]</a><a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-7\">[7]</a><a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-8\">[8]</a></p>\r\n\r\n<p>TensorFlow,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Google_Brain&amp;action=edit&amp;redlink=1\" title=\"Google Brain (sayfa mevcut değil)\">Google Brain</a>&nbsp;ekibi tarafından&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Google\" title=\"Google\">Google</a>&#39;ın i&ccedil; işlerinde kullanımı i&ccedil;in geliştirilmiştir. 2015 yılında&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Apache_Lisans%C4%B1\" title=\"Apache Lisansı\">Apache License 2.0</a>&nbsp;s&uuml;r&uuml;m&uuml; altında piyasaya s&uuml;r&uuml;lm&uuml;şt&uuml;r.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-Credits-1\">[1]</a><a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-Metz-Nov9-9\">[9]</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Tarih[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=1\" title=\"Değiştirilen bölüm: Tarih\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=1\" title=\"Değiştirilen bölüm: Tarih\">kaynağı değiştir</a>]</h2>\r\n\r\n<h3>DistBelief[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=2\" title=\"Değiştirilen bölüm: DistBelief\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=2\" title=\"Değiştirilen bölüm: DistBelief\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>2011&#39;den itibaren, Google Brain DistBelief&#39;i&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Derin_%C3%B6%C4%9Frenme\" title=\"Derin öğrenme\">derin &ouml;ğrenme</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yapay_sinir_a%C4%9Flar%C4%B1\" title=\"Yapay sinir ağları\">sinir ağlarına</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Sahipli_yaz%C4%B1l%C4%B1m\" title=\"Sahipli yazılım\">dayalı tescilli bir</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Makine_%C3%B6%C4%9Frenimi\" title=\"Makine öğrenimi\">makine &ouml;ğrenimi</a>&nbsp;sistemi olarak geliştirmiştir. Kullanımı, hem araştırma hem de ticari uygulamala alanlarında &ccedil;eşitli&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Alphabet_(%C5%9Firket)\" title=\"Alphabet (şirket)\">Alphabet</a>&nbsp;şirketlerinde hızla artmıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-whitepaper2015-10\">[10]</a><a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-Perez-11\">[11]</a>&nbsp;Google, DistBelief&#39;in kod tabanını basitleştirmek ve yeniden d&uuml;zenlemek i&ccedil;in&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Jeff_Dean_(bilgisayar_bilimcisi)&amp;action=edit&amp;redlink=1\" title=\"Jeff Dean (bilgisayar bilimcisi) (sayfa mevcut değil)\">Jeff Dean</a>&nbsp;dahil olmak &uuml;zere birden fazla bilgisayar bilimcisini g&ouml;revlendirmiştir. Yapılan &ccedil;alışmalar sonucunda TensorFlow ortaya &ccedil;ıkmıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-Oremus-12\">[12]</a>&nbsp;2009 yılında,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Geoffrey_Hinton\" title=\"Geoffrey Hinton\">Geoffrey Hinton</a>&nbsp;liderliğindeki ekip, genelleştirilmiş geri yayılımı ve &ouml;nemli &ouml;l&ccedil;&uuml;de daha y&uuml;ksek doğrulukla&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yapay_sinir_a%C4%9Flar%C4%B1\" title=\"Yapay sinir ağları\">sinir ağlarının</a>&nbsp;&uuml;retilmesine izin veren iyileştirmeleri uygulamaya koymuştur. Ayrıca,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Ses_konu%C5%9Fma_tan%C4%B1mlay%C4%B1c%C4%B1_yaz%C4%B1l%C4%B1mlar\" title=\"Ses konuşma tanımlayıcı yazılımlar\">konuşma tanımadaki</a>&nbsp;hatalarda %25&#39;lik bir azalma sağlayan diğer iyileştirmeleri de uygulamaya koymuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-Ward-Bailey-13\">[13]</a></p>\r\n\r\n<h3>TensorFlow[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=3\" title=\"Değiştirilen bölüm: TensorFlow\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=3\" title=\"Değiştirilen bölüm: TensorFlow\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>TensorFlow, Google Brain&#39;in ikinci nesil sistemidir. 1.0.0 s&uuml;r&uuml;m&uuml; 11 Şubat 2017&#39;de yayınlanmıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-14\">[14]</a>&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Referans_uygulamas%C4%B1&amp;action=edit&amp;redlink=1\" title=\"Referans uygulaması (sayfa mevcut değil)\">Referans uygulama</a>&nbsp;tek cihazlarda &ccedil;alışırken, TensorFlow birden fazla&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Merkez%C3%AE_i%C5%9Flem_birimi\" title=\"Merkezî işlem birimi\">CPU</a>&nbsp;ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Grafik_i%C5%9Flemci_birimi\" title=\"Grafik işlemci birimi\">GPU</a>&nbsp;&uuml;zerinde &ccedil;alışabilmektedir&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Grafik_i%C5%9Flemci_biriminde_genel_ama%C3%A7l%C4%B1_hesaplama\" title=\"Grafik işlemci biriminde genel amaçlı hesaplama\">(grafik işleme birimlerinde genel ama&ccedil;lı bilgi işlem</a>&nbsp;i&ccedil;in isteğe bağlı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/CUDA\" title=\"CUDA\">CUDA</a>&nbsp;ve&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=SYCL&amp;action=edit&amp;redlink=1\" title=\"SYCL (sayfa mevcut değil)\">SYCL</a>&nbsp;uzantıları ile birlikte).<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-Metz-Nov10-15\">[15]</a>&nbsp;TensorFlow, 64 bit&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Linux\" title=\"Linux\">Linux</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/MacOS\" title=\"MacOS\">macOS</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Windows</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Android_(i%C5%9Fletim_sistemi)\" title=\"Android (işletim sistemi)\">ve Android</a>&nbsp;ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C4%B0OS\" title=\"İOS\">iOS</a>&nbsp;dahil mobil bilgi işlem platformlarında mevcuttur.</p>\r\n\r\n<p>Esnek mimarisi, hesaplamanın &ccedil;eşitli platformlarda (CPU&#39;lar, GPU&#39;lar,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Tens%C3%B6r_i%C5%9Fleme_%C3%BCnitesi&amp;action=edit&amp;redlink=1\" title=\"Tensör işleme ünitesi (sayfa mevcut değil)\">TPU&#39;lar</a>&nbsp;) ve masa&uuml;stlerinden sunucu k&uuml;melerine, mobil ve u&ccedil; cihazlara kadar kolay dağıtımına olanak tanımaktadır.</p>\r\n\r\n<p>TensorFlow hesaplamaları,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Durum_(bilgisayar)\" title=\"Durum (bilgisayar)\">durum bilgisi olan</a>&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Dataflow_programlama&amp;action=edit&amp;redlink=1\" title=\"Dataflow programlama (sayfa mevcut değil)\">veri akışı</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Y%C3%B6nl%C3%BC_%C3%A7izge\" title=\"Yönlü çizge\">grafikleri</a>&nbsp;olarak ifade edilebilmektedir.&nbsp;<em>TensorFlow</em>&nbsp;adı, bu t&uuml;r sinir ağlarının&nbsp;<em><a href=\"https://tr.wikipedia.org/wiki/Tens%C3%B6r\" title=\"Tensör\">tens&ouml;rler</a></em>&nbsp;olarak adlandırılan &ccedil;ok boyutlu veri dizileri &uuml;zerinde ger&ccedil;ekleştirdiği işlemlerden t&uuml;remiştir. Haziran 2016&#39;daki&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Google_I/O\" title=\"Google I/O\">Google I / O Konferansı</a>&nbsp;sırasında Jeff Dean,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/GitHub\" title=\"GitHub\">GitHub&#39;daki</a>&nbsp;1.500 k&uuml;t&uuml;phanenin TensorFlow&#39;dan bahsettiğini ve bunlardan sadece 5&#39;inin Google tarafından oluşturulduğunu belirtmiştir.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-1500repo\'s-16\">[16]</a></p>\r\n\r\n<p>Aralık 2017&#39;de Google, Cisco, Red Hat, CoreOS ve CaiCloud&#39;dan gelen geliştiriciler bir konferansta&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Kubeflow&amp;action=edit&amp;redlink=1\" title=\"Kubeflow (sayfa mevcut değil)\">Kubeflow&#39;u</a>&nbsp;tanıtmıştır. Kubeflow, Kubernetes &uuml;zerinde TensorFlow&#39;un &ccedil;alıştırılmasına ve konuşlandırılmasına izin vermektedir.</p>\r\n\r\n<p>Mart 2018&#39;de Google,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/JavaScript\" title=\"JavaScript\">JavaScript&#39;te</a>&nbsp;makine &ouml;ğrenimi i&ccedil;in TensorFlow.js s&uuml;r&uuml;m 1.0&#39;ı duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-17\">[17]</a></p>\r\n\r\n<p>Ocak 2019&#39;da Google, TensorFlow 2.0&#39;ı duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-18\">[18]</a>&nbsp;Resmi olarak Eyl&uuml;l 2019&#39;da erişilebilir hale gelmiştir.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-19\">[19]</a></p>\r\n\r\n<p>Mayıs 2019&#39;da Google, bilgisayar grafiklerinde derin &ouml;ğrenme i&ccedil;in TensorFlow Graphics&#39;i duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-20\">[20]</a></p>\r\n\r\n<h3>Tens&ouml;r işleme birimi[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=4\" title=\"Değiştirilen bölüm: Tensör işleme birimi\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=4\" title=\"Değiştirilen bölüm: Tensör işleme birimi\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>Mayıs 2016&#39;da Google, &ouml;zellikle&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Makine_%C3%B6%C4%9Frenimi\" title=\"Makine öğrenimi\">makine &ouml;ğrenimi</a>&nbsp;i&ccedil;in geliştirilmiş ve TensorFlow i&ccedil;in &ouml;zel olarak tasarlanmış , uygulamaya &ouml;zel bir&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Entegre_devre\" title=\"Entegre devre\">entegre devre</a>&nbsp;(<a href=\"https://tr.wikipedia.org/wiki/ASIC\" title=\"ASIC\">ASIC</a>, bir donanım &ccedil;ipi) olan&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Tens%C3%B6r_i%C5%9Fleme_%C3%BCnitesi&amp;action=edit&amp;redlink=1\" title=\"Tensör işleme ünitesi (sayfa mevcut değil)\">Tensor işleme birimini</a>&nbsp;(Tensor processing unit (TPU)) duyurmuştur. TPU, d&uuml;ş&uuml;k hassasiyetli&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Aritmetik\" title=\"Aritmetik\">aritmetikte</a>&nbsp;(&ouml;r.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/8-bit\" title=\"8-bit\">8 bit</a>&nbsp;) y&uuml;ksek verim sağlamak i&ccedil;in tasarlanmıştır. Ayrıca,<a href=\"https://tr.wikipedia.org/wiki/G%C3%B6zetimli_%C3%B6%C4%9Frenme\" title=\"Gözetimli öğrenme\">modelleri eğitmek</a>&nbsp;yerine kullanmaya veya &ccedil;alıştırmaya y&ouml;nelik programlanabilir bir&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=AI_h%C4%B1zland%C4%B1r%C4%B1c%C4%B1_(bilgisayar_donan%C4%B1m%C4%B1)&amp;action=edit&amp;redlink=1\" title=\"AI hızlandırıcı (bilgisayar donanımı) (sayfa mevcut değil)\">yapay zeka hızlandırıcısıdır</a>. Google, veri merkezlerinde bir yıldan uzun s&uuml;redir TPU&#39;ları &ccedil;alıştırdıklarını a&ccedil;ıklamıştır. Aynı zamanda, makine &ouml;ğrenimi i&ccedil;in&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Watt_ba%C5%9F%C4%B1na_performans&amp;action=edit&amp;redlink=1\" title=\"Watt başına performans (sayfa mevcut değil)\">watt başına</a>&nbsp;daha iyi optimize edilmiş bir performans beklediklerini a&ccedil;ıklamıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-21\">[21]</a></p>\r\n\r\n<p>Mayıs 2017&#39;de Google, ikinci neslin yanı sıra TPU&#39;ların&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Google_Compute_Engine\" title=\"Google Compute Engine\">Google Compute Engine&#39;de</a>&nbsp;kullanılabilirliğini duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-22\">[22]</a>&nbsp;İkinci nesil TPU&#39;lar 180 teraflop&#39;a kadar performans sunmaktadır. Ayrıca, 64 TPU&#39;luk k&uuml;meler halinde d&uuml;zenlendiklerinde 11,5 petaflop&#39;a kadar performans sağlamaktadır.</p>\r\n\r\n<p>Mayıs 2018&#39;de Google, 420 teraflop performans ve 128 GB y&uuml;ksek&nbsp;<a href=\"https://tr.wikipedia.org/wiki/High_Bandwidth_Memory\" title=\"High Bandwidth Memory\">bant genişliğine sahip</a>&nbsp;bellek (HBM)) sunan &uuml;&ccedil;&uuml;nc&uuml; nesil TPU&#39;ları duyurmuştur. Cloud TPU v3 Kaps&uuml;ller, 100&#39;den fazla petaflop performans ve 32 TB HBM sunmaktadır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-23\">[23]</a></p>\r\n\r\n<p>Şubat 2018&#39;de Google, TPU&#39;ları&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Google_Cloud\" title=\"Google Cloud\">Google Cloud Platform&#39;da</a>&nbsp;beta olarak kullanıma sunduklarını duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-24\">[24]</a></p>\r\n\r\n<h3>Edge TPU[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=5\" title=\"Değiştirilen bölüm: Edge TPU\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=5\" title=\"Değiştirilen bölüm: Edge TPU\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>Temmuz 2018&#39;de Edge TPU duyurulmuştur. Edge TPU, Google&#39;ın TensorFlow Lite makine &ouml;ğrenimi modellerini akıllı telefonlar gibi&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=U%C3%A7_bilgi_i%C5%9Flem&amp;action=edit&amp;redlink=1\" title=\"Uç bilgi işlem (sayfa mevcut değil)\">u&ccedil; bilgi işlem</a>&nbsp;olarak bilinen bilgi işlem cihazlarında &ccedil;alıştırmak i&ccedil;in tasarlanmış&nbsp;<a href=\"https://tr.wikipedia.org/wiki/ASIC\" title=\"ASIC\">ASIC</a>&nbsp;yongasıdır.</p>\r\n\r\n<h3>TensorFlow Lite[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=6\" title=\"Değiştirilen bölüm: TensorFlow Lite\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=6\" title=\"Değiştirilen bölüm: TensorFlow Lite\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>Mayıs 2017&#39;de Google, &ouml;zellikle mobil geliştirmeye y&ouml;nelik bir yazılım yığını olan TensorFlow Lite&#39;ı duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-25\">[25]</a>&nbsp;Ocak 2019&#39;da TensorFlow ekibi, Android cihazlarda OpenGL ES 3.1 Compute Shaders ve iOS cihazlarda Metal Compute Shaders ile mobil GPU &ccedil;ıkarım motorunun geliştirici &ouml;nizlemesini yayınlamıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-26\">[26]</a>&nbsp;Mayıs 2019 yılında Google, TensorFlow Lite Micro&#39;nun (TensorFlow Lite for Microcontrollers olarak da bilinir) ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/ARM\" title=\"ARM\">ARM</a>&#39;nin uTensor&#39;unun birleşeceğini duyurmuştur.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-27\">[27]</a></p>\r\n\r\n<p>TensorFlow Lite, standart TensorFlow modelleri tarafından kullanılan Protocol Buffers bi&ccedil;iminden ka&ccedil;ınarak ağ modelleri i&ccedil;in veri serileştirme bi&ccedil;imi olarak FlatBuffers kullanmaktadır.</p>\r\n\r\n<h3>Pixel Visual Core (PVC)[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=7\" title=\"Değiştirilen bölüm: Pixel Visual Core (PVC)\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=7\" title=\"Değiştirilen bölüm: Pixel Visual Core (PVC)\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>Ekim 2017&#39;de Google, mobil cihazlar i&ccedil;in tamamen programlanabilir bir g&ouml;r&uuml;nt&uuml;, resim ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yapay_zeka\" title=\"Yapay zeka\">yapay zeka</a>&nbsp;işlemcisi olan Pixel Visual Core&#39;u (PVC) i&ccedil;eren Google Pixel 2&#39;yi piyasaya s&uuml;rm&uuml;şt&uuml;r. PVC makine &ouml;ğrenme i&ccedil;in TensorFlow&#39;u desteklemektedir. Ayrıca g&ouml;r&uuml;nt&uuml; işleme i&ccedil;in&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Halide_progralama_dili&amp;action=edit&amp;redlink=1\" title=\"Halide progralama dili (sayfa mevcut değil)\">Halide progralama dilini</a>&nbsp;desteklemektedir.</p>\r\n\r\n<h3>Uygulamalar[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=8\" title=\"Değiştirilen bölüm: Uygulamalar\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=8\" title=\"Değiştirilen bölüm: Uygulamalar\">kaynağı değiştir</a>]</h3>\r\n\r\n<p><a href=\"https://tr.wikipedia.org/wiki/Google\" title=\"Google\">Google</a>&nbsp;TensorFlow tarafından desteklenen&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=RankBrain&amp;action=edit&amp;redlink=1\" title=\"RankBrain (sayfa mevcut değil)\">RankBrain&#39;i</a>&nbsp;26 Ekim 2015 tarihinde resmen yayınlamıştır.</p>\r\n\r\n<p>Ayrıca Google, kurulum gerektirmeyen bir TensorFlow Jupyter Notebook ortamı olan Colaboratory&#39;u da piyasaya s&uuml;rm&uuml;şt&uuml;r.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-28\">[28]</a></p>\r\n\r\n<h3>Machine Learning Crash Course (MLCC)[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=9\" title=\"Değiştirilen bölüm: Machine Learning Crash Course (MLCC)\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=9\" title=\"Değiştirilen bölüm: Machine Learning Crash Course (MLCC)\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>1 Mart 2018&#39;de Google, Machine Learning Crash Course&#39;u (MLCC) yayınlamıştır. Başlangı&ccedil;ta Google &ccedil;alışanlarını pratik&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yapay_zeka\" title=\"Yapay zeka\">yapay zeka</a>&nbsp;ve makine &ouml;ğrenimi temelleri ile donatmaya yardımcı olmak i&ccedil;in MLCC tasarlanmıştır. Aynı zamanda, kurs kamuya sunulmadan &ouml;nce d&uuml;nyanın &ccedil;eşitli şehirlerinde Google tarafından &uuml;cretsiz TensorFlow at&ouml;lyeleri başlatılmıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-29\">[29]</a></p>\r\n\r\n<h3>TensorFlow 2.0[<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;veaction=edit&amp;section=10\" title=\"Değiştirilen bölüm: TensorFlow 2.0\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=TensorFlow&amp;action=edit&amp;section=10\" title=\"Değiştirilen bölüm: TensorFlow 2.0\">kaynağı değiştir</a>]</h3>\r\n\r\n<p>TensorFlow Ekibi, Eyl&uuml;l 2019&#39;da k&uuml;t&uuml;phanenin yeni bir ana s&uuml;r&uuml;m&uuml;n&uuml;n yayınlandığını duyurmuştur. TensorFlow 2.0 bir &ccedil;ok yeni &ouml;zellik getirmiştir. Bunlardan en &ouml;nemlisi, ilk olarak&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Zincirleme&amp;action=edit&amp;redlink=1\" title=\"Zincirleme (sayfa mevcut değil)\">Chainer</a>&nbsp;ve daha sonra&nbsp;<a href=\"https://tr.wikipedia.org/wiki/PyTorch\" title=\"PyTorch\">PyTorch</a>&nbsp;tarafından pop&uuml;ler hale getirilen&nbsp;<a href=\"https://docs.chainer.org/en/stable/guides/define_by_run.html\" rel=\"nofollow\">&quot;&Ccedil;alıştırmaya G&ouml;re Tanımla&quot;</a>&nbsp;24 Şubat 2021 tarihinde&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Wayback_Machine\" title=\"Wayback Machine\">Wayback Machine</a>&nbsp;sitesinde&nbsp;<a href=\"https://web.archive.org/web/20210224150442/https://docs.chainer.org/en/stable/guides/define_by_run.html\" rel=\"nofollow\">arşivlendi</a>. şemasına ge&ccedil;ilmiştir.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-30\">[30]</a>&nbsp;Diğer &ouml;nemli değişiklikler arasında eski kitaplıkların kaldırılması, TensorFlow&#39;un farklı s&uuml;r&uuml;mlerindeki eğitimli modeller arasında &ccedil;apraz uyumluluk ve GPU&#39;daki performansta &ouml;nemli iyileştirmeler yer almıştır.<a href=\"https://tr.wikipedia.org/wiki/TensorFlow#cite_note-31\">[31]</a></p>', 1, 'tensorflow', 3),
(5, 'Veri madenciliği', 'blogs/download.jpg', '<p>Vikipedi, &ouml;zg&uuml;r ansiklopedi</p>\r\n\r\n<p><strong>Veri madenciliği</strong>, b&uuml;y&uuml;k &ouml;l&ccedil;ekli&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Veri\" title=\"Veri\">veriler</a>&nbsp;arasından faydalı bilgiye ulaşma,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Bilgi\" title=\"Bilgi\">bilgiyi</a>&nbsp;madenleme işidir. B&uuml;y&uuml;k veri yığınları i&ccedil;erisinden gelecekle ilgili tahminde bulunabilmemizi sağlayabilecek bağıntıların bilgisayar programı kullanarak aranması olarak da tanımlanabilir.<a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-1\">[1]</a><a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-2\">[2]</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>İ&ccedil;indekiler</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#Kavram\">1Kavram</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#Y%C3%B6ntem\">2Y&ouml;ntem</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#Veri_s%C4%B1n%C4%B1fland%C4%B1rma\">3Veri sınıflandırma</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#Ayr%C4%B1ca_bak%C4%B1n%C4%B1z\">4Ayrıca bakınız</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#Kaynak%C3%A7a\">5Kaynak&ccedil;a</a></li>\r\n</ul>\r\n\r\n<h2>Kavram[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_madencili%C4%9Fi&amp;veaction=edit&amp;section=1\" title=\"Değiştirilen bölüm: Kavram\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_madencili%C4%9Fi&amp;action=edit&amp;section=1\" title=\"Değiştirilen bölüm: Kavram\">kaynağı değiştir</a>]</h2>\r\n\r\n<p>Veri madenciliği deyimi yanlış kullanılan bir kavram olabileceğinden buna eş değer başka kullanımlar da literat&uuml;re ge&ccedil;miştir. Veritabanlarında bilgi madenciliği (<a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İng.</a>&nbsp;<em>knowledge mining in databases</em>), bilgi &ccedil;ıkarımı (<a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İng.</a>&nbsp;<em>knowledge extraction</em>), veri ve &ouml;r&uuml;nt&uuml; analizi (<a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İng.</a>&nbsp;<em>data/pattern analysis</em>), veri arkeolojisi gibi.<a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-3\">[3]</a>&nbsp;Bu terimler arasında &quot;<a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1\" title=\"Veritabanı\">Veritabanlarında</a>&nbsp;Bilgi Keşfi&quot; (<a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İng.</a>&nbsp;<em>VBK - knowledge discovery in databases - KDD</em>) en yaygınıdır.<a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-4\">[4]</a>&nbsp;Alternatif olarak veri madenciliği aslında bilgi keşfi s&uuml;recinin bir par&ccedil;ası şeklinde kabul g&ouml;rmektedir. Bu adımlar:</p>\r\n\r\n<ol>\r\n	<li>Veri temizleme (g&uuml;r&uuml;lt&uuml;l&uuml; ve tutarsız verileri &ccedil;ıkarmak)</li>\r\n	<li>Veri b&uuml;t&uuml;nleştirme (bir&ccedil;ok veri kaynağını birleştirebilmek)</li>\r\n	<li>Veri se&ccedil;me (yapılacak olan analizle ilgili olan verileri belirlemek )</li>\r\n	<li>Veri d&ouml;n&uuml;ş&uuml;m&uuml; (verinin veri madenciliği tekniğinden kullanılabilecek hale d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; ger&ccedil;ekleştirmek)</li>\r\n	<li>Veri madenciliği (veri &ouml;r&uuml;nt&uuml;lerini yakalayabilmek i&ccedil;in akıllı metotları uygulamak)</li>\r\n	<li>&Ouml;r&uuml;nt&uuml; değerlendirme (b&acirc;zı &ouml;l&ccedil;&uuml;mlere g&ouml;re elde edilmiş bilgiyi temsil eden ilgin&ccedil; &ouml;r&uuml;nt&uuml;leri tanımlamak)</li>\r\n	<li>Bilgi sunumu (m&acirc;denciliği yapılmış olan elde edilmiş bilginin kullanıcıya sunumunu ger&ccedil;ekleştirmek).<a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-5\">[5]</a></li>\r\n</ol>\r\n\r\n<h2>Y&ouml;ntem[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_madencili%C4%9Fi&amp;veaction=edit&amp;section=2\" title=\"Değiştirilen bölüm: Yöntem\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_madencili%C4%9Fi&amp;action=edit&amp;section=2\" title=\"Değiştirilen bölüm: Yöntem\">kaynağı değiştir</a>]</h2>\r\n\r\n<p>Veri madenciliği adımı, kullanıcı ve bilgi tabanıyla etkileşim halindedir. İlgin&ccedil; &ouml;r&uuml;nt&uuml;ler kullanıcıya g&ouml;sterilir, ve bunun &ouml;tesinde istenirse bilgi tabanına da kaydedilebilir. Buna g&ouml;re, veri madenciliği işlemi, gizli kalmış &ouml;r&uuml;nt&uuml;ler bulunana kadar devam eder.</p>\r\n\r\n<p>Bir veri madenciliği sistemi, aşağıdaki temel bileşenlere sahiptir:<a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-6\">[6]</a></p>\r\n\r\n<ol>\r\n	<li>Veritabanı, veri ambarı ve diğer depolama teknikleri</li>\r\n	<li>Veritabanı ya da Veri Ambarı Sunucusu</li>\r\n	<li>Bilgi Tabanı</li>\r\n	<li>Veri Madenciliği Motoru</li>\r\n	<li>&Ouml;r&uuml;nt&uuml; Değerlendirme</li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Kullan%C4%B1c%C4%B1_aray%C3%BCz%C3%BC\" title=\"Kullanıcı arayüzü\">Kullanıcı Aray&uuml;z&uuml;</a></li>\r\n</ol>\r\n\r\n<p>Veri madenciliği, eldeki verilerden &uuml;st&uuml; kapalı, &ccedil;ok net olmayan, &ouml;nceden bilinmeyen ancak potansiyel olarak kullanışlı bilginin &ccedil;ıkarılmasıdır. Bu da; k&uuml;meleme, veri &ouml;zetleme, değişikliklerin analizi, sapmaların tespiti gibi belirli sayıda teknik yaklaşımları i&ccedil;erir.</p>\r\n\r\n<p>Başka bir deyişle, veri madenciliği, verilerin i&ccedil;erisindeki desenlerin, ilişkilerin, değişimlerin, d&uuml;zensizliklerin, kuralların ve istatistiksel olarak &ouml;nemli olan yapıların yarı otomatik olarak keşfedilmesidir.</p>\r\n\r\n<p>Temel olarak veri madenciliği, veri setleri arasındaki desenlerin ya da d&uuml;zenin, verinin analizi ve yazılım tekniklerinin kullanılmasıyla ilgilidir. Veriler arasındaki ilişkiyi, kuralları ve &ouml;zellikleri belirlemekten bilgisayar sorumludur. Ama&ccedil;, daha &ouml;nceden fark edilmemiş veri desenlerini tespit edebilmektir.</p>\r\n\r\n<p>Veri madenciliğini istatistiksel bir y&ouml;ntemler serisi olarak g&ouml;rmek m&uuml;mk&uuml;n olabilir. Ancak veri madenciliği, geleneksel istatistikten birka&ccedil; y&ouml;nde farklılık g&ouml;sterir. Veri madenciliğinde ama&ccedil;, kolaylıkla mantıksal kurallara ya da g&ouml;rsel sunumlara &ccedil;evrilebilecek nitel modellerin &ccedil;ıkarılmasıdır. Bu bağlamda, veri madenciliği insan merkezlidir ve bazen insan &ndash; bilgisayar aray&uuml;z&uuml; birleştirilir.</p>\r\n\r\n<p>Veri madenciliği sahası, istatistik, makine bilgisi, veritabanları ve y&uuml;ksek performanslı işlem gibi temelleri de i&ccedil;erir.</p>\r\n\r\n<h2>Veri sınıflandırma[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_madencili%C4%9Fi&amp;veaction=edit&amp;section=3\" title=\"Değiştirilen bölüm: Veri sınıflandırma\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_madencili%C4%9Fi&amp;action=edit&amp;section=3\" title=\"Değiştirilen bölüm: Veri sınıflandırma\">kaynağı değiştir</a>]</h2>\r\n\r\n<p>Veri madenciliğinde &uuml;zerinde &ccedil;alışılan veri farklı terimlerle sınıflandırılır.&nbsp;<em>Geniş veri</em>&nbsp;tek bir iş istasyonunun belleğine sığamayacak kadar b&uuml;y&uuml;k veri k&uuml;melerini ifade etmektedir.&nbsp;<em>Y&uuml;ksek hacimli veri</em>&nbsp;ise, tek bir iş istasyonundaki ya da bir grup iş istasyonundaki disklere sığamayacak kadar fazla veri anlamındadır.&nbsp;<em>Dağıtık veri</em>&nbsp;ise, farklı coğrafi konumlarda bulunan verileri anlatır.<a href=\"https://tr.wikipedia.org/wiki/Veri_madencili%C4%9Fi#cite_note-7\">[7]</a></p>', 1, 'veri-madenciligi', 2);
INSERT INTO `blog_blog` (`id`, `title`, `image`, `description`, `is_active`, `slug`, `user_id`) VALUES
(6, 'Veritabanı', 'blogs/download_XY0R7ZI.jpg', '<p><strong>Veri tabanları</strong>&nbsp;yapılandırılmış bilgi veya verilerin depolandığı alanlardır. Bilgi artışıyla birlikte bilgisayarda bilgi depolama ve bilgiye erişim konularında yeni y&ouml;ntemlere ihtiya&ccedil; duyulmuştur. Veri tabanları; b&uuml;y&uuml;k miktardaki bilgileri depolamada geleneksel y&ouml;ntem olan &lsquo;&lsquo;dosya-işlem sistemine&rsquo;&rsquo; alternatif olarak geliştirilmiştir. Telefonlarımızdaki kişi rehberi g&uuml;nl&uuml;k hayatımızda &ccedil;ok basit bir şekilde kullandığımız veri tabanı &ouml;rneği olarak kabul edilebilir. Bunların dışında internet sitelerindeki &uuml;yelik sistemleri, akademik dergilerin ve &uuml;niversitelerin tez y&ouml;netim sistemleri de veri tabanı kullanımına &ouml;rnektir. Veri tabanları sayesinde bilgilere ulaşır ve onları d&uuml;zenleyebiliriz. Veri tabanları genellikle bireysel olarak satın alınamayacak kadar y&uuml;ksek meblağlara sahip olmasına karşın; &uuml;cretsiz kullanıma a&ccedil;ılan akademik veri tabanları da bulunmaktadır. Akademik veri tabanları aracılığıyla bazen bibliyografik bilgi bazen de tam metinlere erişmek m&uuml;mk&uuml;nd&uuml;r. Veri tabanları, veri tabanı y&ouml;netim sistemleri aracılığıyla oluşturulur ve y&ouml;netilir. Bu sistemlere;&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Microsoft_Access\" title=\"Microsoft Access\">Microsoft Access</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/MySQL\" title=\"MySQL\">MySQL</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/IBM_DB2\" title=\"IBM DB2\">IBM DB2</a>,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Informix&amp;action=edit&amp;redlink=1\" title=\"Informix (sayfa mevcut değil)\">Informix</a>,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Interbase&amp;action=edit&amp;redlink=1\" title=\"Interbase (sayfa mevcut değil)\">Interbase</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Microsoft_SQL_Server\" title=\"Microsoft SQL Server\">Microsoft SQL Server</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/PostgreSQL\" title=\"PostgreSQL\">PostgreSQL</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Oracle\" title=\"Oracle\">Oracle</a>&nbsp;ve&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Sysbase&amp;action=edit&amp;redlink=1\" title=\"Sysbase (sayfa mevcut değil)\">Sysbase</a>&nbsp;&ouml;rnek olarak verilebilir.</p>\r\n\r\n<p>21. y&uuml;zyılda, farklı sorgulama dilleri etkin ve verimli bir şekilde kullanılabildiği i&ccedil;in ilişkisel olmayan veri tabanları pop&uuml;ler h&acirc;le gelmiştir.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>İ&ccedil;indekiler</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#Veri_taban%C4%B1_y%C3%B6neticili%C4%9Fi\">1Veri tabanı y&ouml;neticiliği</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#%C4%B0li%C5%9Fkisel_veri_taban%C4%B1_sistemleri\">2İlişkisel veri tabanı sistemleri</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#Veri_taban%C4%B1_dilleri\">3Veri tabanı dilleri</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#Veri_modelleme\">4Veri modelleme</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#Veri_taban%C4%B1_y%C3%B6netim_sistem_yaz%C4%B1l%C4%B1mlar%C4%B1\">5Veri tabanı y&ouml;netim sistem yazılımları</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#Literat%C3%BCr\">6Literat&uuml;r</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Veritaban%C4%B1#Kaynak%C3%A7a\">7Kaynak&ccedil;a</a></li>\r\n</ul>\r\n\r\n<h2>Veri tabanı y&ouml;neticiliği[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;veaction=edit&amp;section=1\" title=\"Değiştirilen bölüm: Veri tabanı yöneticiliği\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;action=edit&amp;section=1\" title=\"Değiştirilen bölüm: Veri tabanı yöneticiliği\">kaynağı değiştir</a>]</h2>\r\n\r\n<p>G&uuml;n&uuml;m&uuml;zde&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veri_taban%C4%B1_sistemleri&amp;action=edit&amp;redlink=1\" title=\"Veri tabanı sistemleri (sayfa mevcut değil)\">veri tabanı sistemleri</a>, bankacılıktan&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Otomotiv\" title=\"Otomotiv\">otomotiv</a>&nbsp;sanayisine, sağlık bilgi sistemlerinden şirket y&ouml;netimine,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Telekom%C3%BCnikasyon_sistemleri&amp;action=edit&amp;redlink=1\" title=\"Telekomünikasyon sistemleri (sayfa mevcut değil)\">telekom&uuml;nikasyon sistemlerinden</a>&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Hava_ta%C5%9F%C4%B1mac%C4%B1l%C4%B1%C4%9F%C4%B1&amp;action=edit&amp;redlink=1\" title=\"Hava taşımacılığı (sayfa mevcut değil)\">hava taşımacılığına</a>, &ccedil;ok geniş alanlarda kullanılan bilgisayar sistemlerinin altyapısını oluşturmaktadır. Veri tabanı fiziksel olarak bilgileri tutarken mantıksal bir hiyerarşiye de sahiptir. Veri tabanı sistemlerinin kurulumu, konfig&uuml;rasyonu, d&uuml;zeni, sorgulaması, g&uuml;venliği ve denetiminin karmaşık bir h&acirc;l alması veri tabanı y&ouml;neticiliği kavramının oluşmasına neden olmuştur. Bir veri tabanı y&ouml;neticisi mantıksal data modelleme, fiziksel veri tabanı dizaynı &ccedil;ıkarma, fiziksel olarak veri tabanı oluşturma,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Transact-SQL&amp;action=edit&amp;redlink=1\" title=\"Transact-SQL (sayfa mevcut değil)\">Transact-SQL</a>&nbsp;kullanarak sorgu yazma,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Microsoft_SQL_Server\" title=\"Microsoft SQL Server\">Microsoft SQL Server</a>&nbsp;kurulumu ve konfig&uuml;rasyonu,&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=G%C3%BCvenlik_y%C3%B6netimi&amp;action=edit&amp;redlink=1\" title=\"Güvenlik yönetimi (sayfa mevcut değil)\">g&uuml;venlik y&ouml;netimi</a>&nbsp;ve konfig&uuml;rasyonu, veri tabanı y&ouml;netimi ve bakımı, veri tabanı denetleme ve optimize etme işlerini &uuml;stlenir.</p>\r\n\r\n<h2>İlişkisel veri tabanı sistemleri[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;veaction=edit&amp;section=2\" title=\"Değiştirilen bölüm: İlişkisel veri tabanı sistemleri\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;action=edit&amp;section=2\" title=\"Değiştirilen bölüm: İlişkisel veri tabanı sistemleri\">kaynağı değiştir</a>]</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=BerkeleyDB&amp;action=edit&amp;redlink=1\" title=\"BerkeleyDB (sayfa mevcut değil)\">BerkeleyDB</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=DB2&amp;action=edit&amp;redlink=1\" title=\"DB2 (sayfa mevcut değil)\">DB2</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=Informix&amp;action=edit&amp;redlink=1\" title=\"Informix (sayfa mevcut değil)\">Informix</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=Interbase&amp;action=edit&amp;redlink=1\" title=\"Interbase (sayfa mevcut değil)\">Interbase</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Microsoft_Access\" title=\"Microsoft Access\">Microsoft Access</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=Microsoft_Management_Studio&amp;action=edit&amp;redlink=1\" title=\"Microsoft Management Studio (sayfa mevcut değil)\">Microsoft Management Studio</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/MySQL\" title=\"MySQL\">MySQL</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Oracle\" title=\"Oracle\">Oracle</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=PgAdmin&amp;action=edit&amp;redlink=1\" title=\"PgAdmin (sayfa mevcut değil)\">PgAdmin</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/PostgreSQL\" title=\"PostgreSQL\">PostgreSQL</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Sybase\" title=\"Sybase\">Sybase</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=Sysbase&amp;action=edit&amp;redlink=1\" title=\"Sysbase (sayfa mevcut değil)\">Sysbase</a></li>\r\n</ul>\r\n\r\n<h2>Veri tabanı dilleri[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;veaction=edit&amp;section=3\" title=\"Değiştirilen bölüm: Veri tabanı dilleri\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;action=edit&amp;section=3\" title=\"Değiştirilen bölüm: Veri tabanı dilleri\">kaynağı değiştir</a>]</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/PL/SQL\" title=\"PL/SQL\">PL/SQL</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/SQL\" title=\"SQL\">SQL</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Tcl\" title=\"Tcl\">Tcl</a></li>\r\n	<li><a href=\"https://tr.wikipedia.org/w/index.php?title=Transact-SQL&amp;action=edit&amp;redlink=1\" title=\"Transact-SQL (sayfa mevcut değil)\">Transact-SQL</a>&nbsp;(<a href=\"https://tr.wikipedia.org/w/index.php?title=T-SQL&amp;action=edit&amp;redlink=1\" title=\"T-SQL (sayfa mevcut değil)\">T-SQL</a>)</li>\r\n</ul>\r\n\r\n<h2>Veri modelleme[<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;veaction=edit&amp;section=4\" title=\"Değiştirilen bölüm: Veri modelleme\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Veritaban%C4%B1&amp;action=edit&amp;section=4\" title=\"Değiştirilen bölüm: Veri modelleme\">kaynağı değiştir</a>]</h2>\r\n\r\n<p>Veri tabanında asıl &ouml;nemli kavram, kayıt yığını ya da bilgi par&ccedil;alarının tanımlanmasıdır. Bu tanıma&nbsp;<em>şema</em>&nbsp;adı verilir. Şema, veri tabanında kullanılacak bilgi tanımlarının nasıl modelleneceğini g&ouml;sterir. Bu modele&nbsp;<em>veri modeli</em>&nbsp;(<em><a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İngilizce</a>:&nbsp;data model</em>), yapılan işleme de&nbsp;<em><a href=\"https://tr.wikipedia.org/wiki/Veri_modelleme\" title=\"Veri modelleme\">veri modelleme</a></em>&nbsp;denir. En yaygın olanı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C4%B0li%C5%9Fkisel_model\" title=\"İlişkisel model\">ilişkisel modeldir</a>&nbsp;(<em><a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İngilizce</a>:&nbsp;relational model</em>). Bu modelde veriler tablolarda saklanır. Tablolarda bulunan satırlar (<em><a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İngilizce</a>:&nbsp;row</em>) kayıtların kendisini, s&uuml;tunlar (<em><a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngilizce\" title=\"İngilizce\">İngilizce</a>:&nbsp;column</em>) ise bu kayıtları oluşturan bilgi par&ccedil;alarının ne t&uuml;rden olduklarını belirtir. Başka modeller (<em>sistem modeli</em>&nbsp;ya da&nbsp;<em>ağ modeli</em>&nbsp;gibi) daha belirgin ilişkiler kurarlar.</p>', 1, 'veritaban', 2),
(7, 'Laravel', 'blogs/62px-Laravel.svg.png', '<p><strong>Laravel</strong><a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-1\">[1]</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Model-View-Controller\" title=\"Model-View-Controller\">MVC</a>&nbsp;yapısında web uygulamaları geliştirme i&ccedil;in tasarlanmış &uuml;cretsiz,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/A%C3%A7%C4%B1k_kaynak\" title=\"Açık kaynak\">a&ccedil;ık kaynak</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/PHP\" title=\"PHP\">PHP</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Web_Uygulama_%C4%B0skeleti\" title=\"Web Uygulama İskeleti\">web uygulama iskeletidir</a>. Laravel,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/GitHub\" title=\"GitHub\">GitHub</a>&nbsp;sitesinde barındırılan kaynak kodu ile birlikte, MIT lisansı altında yayınlandı.</p>\r\n\r\n<p>2014 ve 2015 yıllarında&nbsp;<a href=\"http://www.sitepoint.com/\" rel=\"nofollow\">Sitepoint</a>&nbsp;30 Mayıs 2014 tarihinde&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Wayback_Machine\" title=\"Wayback Machine\">Wayback Machine</a>&nbsp;sitesinde&nbsp;<a href=\"https://web.archive.org/web/20140530125513/http://www.sitepoint.com/\" rel=\"nofollow\">arşivlendi</a>. tarafından yapılan en pop&uuml;ler PHP uygulama iskeletleri anketlerinde Laravel iki sene &uuml;st &uuml;ste en &uuml;st sırada yer aldı.<a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-2\">[2]</a><a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-3\">[3]</a>&nbsp;Nisan 2015 tarihindeki verilere g&ouml;re Laravel github&#39;da barındırılan PHP projeleri arasında en &ccedil;ok takip edilen ve en pop&uuml;ler projedir.<a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-4\">[4]</a></p>\r\n\r\n<p>Laravel, versiyon 4&#39;ten itibaren bağımlılık y&ouml;netimi (dependency management) i&ccedil;in&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Composer\" title=\"Composer\">composer</a>&nbsp;paket y&ouml;neticisini tercih etmiştir<a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-5\">[5]</a>. Yine versiyon 4&#39;ten itibaren&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Doctrine\" title=\"Doctrine\">Doctrine</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Monolog\" title=\"Monolog\">Monolog</a>&nbsp;gibi paketlerin yanı sıra web iskeletini oluşturan komponentler i&ccedil;in&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Symfony2\" title=\"Symfony2\">Symfony2</a>&nbsp;paketlerinden yararlanmaktadır.<a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-6\">[6]</a></p>\r\n\r\n<p>Versiyon 5 ile birlikte dizin yapısında &ouml;nemli bir değişikliğe gidilmiş ve PSR-4 standartlarına daha uyumlu bir yapı haline getirilmiştir.<a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-7\">[7]</a></p>\r\n\r\n<p>Versiyon 7 3 Mart 2020&#39;de yayınlanmıştır. Laravel 7 ile birlikte yeni bir &ouml;zellik olan Laravel Airlock ekosisteme eklenmiş ve rota hızı (routing speed) geliştirmeleri ile &ouml;zel Eloquent ORM sınıflarını i&ccedil;eren bir&ccedil;ok yenilik kullanıcılara sunulmuştur.<a href=\"https://tr.wikipedia.org/wiki/Laravel#cite_note-8\">[8]</a></p>\r\n\r\n<h2>&Ouml;zellikler[<a href=\"https://tr.wikipedia.org/w/index.php?title=Laravel&amp;veaction=edit&amp;section=1\" title=\"Değiştirilen bölüm: Özellikler\">değiştir</a>&nbsp;|&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Laravel&amp;action=edit&amp;section=1\" title=\"Değiştirilen bölüm: Özellikler\">kaynağı değiştir</a>]</h2>\r\n\r\n<p>Laravel&#39; in en &ouml;nemli tasarım noktaları aşağıda listelenmiştir:</p>\r\n\r\n<ul>\r\n	<li>Composer sayesinde hem iskelet bağımsız hem de laravel&#39;e &ouml;zg&uuml; yazılmış paketlerin kullanımına imk&acirc;n verir.</li>\r\n	<li><strong>Eloquent ORM</strong>&nbsp;kullanımı basit ve kullanışlı bir&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=ActiveRecord&amp;action=edit&amp;redlink=1\" title=\"ActiveRecord (sayfa mevcut değil)\">ActiveRecord</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Mimari_desen\" title=\"Mimari desen\">mimari deseni</a>&nbsp;uygulamasıdır. Veritabanındaki her bir tabloya karşılık gelen bir&nbsp;<strong>model</strong>&nbsp;sınıfı bulunur. Bu sınıf kullanılarak oluşturulan nesneler ile akıcı arabirim (fluent interface) kullanılarak sorgular oluşturulabilir.</li>\r\n	<li>Y&uuml;ksek kabiliyetli rota (route) tanımları ile bağlantılar programatik olarak oluşturulur. Rotalara isim vermek ya da rotaya cevap veren controller ve action tanımları ile programatik olarak&nbsp;<a href=\"https://tr.wikipedia.org/wiki/URL\" title=\"URL\">URL</a>&nbsp;oluşturmak m&uuml;mk&uuml;nd&uuml;r. B&ouml;ylece SEO ya da diğer ihtiya&ccedil;lar nedeniyle gereken URL değişikliklerinin projenin genelinde kullanılan linklerde otomatik olarak g&ouml;r&uuml;lmesini m&uuml;mk&uuml;n kılar.</li>\r\n	<li>G&uuml;&ccedil;l&uuml;&nbsp;<strong>blade</strong>&nbsp;şablon dili ile MVC mimari deseninin&nbsp;<strong>View</strong>&nbsp;(V) kısmına &ccedil;&ouml;z&uuml;m sağlanır.&nbsp;<strong>View</strong>&nbsp;i&ccedil;in&nbsp;<strong>blade</strong>&nbsp;kullanmak mecburi değildir, &ouml;ntanımlı olarak PHP dilinin kendisi de bir şablon dili olarak tercih edilebilir.</li>\r\n	<li>İ&ccedil;erisinde kimlik doğrulama (authentication) ile ilgili hazır yapı bulunmaktadır. Yapı aktif hale getirildiği zaman yetkilendirmenin yanı sıra e-posta onaylama, &quot;şifremi unuttum&quot; &ouml;zelliği gibi ihtiya&ccedil;lar i&ccedil;in başlangı&ccedil; dosyaları otomatik oluşturulur.</li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/XSRF\" title=\"XSRF\">XSRF</a>&nbsp;g&uuml;venlik a&ccedil;ığı i&ccedil;in hazır &ccedil;&ouml;z&uuml;m&uuml; bulunmaktadır.</li>\r\n	<li>Migration ve data seeder &ouml;zellikleri ile veritabanı şeması versiyonlaması ve otomatik veri girişi imk&acirc;nı sağlamaktadır.</li>\r\n	<li>Y&uuml;ksek&nbsp;<a href=\"https://tr.wikipedia.org/wiki/I/O\" title=\"I/O\">I/O</a>&nbsp;gerektiren ya da uzun s&uuml;ren işler i&ccedil;in queue k&uuml;t&uuml;phanesine sahiptir.</li>\r\n	<li>Arka planda ya da komut satırı &uuml;zerinden &ccedil;alışması gereken programlar i&ccedil;in altyapı sağlamaktadır.</li>\r\n	<li>&Ccedil;oklu dil desteği bulunmaktadır.</li>\r\n	<li>Pop&uuml;ler&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=SwiftMailer&amp;action=edit&amp;redlink=1\" title=\"SwiftMailer (sayfa mevcut değil)\">SwiftMailer</a>&nbsp;k&uuml;t&uuml;phanesi &uuml;zerine kurulu e-posta g&ouml;nderim k&uuml;t&uuml;phanesi mevcuttur.</li>\r\n	<li><a href=\"https://tr.wikipedia.org/wiki/Birim_testi\" title=\"Birim testi\">Birim testleri</a>&nbsp;(unit testing) ve fonksiyonel testler (functional testing) i&ccedil;in gerekli altyapı iskelete entegre edilmiş durumdadır.</li>\r\n	<li>Otomatik sayfalama desteği ile dizi ya da veritabanı sonu&ccedil;ları kolayca sayfalandırılabilir.</li>\r\n</ul>', 1, 'laravel', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_blog_categories`
--

DROP TABLE IF EXISTS `blog_blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_blog_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blog_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blog_categories_blog_id_category_id_07ca2d5b_uniq` (`blog_id`,`category_id`),
  KEY `blog_blog_categories_blog_id_41b7a08b` (`blog_id`),
  KEY `blog_blog_categories_category_id_1fb5860b` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog_blog_categories`
--

INSERT INTO `blog_blog_categories` (`id`, `blog_id`, `category_id`) VALUES
(4, 1, 2),
(3, 2, 4),
(5, 1, 1),
(6, 1, 3),
(7, 1, 4),
(8, 3, 2),
(9, 4, 2),
(10, 4, 3),
(11, 5, 5),
(12, 6, 5),
(13, 7, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `slug`) VALUES
(1, 'makine öğrenmesi', 'makine-ogrenmesi'),
(2, 'yapay zeka', 'yapay-zeka'),
(3, 'derin öğrenme', 'derin-ogrenme'),
(4, 'web geliştirme', 'web-gelistirme'),
(5, 'veri', 'veri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_turkish_ci,
  `object_repr` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Tablo döküm verisi `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-26 14:14:13.382000', '1', 'web geliştirme', 1, '[{\"added\": {}}]', 1, 1),
(2, '2022-04-26 14:14:52.834998', '2', 'mobil uygulama', 1, '[{\"added\": {}}]', 1, 1),
(3, '2022-04-26 14:17:32.296377', '1', 'python kursu', 1, '[{\"added\": {}}]', 2, 1),
(4, '2022-04-26 14:18:38.340627', '2', 'django kursu', 1, '[{\"added\": {}}]', 2, 1),
(5, '2022-04-27 16:14:51.747203', '2', 'yapay zeka', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 1, 1),
(6, '2022-04-27 16:15:17.961104', '1', 'makine öğrenmesi', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 1, 1),
(7, '2022-04-27 16:15:32.275564', '3', 'derin öğrenme', 1, '[{\"added\": {}}]', 1, 1),
(8, '2022-04-27 16:16:03.124583', '4', 'web geliştirme', 1, '[{\"added\": {}}]', 1, 1),
(9, '2022-04-27 16:16:35.886151', '2', 'django', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Categories\"]}}]', 2, 1),
(10, '2022-04-27 16:17:10.859676', '1', 'python', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Categories\"]}}]', 2, 1),
(11, '2022-04-27 16:18:42.797164', '1', 'python', 2, '[{\"changed\": {\"fields\": [\"Categories\"]}}]', 2, 1),
(12, '2022-04-27 16:21:07.499297', '1', 'python', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 2, 1),
(13, '2022-04-27 16:23:46.526121', '3', 'c++', 1, '[{\"added\": {}}]', 2, 1),
(14, '2022-04-27 16:25:57.135997', '4', 'TensorFlow', 1, '[{\"added\": {}}]', 2, 1),
(15, '2022-04-27 16:28:40.346523', '5', 'veri', 1, '[{\"added\": {}}]', 1, 1),
(16, '2022-04-27 16:30:16.430772', '5', 'Veri madenciliği', 1, '[{\"added\": {}}]', 2, 1),
(17, '2022-04-27 17:27:52.554968', '1', 'python', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 2, 1),
(18, '2022-04-27 17:30:16.411089', '6', 'Veritabanı', 1, '[{\"added\": {}}]', 2, 1),
(19, '2022-04-27 17:31:26.602697', '7', 'Laravel', 1, '[{\"added\": {}}]', 2, 1),
(20, '2022-04-27 17:31:44.010154', '6', 'Veritabanı', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 2, 1),
(21, '2022-04-27 17:49:55.739123', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'blog', 'category'),
(2, 'blog', 'blog'),
(3, 'admin', 'logentry'),
(4, 'auth', 'permission'),
(5, 'auth', 'group'),
(6, 'auth', 'user'),
(7, 'contenttypes', 'contenttype'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-26 14:09:54.779566'),
(2, 'auth', '0001_initial', '2022-04-26 14:09:55.335939'),
(3, 'admin', '0001_initial', '2022-04-26 14:09:55.517602'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-26 14:09:55.539924'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-26 14:09:55.551300'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-26 14:09:55.630562'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-26 14:09:55.714227'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-26 14:09:55.822457'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-26 14:09:55.831401'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-26 14:09:55.900417'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-26 14:09:55.904398'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-26 14:09:55.919010'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-26 14:09:56.002567'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-26 14:09:56.059280'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-26 14:09:56.145484'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-26 14:09:56.159541'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-26 14:09:56.211777'),
(18, 'blog', '0001_initial', '2022-04-26 14:09:56.310419'),
(19, 'sessions', '0001_initial', '2022-04-26 14:09:56.353662'),
(20, 'blog', '0002_blog_categories', '2022-04-26 14:11:56.281384');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_turkish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('p0sxrlqo8atyjjer837pgdmayyx9vegs', '.eJxVjDsOwjAQBe_iGlnY8ZeSPmew1t5dHECOFCcV4u4QKQW0b2beSyTY1pq2TkuaUFyEEqffLUN5UNsB3qHdZlnmti5TlrsiD9rlOCM9r4f7d1Ch128dtTZcIiBmwOBJKzdYUoCMKngbz8SE2qDJGJ1yZghDxFKYvWUFkcX7AwPIONo:1njkJE:d64AaRfVKMfdEpD2RV0xu0BEmO5lc3X6GdDbC9aPeRA', '2022-05-11 16:14:32.742798');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
