-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2020 at 04:52 PM
-- Server version: 10.3.17-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_date` date DEFAULT NULL,
  `content_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cms_CreatedById` int(11) NOT NULL DEFAULT 0,
  `cms_CreatedByName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cms_CreatedDate` datetime DEFAULT NULL,
  `cms_ModifiedById` int(11) NOT NULL DEFAULT 0,
  `cms_ModifiedByName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cms_ModifiedDate` datetime DEFAULT NULL,
  `cms_Details` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_slug`, `content_image`, `content_title`, `content_date`, `content_description`, `cms_CreatedById`, `cms_CreatedByName`, `cms_CreatedDate`, `cms_ModifiedById`, `cms_ModifiedByName`, `cms_ModifiedDate`, `cms_Details`) VALUES
(1, '2020-06-21/hipster-ipsum', 'uploads/content/2/image/sample-pic-02.jpg', 'Hipster Ipsum', '2020-06-21', '<div class=\"anyipsum-output\">\n<p>I\'m baby narwhal taiyaki leggings succulents vaporware cornhole glossier skateboard godard. Helvetica air plant live-edge pork belly wayfarers tattooed. Aesthetic chartreuse coloring book XOXO fingerstache venmo vinyl skateboard +1 beard. Kale chips seitan kinfolk brooklyn synth cloud bread flexitarian pour-over next level. Put a bird on it cornhole locavore yr retro snackwave whatever messenger bag. Drinking vinegar 3 wolf moon skateboard hashtag ennui tote bag wayfarers cronut copper mug meggings subway tile. Live-edge knausgaard venmo XOXO schlitz skateboard glossier hell of godard occupy af.</p>\n<p>Umami bicycle rights cliche fingerstache iPhone yr poutine readymade flexitarian enamel pin tofu irony viral pok pok. Jianbing street art church-key irony air plant hammock. Keytar retro coloring book iceland readymade you probably haven\'t heard of them locavore, photo booth kitsch selfies blog. Cliche etsy typewriter, hot chicken selvage lumbersexual palo santo letterpress humblebrag normcore kale chips ennui wolf.</p>\n<p>Asymmetrical fam cornhole, lyft polaroid chambray affogato pok pok banjo tacos whatever la croix. Hoodie fanny pack knausgaard, neutra fashion axe salvia keytar craft beer lomo pitchfork. Thundercats photo booth mumblecore, banh mi man bun leggings chillwave hammock typewriter. Tilde humblebrag mumblecore farm-to-table biodiesel man braid distillery coloring book craft beer lomo. 3 wolf moon listicle small batch, fanny pack jianbing sustainable polaroid authentic. Shaman actually lumbersexual, jianbing brunch glossier activated charcoal bicycle rights. IPhone craft beer vape, sustainable hell of authentic affogato lomo godard DIY air plant skateboard wolf.</p>\n<p>Gochujang venmo adaptogen offal. Poke ugh artisan, man braid single-origin coffee locavore VHS. Artisan disrupt la croix meditation. Tacos vegan synth, 90\'s bitters hammock humblebrag woke trust fund raw denim thundercats pop-up cloud bread.</p>\n<p>Lyft twee raclette readymade iPhone selvage whatever edison bulb tbh street art normcore freegan quinoa. Gastropub meh jean shorts unicorn literally waistcoat poke craft beer post-ironic kombucha. Flannel fam tumblr, ethical shabby chic readymade cronut stumptown hella slow-carb PBR&amp;B. Brunch la croix portland chicharrones butcher raw denim vexillologist meh photo booth sustainable meditation bushwick put a bird on it pinterest readymade. Chillwave master cleanse normcore godard ramps. Man bun mixtape slow-carb offal ennui chartreuse poutine, brunch art party paleo seitan.</p>\n</div>', 1, 'Developer Master', '2020-06-21 22:14:44', 1, 'Developer Master', '2020-06-21 22:23:18', '{\"data_history\":[{\"cms_CreatedById\":\"1\",\"cms_CreatedByName\":\"Developer Master\",\"cms_CreatedDate\":\"2020-06-21 22:14:44\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-21 22:14:44\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-21 22:19:25\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-21 22:23:18\"}]}'),
(2, '2020-06-22/developer-guide', '', 'Developer Guide', '2020-06-22', '<p><strong>z3r0101 Framework<br /></strong>An open-source application development framework for PHP</p>\n<p>Content Management System<br />URL: <a href=\"http://centos8s2:9000/cms\">http://centos8s2:9000/cms</a><br />Username: <a href=\"mailto:ryanzkizen@gmail.com\">ryanzkizen@gmail.com</a><br />Password: 1029384756</p>\n<p>Project Structure</p>\n<ul>\n<li>[application] (z3r0101 framework files) <em>*required</em></li>\n<li>[vendors] (Third-party libraries or functions) <em>*required</em></li>\n<li>[compiler] (Generated by Blade Templates) <em>*required</em>\n<ul>\n<li>[cms] <em>*required</em></li>\n</ul>\n</li>\n<li>[uploads] (CMS file upload directory storage)&nbsp; <em>*required</em>\n<ul>\n<li>[content] (Sample uploaded images)</li>\n<li>[temp] <em>*required</em></li>\n</ul>\n</li>\n<li>[www] (Dev project files directory) <em>*required</em>\n<ul>\n<li>[controllers] <em>*required</em>\n<ul>\n<li>[cms] <em>*required</em>\n<ul>\n<li>content.php (Sample file)</li>\n</ul>\n</li>\n</ul>\n</li>\n<li>[resources] <em>*required</em>\n<ul>\n<li>[css]</li>\n<li>[images]</li>\n<li>[js]</li>\n</ul>\n</li>\n<li>[views] <em>*required</em>\n<ul>\n<li>[cms] <em>*required</em>\n<ul>\n<li>[layout]</li>\n<li>content.index.list.xml (Sample file)</li>\n<li>content.index.post.xml (Sample file)</li>\n</ul>\n</li>\n<li>fe_content.php (Sample file)</li>\n<li>fe_index.php (Sample file)</li>\n</ul>\n</li>\n<li>config.cms.php (CMS configuration) <em>*required</em></li>\n<li>config.php (Website configuration) <em>*required</em></li>\n<li>routes.php (<span>Remap the URI handler</span>) <em>*required</em></li>\n</ul>\n</li>\n</ul>', 1, 'Developer Master', '2020-06-22 11:03:28', 1, 'Developer Master', '2020-06-22 11:42:55', '{\"data_history\":[{\"cms_CreatedById\":\"1\",\"cms_CreatedByName\":\"Developer Master\",\"cms_CreatedDate\":\"2020-06-22 11:03:28\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:03:28\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:04:24\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:06:17\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:08:04\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:13:11\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:34:15\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:40:37\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-22 11:42:55\"}]}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`CMS_Users_Id`);

--
-- Indexes for table `cms_users_login`
--
ALTER TABLE `cms_users_login`
  ADD PRIMARY KEY (`CMS_Users_Login_Id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `CMS_Users_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_users_login`
--
ALTER TABLE `cms_users_login`
  MODIFY `CMS_Users_Login_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
