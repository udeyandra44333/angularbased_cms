-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2016 at 03:11 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puj`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_page`
--

CREATE TABLE `about_page` (
  `id` int(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `quoted_text` text NOT NULL,
  `abt_description` text NOT NULL,
  `collection` varchar(100) NOT NULL,
  `oexhibition` varchar(100) NOT NULL,
  `paintings` varchar(100) NOT NULL,
  `ofexhibition` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_page`
--

INSERT INTO `about_page` (`id`, `profile_image`, `quoted_text`, `abt_description`, `collection`, `oexhibition`, `paintings`, `ofexhibition`, `type`, `size`) VALUES
(1, '63927-item4.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'rwerwrw', 'wrwer', ' werwer', 'werwer', 'image/jpeg', 69),
(2, '87931-item5.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'asdf', 'sfsdfsf', ' asdas', 'asdasd', 'image/jpeg', 101),
(3, '72462-item3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'tyytyr', 'gfgfgf', ' ghy', 'fghgh', 'image/jpeg', 76);

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `id` int(10) NOT NULL,
  `blogimage` varchar(100) NOT NULL,
  `imagetitle` varchar(100) NOT NULL,
  `date_data` varchar(100) NOT NULL,
  `blogdesciption` text NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`id`, `blogimage`, `imagetitle`, `date_data`, `blogdesciption`, `type`, `size`) VALUES
(1, '71353-item1.jpg', 'sdsdsd', '2016-10-05', 'sdafs gdfsdfsg dgfjsdgfjggudfs sdfj fgsfg hjgfhjsdghjgsf jgadghjad89374/*/*234234/*234*/234', 'image/jpeg', 112),
(2, '31294-item7.jpg', 'asdasd', '2016-10-19', 'adf sdf grty nvvnbvbcvgyugf sshfsdfbsdf vfvsdfyu  ydfjhsdfhg vhjdfsgdfgjbfj dgfhjgfhjsdgh hjgfhjdgfh', 'image/jpeg', 75),
(3, '44445-product6.jpg', 'dadasdsdasdasd', '2016-10-28', 'sdf  vwverr wervwer ewv vrv hwveghv  vgywevfrg wevghwv evwerhj', 'image/jpeg', 86),
(4, '59509-product1.jpg', 'sdsdsd', '2016-10-26', 'sdfsdfsdfsdf', 'image/jpeg', 17),
(5, '69688-item4.jpg', 'asdasdasdasd240', '2016-10-28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'image/jpeg', 69);

-- --------------------------------------------------------

--
-- Table structure for table `homepagegallery`
--

CREATE TABLE `homepagegallery` (
  `id` int(10) NOT NULL,
  `gallerythumb` varchar(100) NOT NULL,
  `galleryImage` varchar(100) NOT NULL,
  `paintingType` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepagegallery`
--

INSERT INTO `homepagegallery` (`id`, `gallerythumb`, `galleryImage`, `paintingType`, `type`, `size`) VALUES
(1, '28242-avatars.png', '28242-avatars.png', 'Watercolor', '', 0),
(2, '59234-slider-img-1.jpg', '59234-slider-img-1.jpg', 'Watercolor', 'image/jpeg', 518),
(3, '20456-slider-img-3.jpg', '20456-slider-img-3.jpg', 'Watercolor', 'image/jpeg', 304);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_page`
--
ALTER TABLE `about_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepagegallery`
--
ALTER TABLE `homepagegallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_page`
--
ALTER TABLE `about_page`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `homepagegallery`
--
ALTER TABLE `homepagegallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
