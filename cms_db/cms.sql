-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 08:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `user_id`, `cat_title`) VALUES
(1, 56, 'java'),
(3, 0, 'c language'),
(5, 0, 'php');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(45, 20, 'Daksh', 'dakshjoshi1355@gmail.com', 'ewfgyuwegfiugweoi', 'approved', '2024-03-01'),
(46, 20, 'Daksh', 'dakshjoshi1355@gmail.com', 'efergtwhryhj', 'unapproved', '2024-03-01'),
(47, 21, 'rico', 'rio@gmail.com', 'qfrg', 'approved', '2024-03-01'),
(48, 20, 'Rico', 'rico@gmail.com', 'foihgfigbe', 'unapproved', '2024-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(1, 82, 2),
(6, 82, 3),
(7, 82, 7),
(8, 82, 20);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_counts` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `user_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_counts`, `likes`) VALUES
(20, 1, 56, 'Javascript Learning ', '', 'Daksh', '2024-02-29', 'image_5.jpg', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, magna ac aliquet hendrerit, felis dolor posuere nisl, sit amet commodo nibh quam id tortor. Nulla facilisi. Etiam eu magna ligula. Nullam nec dui vitae tortor pulvinar ultrices. Duis ac commodo justo, ultricies vulputate odio. Integer hendrerit purus nec dolor tincidunt commodo. Sed ac nisi quis arcu pulvinar euismod. Ut vitae metus diam. Aliquam vitae vehicula nulla, vel finibus nunc. Nullam dignissim elit sit amet dui venenatis placerat. Ut iaculis gravida ipsum eu varius. Ut dictum nisl nisi, pulvinar faucibus dui ornare sit amet. Vivamus porta facilisis purus, vel mattis diam sodales eu. Nunc augue diam, consequat quis nibh ut, sodales hendrerit neque. Donec elementum ex id venenatis vulputate.</span><br></p>', 'javascript', 0, 'published', 38, 1),
(21, 5, 56, 'Larvel', '', 'Daksh', '2024-02-29', 'laravel.jpg', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, magna ac aliquet hendrerit, felis dolor posuere nisl, sit amet commodo nibh quam id tortor. Nulla facilisi. Etiam eu magna ligula. Nullam nec dui vitae tortor pulvinar ultrices. Duis ac commodo justo, ultricies vulputate odio. Integer hendrerit purus nec dolor tincidunt commodo. Sed ac nisi quis arcu pulvinar euismod. Ut vitae metus diam. Aliquam vitae vehicula nulla, vel finibus nunc. Nullam dignissim elit sit amet dui venenatis placerat. Ut iaculis gravida ipsum eu varius. Ut dictum nisl nisi, pulvinar faucibus dui ornare sit amet. Vivamus porta facilisis purus, vel mattis diam sodales eu. Nunc augue diam, consequat quis nibh ut, sodales hendrerit neque. Donec elementum ex id venenatis vulputate.</span><br></p>', 'php', 0, 'published', 9, 0),
(22, 3, 56, 'C Programming', '', 'Daksh', '2024-02-29', 'C_Programming_Language.jpg', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, magna ac aliquet hendrerit, felis dolor posuere nisl, sit amet commodo nibh quam id tortor. Nulla facilisi. Etiam eu magna ligula. Nullam nec dui vitae tortor pulvinar ultrices. Duis ac commodo justo, ultricies vulputate odio. Integer hendrerit purus nec dolor tincidunt commodo. Sed ac nisi quis arcu pulvinar euismod. Ut vitae metus diam. Aliquam vitae vehicula nulla, vel finibus nunc. Nullam dignissim elit sit amet dui venenatis placerat. Ut iaculis gravida ipsum eu varius. Ut dictum nisl nisi, pulvinar faucibus dui ornare sit amet. Vivamus porta facilisis purus, vel mattis diam sodales eu. Nunc augue diam, consequat quis nibh ut, sodales hendrerit neque. Donec elementum ex id venenatis vulputate.</span><br></p>', 'c Language', 0, 'published', 21, 0),
(24, 5, 61, 'PHP OOP', '', 'Rico', '2024-02-29', 'phpoop.jpg', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, magna ac aliquet hendrerit, felis dolor posuere nisl, sit amet commodo nibh quam id tortor. Nulla facilisi. Etiam eu magna ligula. Nullam nec dui vitae tortor pulvinar ultrices. Duis ac commodo justo, ultricies vulputate odio. Integer hendrerit purus nec dolor tincidunt commodo. Sed ac nisi quis arcu pulvinar euismod. Ut vitae metus diam. Aliquam vitae vehicula nulla, vel finibus nunc. Nullam dignissim elit sit amet dui venenatis placerat. Ut iaculis gravida ipsum eu varius. Ut dictum nisl nisi, pulvinar faucibus dui ornare sit amet. Vivamus porta facilisis purus, vel mattis diam sodales eu. Nunc augue diam, consequat quis nibh ut, sodales hendrerit neque. Donec elementum ex id venenatis vulputate.</span><br></p>', 'php', 0, 'published', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10&iusesomeceazystrings22',
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(56, 'Daksh', '$2y$12$ucqfZ2jxp7jeBu8LZ8vNmeohLem7eUIxVQBbNYGP0ZE7zauSBePIy', '', '', 'dakshjoshi1355@gmail.com', '', 'admin', '$2y$10&iusesomeceazystrings22', '2c65be8caa87ccd3f41ef354ca8a3d725c562330f9139ebb68af139871d5c4b5b5cbe8dc4051af79bab81d4cc56957a54882'),
(61, 'Rico', '$2y$12$nNz/3f5pjNyaPi1VIvLmuOUaSQOGH3lYK6mdcc4.0rB28FvdeTSe.', '', '', 'daksh2@gmail.com', '', 'subscriber', '$2y$10&iusesomeceazystrings22', 'a8c68ea33a37d42d865134daea7b794af21e9fdeb603f48a04c20e1a84fc03233c2199b286e439eb2ae6e0bfac1e8b7905e7'),
(86, 'abcde', '$2y$12$NkmJCvMAgJ/VHPCaWr.35eqWee41Q5qIQAsLYh3oMTde8Xj7GZiOG', '', '', 'abc@gmail.com', '', 'subscriber', '$2y$10&iusesomeceazystrings22', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'cumn5k4knbhid5god1d7o976bs', 1707241035),
(2, '31onncgnb417ma6jur3akcq84b', 1707325824),
(3, 'l9unneptssgovv3emakt1t3rea', 1707319443),
(4, 'r5peljh4be416vskd5pkl124v3', 1707321292),
(5, '0ec9er8uf5h7oo7n0qn8gf8s0e', 1707383594),
(6, '06snon56oudol6ve9l60ckr0pj', 1707415889),
(7, 'gsa09naqa13rtrb9tt7r57gicr', 1707496420),
(8, 'r1ustjk00sobfgg51psl3fnhp5', 1707585972),
(9, '1d7qt2o1u72brpgegsj8auh120', 1707730631),
(10, 'vcsjn03i11aj9k34gvkfb9nnop', 1707755405),
(11, 'hbirugkok99tf45r8skmms5ggr', 1707846115),
(12, '9r05vgfvrqlm3plllke4igkmi6', 1707988934),
(13, 'sda20j78br5lu3srodasbckqof', 1708019396),
(14, '75re9m7e41r0gulhsgf7cp5a27', 1708076640),
(15, 'qceumb1ejitlhjfe0o3kfbkcsc', 1708090903),
(16, 'rhnv97ldh89a26de2jqqb09m5r', 1708101910),
(17, 'm3lav62e6truvu8r4o94ullbsf', 1708159723),
(18, 'q05fpp4bhvigb6buh8k7r05394', 1708173213),
(19, 'a1a501861tqn4g3q73rq180k44', 1708447361),
(20, 'lcu81abonerfbmmkiqk015u51s', 1708447400),
(21, '5pnjf8r094uv8c4gmkj5dvdd33', 1708599172),
(22, 'okf00ngj0jpju634qi5c4b0llb', 1708601111),
(23, 'dd8gsktu2sifnb9v1s8pidgase', 1708618984),
(24, 'org9bbdntq2lg7tjalstsjk3qo', 1708704831),
(25, 'i0sbr2rfq2o5f31f383qutr521', 1708772178),
(26, 'pegri2ot3j7q8h7400n94a3nn8', 1708782090),
(27, 'jk4glme8hd69nrkr9n0d9jtdfk', 1709047524),
(28, '', 1709311975);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
