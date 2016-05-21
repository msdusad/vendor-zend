-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2016 at 12:14 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zendframework`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=156 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `title`, `artist`) VALUES
(1, 'Fund and Joy S', 'Mahender'),
(2, 'Life Goes', 'Ajay'),
(3, 'Drinking and joying', 'Gindal'),
(4, 'Study and FAmily', 'Bali'),
(5, 'Playing Cards & Mathematician', 'Chobe'),
(6, 'The Next Day (Deluxe Version)', 'David Bowie'),
(7, 'Bad Blood', 'Bastille'),
(8, 'Unorthodox Jukebox', 'Bruno Mars'),
(9, 'Our Version of Events (Special Edition)', 'Emeli Sandé'),
(10, 'What About Now (Deluxe Version)', 'Bon Jovi'),
(11, 'The 20/20 Experience (Deluxe Version)', 'Justin Timberlake'),
(12, 'Bad Blood (The Extended Cut)', 'Bastille'),
(13, 'The Truth About Love', 'P!nk'),
(14, 'Sound City - Real to Reel', 'Sound City - Real to Reel'),
(15, 'Jake Bugg', 'Jake Bugg'),
(16, 'The Trevor Nelson Collection', 'Various Artists'),
(17, 'The Next Day', 'David Bowie'),
(18, 'Babel', 'Mumford & Sons'),
(19, 'The Lumineers', 'The Lumineers'),
(20, 'Get Ur Freak On - R&B Anthems', 'Various Artists'),
(21, 'Music For Cars EP', 'The 1975'),
(22, 'Saturday Night Club Classics - Ministry of Sound', 'Various Artists'),
(23, 'Exile (Deluxe)', 'Hurts'),
(24, 'Mixmag - The Greatest Dance Tracks of All Time', 'Various Artists'),
(25, 'Every Kingdom', 'Ben Howard'),
(26, 'Graffiti On the Train', 'Stereophonics'),
(27, '#3', 'The Script'),
(28, 'Tales from Terra Firma', 'Stornoway'),
(29, 'Hunky Dory (Remastered)', 'David Bowie'),
(30, 'Let It Be Known (Live)', 'Worship Central'),
(31, 'Halcyon', 'Ellie Goulding'),
(32, 'Dermot O''Leary Presents the Saturday Sessions 2013', 'Various Artists'),
(33, 'Graffiti On the Train (Deluxe Version)', 'Stereophonics'),
(34, 'Girl Who Got Away (Deluxe)', 'Dido'),
(35, 'Exile', 'Hurts'),
(36, 'Doo-Wops & Hooligans', 'Bruno Mars'),
(37, '18 Months', 'Calvin Harris'),
(38, 'Right Place Right Time', 'Olly Murs'),
(39, 'An Awesome Wave', 'Alt-J (?)'),
(40, 'Take Me Home', 'One Direction'),
(41, 'Pop Stars', 'Various Artists'),
(42, 'Now That''s What I Call Music! 83', 'Various Artists'),
(43, 'Pale Green Ghosts', 'John Grant'),
(44, 'Fall to Grace', 'Paloma Faith'),
(45, 'Sing To the Moon (Deluxe)', 'Laura Mvula'),
(46, 'Need U (100%) [feat. A*M*E] - EP', 'Duke Dumont'),
(47, 'Cardboard Castles', 'Watsky'),
(48, 'Blondie: Greatest Hits', 'Blondie'),
(49, 'Holy Fire', 'Foals'),
(50, 'Overexposed', 'Maroon 5'),
(51, 'Pompeii (Remixes) - EP', 'Bastille'),
(52, 'Hear Me - EP', 'Imagine Dragons'),
(53, '100 Hits: 80s Classics', 'Various Artists'),
(54, 'Les Misérables (Highlights From the Motion Picture Soundtrack)', 'Various Artists'),
(55, 'Sigh No More', 'Mumford & Sons'),
(56, 'Channel ORANGE', 'Frank Ocean'),
(57, 'What About Now', 'Bon Jovi'),
(58, 'BRIT Awards 2013', 'Various Artists'),
(59, 'Red', 'Taylor Swift'),
(60, 'Fleetwood Mac: Greatest Hits', 'Fleetwood Mac'),
(61, 'Nothing But the Beat Ultimate', 'David Guetta'),
(62, 'Clubbers Guide 2013 (Mixed By Danny Howard) - Ministry of Sound', 'Various Artists'),
(63, 'Best of Bowie', 'David Bowie'),
(64, 'Sing To the Moon', 'Laura Mvula'),
(65, '21', 'ADELE'),
(66, 'My Head Is an Animal', 'Of Monsters and Men'),
(67, 'Unapologetic', 'Rihanna'),
(68, 'BBC Radio 1''s Live Lounge - 2012', 'Various Artists'),
(69, 'I Could Be the One (Avicii vs. Nicky Romero)', 'Avicii & Nicky Romero'),
(70, 'A Grand Don''t Come for Free', 'The Streets'),
(71, 'Two Lanes of Freedom', 'Tim McGraw'),
(72, 'Foo Fighters: Greatest Hits', 'Foo Fighters'),
(73, 'Now That''s What I Call Running!', 'Various Artists'),
(74, 'Until Now', 'Swedish House Mafia'),
(75, 'Coexist', 'The xx'),
(76, 'Five: Greatest Hits', 'Five'),
(77, 'People, Hell & Angels', 'Jimi Hendrix'),
(78, 'Opposites (Deluxe)', 'Biffy Clyro'),
(79, 'The Sound of the Smiths', 'The Smiths'),
(80, 'What About Us - EP', 'The Saturdays'),
(81, 'Rumours', 'Fleetwood Mac'),
(82, 'The Big Reunion', 'Various Artists'),
(83, 'Anthems 90s - Ministry of Sound', 'Various Artists'),
(84, 'Come of Age', 'The Vaccines'),
(85, 'Boomerang (Remixes) - EP', 'Nicole Scherzinger'),
(86, 'Legend (Bonus Track Version)', 'Bob Marley'),
(87, 'All That Echoes', 'Josh Groban'),
(88, 'Best of Blue', 'Blue'),
(89, '+', 'Ed Sheeran'),
(90, 'In Case You Didn''t Know (Deluxe Edition)', 'Olly Murs'),
(91, 'The Heist (Deluxe Edition)', 'Macklemore & Ryan Lewis'),
(92, 'Defected Presents Most Rated Miami 2013', 'Various Artists'),
(93, 'Real EP', 'Gorgon City'),
(94, 'Babel (Deluxe Version)', 'Mumford & Sons'),
(95, 'The Music of Nashville: Season 1, Vol. 1 (Original Soundtrack)', 'Various Artists'),
(96, 'The Twilight Saga: Breaking Dawn, Pt. 2 (Original Motion Picture Soundtrack)', 'Various Artists'),
(97, 'Mum - The Ultimate Mothers Day Collection', 'Various Artists'),
(98, 'Up All Night', 'One Direction'),
(99, 'Bon Jovi Greatest Hits', 'Bon Jovi'),
(100, 'A', 'Agnetha Fältskog'),
(101, 'Some Nights', 'Fun.'),
(102, 'Believe Acoustic', 'Justin Bieber'),
(103, 'Amok', 'Atoms for Peace'),
(104, 'Justified', 'Justin Timberlake'),
(105, 'All the Little Lights', 'Passenger'),
(106, 'The High Hopes EP', 'Kodaline'),
(107, 'Born to Die', 'Lana Del Rey'),
(108, 'Watch the Throne (Deluxe Version)', 'JAY Z & Kanye West'),
(109, 'Opposites', 'Biffy Clyro'),
(110, 'Return of the 90s', 'Various Artists'),
(111, 'Please Don''t Say You Love Me - EP', 'Gabrielle Aplin'),
(112, '100 Hits - Driving Rock', 'Various Artists'),
(113, 'Experience Hendrix - The Best of Jimi Hendrix', 'Jimi Hendrix'),
(114, 'The Workout Mix 2013', 'Various Artists'),
(115, 'Sex', 'The 1975'),
(116, 'No More Idols', 'Chase & Status'),
(117, 'Unapologetic (Deluxe Version)', 'Rihanna'),
(118, 'Battle Born', 'The Killers'),
(119, 'Right Place Right Time (Deluxe Edition)', 'Olly Murs'),
(120, 'LONG.LIVE.A$AP (Deluxe Version)', 'A$AP Rocky'),
(121, 'Cooking Songs', 'Various Artists'),
(122, 'Forever - EP', 'Haim'),
(123, 'Is Your Love Big Enough?', 'Lianne La Havas'),
(124, 'To Be Loved', 'Michael Bublé'),
(125, 'If You Leave', 'Daughter'),
(126, 'xx', 'The xx'),
(127, 'Curtain Call', 'Eminem'),
(128, 'good kid, m.A.A.d city (Deluxe)', 'Kendrick Lamar'),
(129, 'The Face - EP', 'Disclosure'),
(130, '180', 'Palma Violets'),
(131, 'Paradise', 'Cody Simpson'),
(132, '+ (Deluxe Version)', 'Ed Sheeran'),
(133, 'Crazy Love (Hollywood Edition)', 'Michael Bublé'),
(134, 'Bon Jovi Greatest Hits - The Ultimate Collection', 'Bon Jovi'),
(135, 'Ora', 'Rita Ora'),
(136, 'Spabby', 'g33k'),
(137, 'Annie Mac Presents 2012', 'Various Artists'),
(138, 'The Platinum Collection', 'David Bowie'),
(139, 'Ready or Not (Remixes) - EP', 'Bridgit Mendler'),
(140, 'Girl Who Got Away', 'Dido'),
(141, 'Now That''s What I Call Disney', 'Various Artists'),
(142, 'Facedown - EP', 'The 1975'),
(143, 'The Kodaline - EP', 'Kodaline'),
(144, '100 Hits: Super 70s', 'Various Artists'),
(145, 'Goggles - EP', 'Fred V & Grafix'),
(146, 'Only Revolutions (Deluxe Version)', 'Biffy Clyro'),
(147, 'California 37', 'Train'),
(148, 'Every Kingdom (Deluxe Edition)', 'Ben Howard'),
(149, 'Motown Anthems', 'Various Artists'),
(150, 'ANNA', 'Courteeners'),
(151, 'The Messenger', 'Johnny Marr'),
(152, 'Searching for Sugar Man', 'Rodriguez'),
(153, 'Devotion', 'Jessie Ware'),
(154, 'Unorthodox Jukebox', 'Bruno Mars'),
(155, 'Call the Midwife (Music From the TV Series)', 'Various Artists');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `first_name`, `last_name`, `age`) VALUES
(1, 'Maahi', 'Dusad', 10),
(2, 'Gindal', 'Dusad', 20),
(3, 'A', 'SS', 33),
(4, 'B', 'SS', 45),
(5, 'C', 'SS', 0),
(6, 'D', 'SS', 67),
(7, 'E', 'SS', 0),
(8, 'F', 'SS', 0),
(9, 'fdgfdg', 'fdgf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mahender`
--

CREATE TABLE IF NOT EXISTS `mahender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mscheckf` varchar(11) NOT NULL,
  `mschecks` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mahender`
--

INSERT INTO `mahender` (`id`, `mscheckf`, `mschecks`) VALUES
(1, '0', '0'),
(2, 'a', 'a'),
(3, 'a', 'a'),
(4, 'd', 'f'),
(5, 'jj', 'jj'),
(6, 'kk', 'kk'),
(7, 'nn', 'nn'),
(8, 'sssss', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
