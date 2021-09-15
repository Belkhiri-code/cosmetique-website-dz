-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 02:13 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmotec`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mot_passe` varchar(100) CHARACTER SET latin1 NOT NULL,
  `hash` varchar(100) CHARACTER SET latin1 NOT NULL,
  `active` tinyint(1) NOT NULL,
  `avatar` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `prenom`, `email`, `mot_passe`, `hash`, `active`, `avatar`, `date_ajout`) VALUES
(1, 'comfex', 'comfex', 'info@comfex.org', '12e6286f054634ccc9faa7b8a9f1bc65', '', 1, '1537710232.png', '2018-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `albumphotos`
--

CREATE TABLE `albumphotos` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albumphotos`
--

INSERT INTO `albumphotos` (`id`, `nom_fr`, `nom_ara`, `image`, `date_ajout`, `media_id`) VALUES
(8, 'album1', '', 'photo-1612000789.png', '2021-01-30', 0),
(9, 'album2', '', 'photo-1612000805.png', '2021-01-30', 0),
(16, 'album5', '', 'photo-1614763703.jpg', '2021-03-03', 0),
(15, 'album4', '', 'photo-1614763689.jpg', '2021-03-03', 0),
(14, 'album3', '', 'photo-1614763673.jpg', '2021-03-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `albumvideos`
--

CREATE TABLE `albumvideos` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apropos`
--

CREATE TABLE `apropos` (
  `id` int(11) NOT NULL,
  `titre_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titre_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resume_fr` text COLLATE utf8_unicode_ci NOT NULL,
  `resume_ara` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apropos`
--

INSERT INTO `apropos` (`id`, `titre_fr`, `titre_ara`, `resume_fr`, `resume_ara`, `image`) VALUES
(1, 'Notre vision', 'رؤيتنا', '<p><span style="font-size:18px"><strong>Le&nbsp;Lorem Ipsum&nbsp;est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</strong></span></p>\r\n', '<p style="text-align:right"><span style="font-size:12px">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</span></p>\r\n', '1614420565.jpg'),
(2, 'Notre histoire', 'قصتنا', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p style="text-align: right;">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n', '1614420600.jpg'),
(3, 'Ce que nous faisons?', 'ما نقوم به؟', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '<p>هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.</p>\r\n', '1614420625.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nom_ara` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fax` varchar(22) CHARACTER SET latin1 NOT NULL,
  `tel1` varchar(22) CHARACTER SET latin1 NOT NULL,
  `tel2` varchar(22) CHARACTER SET latin1 NOT NULL,
  `tel3` varchar(22) CHARACTER SET latin1 NOT NULL,
  `mob1` varchar(25) CHARACTER SET latin1 NOT NULL,
  `mob2` varchar(25) CHARACTER SET latin1 NOT NULL,
  `mob3` varchar(25) CHARACTER SET latin1 NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nom_fr`, `nom_ara`, `email`, `adresse_fr`, `adresse_ara`, `map`, `fax`, `tel1`, `tel2`, `tel3`, `mob1`, `mob2`, `mob3`, `date_ajout`) VALUES
(1, 'cosmotec', 'cosmotec', 'contact@cosmotec.com', 'Zone d''Activité Bordj Bou Arreridj 34000', 'Zone d''Activité Bordj Bou Arreridj 34000', '36.0725659,4.7732324', '+213 (0)21 00 00 00', '+213 (0)35 61 87 61', '', '', '+213 (0)555 00 00 00', '', '', '2021-01-25'),
(2, 'Direction générale ', 'Direction générale ', 'direction@cosmotec-dz.com', 'Zone d''Activité Bordj Bou Arreridj 34000', 'Zone d''Activité Bordj Bou Arreridj 34000', '36.0725659,4.7732324', '(+213) 00.00.00.00', '', '', '', '', '', '', '2021-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `destinataires`
--

CREATE TABLE `destinataires` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destinataires`
--

INSERT INTO `destinataires` (`id`, `nom_fr`, `nom_ara`, `email`, `date_ajout`) VALUES
(1, 'comfex', 'كومفكس', 'info@comfex.org', '2021-01-26'),
(2, 'direction', 'الادارة', 'direction@gmail.com', '2021-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `marques`
--

CREATE TABLE `marques` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(11) NOT NULL,
  `ref` varchar(60) CHARACTER SET latin1 NOT NULL,
  `ref_id` int(11) NOT NULL,
  `file` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `ref`, `ref_id`, `file`, `position`) VALUES
(1, 'Albumphoto', 8, '/img/uploads/albumphotos/2021/01/pic_2.png', 0),
(2, 'Albumphoto', 8, '/img/uploads/albumphotos/2021/01/pic_3.png', 0),
(3, 'Albumphoto', 8, '/img/uploads/albumphotos/2021/01/pic_5.png', 0),
(4, 'Albumphoto', 8, '/img/uploads/albumphotos/2021/01/pic_7.png', 0),
(5, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/01/pic_1.png', 0),
(6, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/01/pic_3-1.png', 0),
(9, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/01/pic_4.png', 0),
(12, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/03/pic_1.png', 0),
(13, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/03/pic_2.png', 0),
(14, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/03/pic_3.png', 0),
(15, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/03/pic_4.png', 0),
(16, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/03/pic_5.png', 0),
(17, 'Albumphoto', 9, '/img/uploads/albumphotos/2021/03/pic_7.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nom_ara` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description_fr` text COLLATE utf8_unicode_ci NOT NULL,
  `description_ara` text COLLATE utf8_unicode_ci NOT NULL,
  `utilisation_fr` text COLLATE utf8_unicode_ci NOT NULL,
  `utilisation_ara` text COLLATE utf8_unicode_ci NOT NULL,
  `ingredient_fr` text COLLATE utf8_unicode_ci NOT NULL,
  `ingredient_ara` text COLLATE utf8_unicode_ci NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `souscategorie_id` int(11) NOT NULL,
  `souscat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL,
  `titre_fr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titre_ara` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resume_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resume_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `date_ajout`, `titre_fr`, `titre_ara`, `resume_fr`, `resume_ara`, `lien`) VALUES
(1, '1611996498.jpg', '2021-01-30', '', '', '', '', ''),
(2, '1611996546.jpg', '2021-01-30', '', '', '', '', ''),
(3, '1611996552.jpg', '2021-01-30', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sociales`
--

CREATE TABLE `sociales` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET latin1 NOT NULL,
  `lien` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `color` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sociales`
--

INSERT INTO `sociales` (`id`, `nom`, `lien`, `image`, `color`) VALUES
(1, 'facebook', 'https://facebook.com', 'fab fa-facebook-f', '3b5998'),
(2, 'instagram', 'instagram.com', 'fab fa-instagram', 'bc2a8d'),
(7, 'youtube', 'www.youtube.com', 'fab fa-youtube', 'FF0000');

-- --------------------------------------------------------

--
-- Table structure for table `souscategories`
--

CREATE TABLE `souscategories` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagevideo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `albumvideos_id` int(11) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `nom`, `imagevideo`, `albumvideos_id`, `date_ajout`) VALUES
(11, '1592322283.mp4', '1592322283.jpg', 1, '2020-06-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albumphotos`
--
ALTER TABLE `albumphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albumvideos`
--
ALTER TABLE `albumvideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apropos`
--
ALTER TABLE `apropos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinataires`
--
ALTER TABLE `destinataires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociales`
--
ALTER TABLE `sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souscategories`
--
ALTER TABLE `souscategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `albumphotos`
--
ALTER TABLE `albumphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `albumvideos`
--
ALTER TABLE `albumvideos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `apropos`
--
ALTER TABLE `apropos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `destinataires`
--
ALTER TABLE `destinataires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `marques`
--
ALTER TABLE `marques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sociales`
--
ALTER TABLE `sociales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `souscategories`
--
ALTER TABLE `souscategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
