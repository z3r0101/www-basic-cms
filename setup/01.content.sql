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
(1, '2020-06-21/lorem-ipsum-dolor-sit-amet', 'uploads/content/1/image/sample-pic-01.jpg', 'Lorem ipsum dolor sit amet', '2020-06-21', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus ex libero, eleifend elementum sem ullamcorper pellentesque. Phasellus tempor nisl vitae eleifend ullamcorper. Aliquam commodo, erat maximus consectetur porttitor, metus nulla tempor tellus, non feugiat nibh mauris sed justo. Ut non turpis urna. Phasellus varius blandit justo, quis efficitur mi lobortis id. Nunc lorem odio, pellentesque eu elit eu, mollis auctor urna. Vestibulum vestibulum et ipsum vitae rhoncus. Phasellus sit amet sapien ipsum. Nunc fringilla molestie rhoncus. Praesent pulvinar maximus ornare. Nulla vel eros vel est fringilla aliquam egestas malesuada nulla. Mauris pellentesque porta nunc, ultricies maximus libero facilisis ac. Sed eu neque enim. Suspendisse lectus libero, dictum vitae justo quis, pulvinar varius magna.</p>\n<p>In non placerat elit. Praesent fringilla, nisl non fermentum maximus, felis nunc efficitur purus, sed maximus urna tortor rutrum tellus. Fusce eget urna felis. Praesent bibendum turpis id lorem aliquet dictum. Vestibulum ac vehicula felis, ac luctus felis. Nunc vehicula quis diam quis fringilla. Vestibulum at finibus justo, nec lacinia nibh. In et diam eu mi posuere imperdiet in sit amet risus.</p>\n<p>Ut blandit varius vehicula. Nulla iaculis id arcu eu volutpat. Maecenas eu sapien id orci consequat pretium. Donec nec ex ut felis ullamcorper egestas. Nunc euismod tempor nunc, sed pharetra neque convallis non. Morbi pellentesque aliquam tortor, vel gravida libero faucibus quis. Nunc euismod turpis nec elementum bibendum. Nam feugiat gravida odio, sed bibendum turpis facilisis non. Phasellus consequat mauris nisl, vel ultricies nibh sagittis vitae. Sed interdum nunc sed enim lacinia, eget mattis nunc auctor. Mauris sollicitudin placerat congue. Sed facilisis egestas risus id viverra. Curabitur ac porta felis, sed iaculis leo. Vivamus hendrerit mollis dictum. Donec imperdiet vulputate malesuada.</p>\n<p>Integer magna ex, eleifend in odio vehicula, rutrum posuere nulla. Nulla non finibus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce feugiat posuere porta. Quisque nec dictum libero. Cras sit amet neque consectetur, mollis ipsum finibus, cursus augue. Sed dictum porta est non molestie. In varius commodo lectus, non efficitur diam blandit ut.</p>\n<p>Aenean sagittis turpis eu tincidunt dignissim. Mauris dignissim turpis vel nulla auctor, a feugiat urna mattis. Donec justo risus, facilisis quis fringilla non, facilisis id massa. Aenean erat augue, condimentum at est vel, ornare varius eros. Sed vitae tortor metus. Mauris eu mauris tortor. Integer at condimentum augue. Phasellus massa ipsum, feugiat in urna id, consequat suscipit odio. Phasellus finibus, enim faucibus suscipit facilisis, dolor metus imperdiet risus, eget accumsan nunc orci id urna. Nam viverra porta hendrerit. Quisque augue lacus, euismod sit amet rhoncus a, consectetur scelerisque nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eu blandit urna. Nunc augue risus, tempus sed dictum at, hendrerit vehicula enim. Cras gravida, dolor non pharetra feugiat, lorem mauris malesuada ex, eget vestibulum erat lectus sed tellus. Mauris scelerisque quam ex, ut ornare metus volutpat vel.</p>', 0, '', NULL, 1, 'Developer Master', '2020-06-21 22:23:22', 'null'),
(2, '2020-06-21/hipster-ipsum', 'uploads/content/2/image/sample-pic-02.jpg', 'Hipster Ipsum', '2020-06-21', '<div class=\"anyipsum-output\">\n<p>I\'m baby narwhal taiyaki leggings succulents vaporware cornhole glossier skateboard godard. Helvetica air plant live-edge pork belly wayfarers tattooed. Aesthetic chartreuse coloring book XOXO fingerstache venmo vinyl skateboard +1 beard. Kale chips seitan kinfolk brooklyn synth cloud bread flexitarian pour-over next level. Put a bird on it cornhole locavore yr retro snackwave whatever messenger bag. Drinking vinegar 3 wolf moon skateboard hashtag ennui tote bag wayfarers cronut copper mug meggings subway tile. Live-edge knausgaard venmo XOXO schlitz skateboard glossier hell of godard occupy af.</p>\n<p>Umami bicycle rights cliche fingerstache iPhone yr poutine readymade flexitarian enamel pin tofu irony viral pok pok. Jianbing street art church-key irony air plant hammock. Keytar retro coloring book iceland readymade you probably haven\'t heard of them locavore, photo booth kitsch selfies blog. Cliche etsy typewriter, hot chicken selvage lumbersexual palo santo letterpress humblebrag normcore kale chips ennui wolf.</p>\n<p>Asymmetrical fam cornhole, lyft polaroid chambray affogato pok pok banjo tacos whatever la croix. Hoodie fanny pack knausgaard, neutra fashion axe salvia keytar craft beer lomo pitchfork. Thundercats photo booth mumblecore, banh mi man bun leggings chillwave hammock typewriter. Tilde humblebrag mumblecore farm-to-table biodiesel man braid distillery coloring book craft beer lomo. 3 wolf moon listicle small batch, fanny pack jianbing sustainable polaroid authentic. Shaman actually lumbersexual, jianbing brunch glossier activated charcoal bicycle rights. IPhone craft beer vape, sustainable hell of authentic affogato lomo godard DIY air plant skateboard wolf.</p>\n<p>Gochujang venmo adaptogen offal. Poke ugh artisan, man braid single-origin coffee locavore VHS. Artisan disrupt la croix meditation. Tacos vegan synth, 90\'s bitters hammock humblebrag woke trust fund raw denim thundercats pop-up cloud bread.</p>\n<p>Lyft twee raclette readymade iPhone selvage whatever edison bulb tbh street art normcore freegan quinoa. Gastropub meh jean shorts unicorn literally waistcoat poke craft beer post-ironic kombucha. Flannel fam tumblr, ethical shabby chic readymade cronut stumptown hella slow-carb PBR&amp;B. Brunch la croix portland chicharrones butcher raw denim vexillologist meh photo booth sustainable meditation bushwick put a bird on it pinterest readymade. Chillwave master cleanse normcore godard ramps. Man bun mixtape slow-carb offal ennui chartreuse poutine, brunch art party paleo seitan.</p>\n</div>', 1, 'Developer Master', '2020-06-21 22:14:44', 1, 'Developer Master', '2020-06-21 22:23:18', '{\"data_history\":[{\"cms_CreatedById\":\"1\",\"cms_CreatedByName\":\"Developer Master\",\"cms_CreatedDate\":\"2020-06-21 22:14:44\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-21 22:14:44\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-21 22:19:25\"},{\"cms_CreatedById\":0,\"cms_CreatedByName\":\"\",\"cms_CreatedDate\":\"\",\"cms_ModifiedById\":\"1\",\"cms_ModifiedByName\":\"Developer Master\",\"cms_ModifiedDate\":\"2020-06-21 22:23:18\"}]}');

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
