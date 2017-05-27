-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2017 at 05:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `janitri`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`ID` int(11) NOT NULL,
  `Heading` text NOT NULL,
  `Body` text NOT NULL,
  `ImageLink` text NOT NULL,
  `Link` text NOT NULL,
  `Catagory` set('Sports','Movies','Travel') NOT NULL,
  `Author` text NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`ID`, `Heading`, `Body`, `ImageLink`, `Link`, `Catagory`, `Author`, `Time`) VALUES
(14, 'Spinners, Liton take Abahani top', 'A round-up of the Dhaka Premier League matches that took place on May 27, 2017', 'http://www.espncricinfo.com/db/PICTURES/CMS/216200/216271.jpg', 'http://www.espncricinfo.com/bangladesh/content/story/1099714.html', 'Sports', 'ESPNcricinfo staff', '2017-05-27 15:15:49'),
(15, '''Not too keen about Pakistan tour'' - BCB president', 'The BCB President said that after Pakistan turned down the tour of Bangladesh for July 2017, Bangladesh''s High Performance and U-19 teams will not be touring Pakistan later this year', 'http://www.espncricinfo.com/db/PICTURES/CMS/194400/194437.3.jpg', 'http://www.espncricinfo.com/bangladesh/content/story/1099707.html', 'Sports', 'Mohammad Isam', '2017-05-27 15:15:49'),
(16, 'Stokes and Buttler power England to 330', 'Ben Stokes'' second ODI hundred lifted England out of trouble at the Ageas Bowl and allowed them to post another impressive total after being put in to bat for the second match running', 'http://www.espncricinfo.com/db/PICTURES/CMS/263500/263590.3.jpg', 'http://www.espncricinfo.com/england-v-south-africa-2017/content/story/1099630.html', 'Sports', 'The Report by Alan Gardner at the Ageas Bowl', '2017-05-27 15:15:49'),
(17, 'CA rebuffs MoU mediation, writes to players', 'Cricket Australia''s decision to rebuff the players'' calls for mediation to end the escalating pay dispute has been accompanied by another attempt to deal directly with some of the nation''s highest-profile players', 'http://a.espncdn.com/combiner/i?img=/media/motion/2017/0526/dm_170526_CA_videonew_20170526/dm_170526_CA_videonew_20170526.jpg?w=1244&h=700', 'http://www.espncricinfo.com/australia/content/story/1099621.html', 'Sports', 'Daniel Brettig', '2017-05-27 15:15:49'),
(18, 'Jayawardene to coach Khulna Titans', 'Mahela Jayawardene has effectively ended his playing career in Bangladesh after being signed for two seasons as head coach of BPL franchise Khulna Titans', 'http://www.espncricinfo.com/db/PICTURES/CMS/223200/223243.3.jpg', 'http://www.espncricinfo.com/bangladesh/content/story/1099620.html', 'Sports', 'ESPNcricinfo staff', '2017-05-27 15:15:49'),
(19, 'Mutreja hundred lifts Singapore into tie for first', 'A towering partnership sinks USA, Canada suffer a shock loss to Malaysia and Oman treat themselves to a massive run-rate boost', 'http://www.espncricinfo.com/db/PICTURES/CMS/263500/263566.3.jpg', 'http://www.espncricinfo.com/ci-icc/content/story/1099604.html', 'Sports', 'Peter Della Penna in Kampala', '2017-05-27 15:15:49'),
(20, 'Finch, Head star in Australians'' tense win', 'After weeks of pay talks with their board, there was some cheer on the field for the Australians as they warmed up for the Champions Trophy with a two-wicket win over Sri Lanka', 'http://a.espncdn.com/combiner/i?img=/media/motion/2017/0526/dm_170526_CRIC_Finch_PC_5262017/dm_170526_CRIC_Finch_PC_5262017.jpg?w=1244&h=700', 'http://www.espncricinfo.com/icc-champions-trophy-2017/content/story/1099596.html', 'Sports', 'ESPNcricinfo staff', '2017-05-27 15:15:49'),
(21, 'Masakadza finds favour ahead of Zimbabwe''s triple tour', 'The 33-year old batsman had played only one of their five ODIs this year, but he could potentially quintuple that count by the end of June', 'http://www.espncricinfo.com/db/PICTURES/CMS/255500/255540.3.jpg', 'http://www.espncricinfo.com/zimbabwe/content/story/1099593.html', 'Sports', 'ESPNcricinfo staff', '2017-05-27 15:15:49'),
(22, 'Mashrafe dampens expectations but Bangladesh worthy of respect', 'It says much about Bangladesh''s improvement in ODI cricket that, for the first time, they go into a global event trying to play down expectations', 'http://a.espncdn.com/combiner/i?img=/media/motion/2017/0526/dm_170526_CRICK_MORTAZA_PC_CHAMPIONS_TROPHY_PREVIEW/dm_170526_CRICK_MORTAZA_PC_CHAMPIONS_TROPHY_PREVIEW.jpg?w=1244&h=700', 'http://www.espncricinfo.com/icc-champions-trophy-2017/content/story/1099591.html', 'Sports', 'George Dobell in Birmingham', '2017-05-27 15:15:49'),
(23, '''We''re ranked eighth, have nothing to lose''', 'Pakistan captain Sarfraz Ahmed thinks his side''s No. 8 ranking means they''ve got nothing to lose in their quest to play positive and fearless cricket at the Champions Trophy', 'http://a.espncdn.com/combiner/i?img=/media/motion/2017/0526/dm_170526_CRICK_SARFRAZ_PC_PAKISTAN/dm_170526_CRICK_SARFRAZ_PC_PAKISTAN.jpg?w=1244&h=700', 'http://www.espncricinfo.com/icc-champions-trophy-2017/content/story/1099586.html', 'Sports', 'Melinda Farrell in Birmingham', '2017-05-27 15:15:49'),
(24, 'Worried about soaring holiday air fare? Airlines are offering tickets at prices as low as Rs 11!', 'If you are yet to book tickets for your vacations, this news will brighten up the chances of planning your much-awaited trip.', 'http://media2.intoday.in/indiatoday/images/stories/collage_647_052417124635.jpg', 'http://indiatoday.intoday.in/story/summer-travel-air-tickets-special-discounts-spicejet-jet-airways-indigo-airasia-lifetr/1/961610.html', 'Travel', 'indiatoday', '2017-05-27 15:15:49'),
(25, '6 unique ways to make your travel memories Instagram-worthy', 'To capture every travel experience and the whirlwind of emotions associated with each of them, is something all of us desire.', 'http://media2.intoday.in/indiatoday/images/stories/photostory_647_052317054046.jpg', 'http://indiatoday.intoday.in/story/travel-pictures-instagram-worthy-hacks-lifetr/1/960985.html', 'Travel', 'indiatoday', '2017-05-27 15:15:49'),
(26, 'In Pictures: A sneak-peek into the luxury that the new Tejas Express train is', 'In Pictures: A sneak-peek into the luxury that the new Tejas Express train is', 'http://media2.intoday.in/indiatoday/images/stories/thumb_647_052317031857.jpg', 'http://indiatoday.intoday.in/story/tejas-express-mumbai-goa-luxury-train-first-semi-high-speed-lifetr/1/960804.html', 'Travel', 'indiatoday', '2017-05-27 15:15:49'),
(27, 'Spinners, Liton take Abahani to first spot', 'A round-up of the Dhaka Premier League matches that took place on May 27, 2017', 'http://www.espncricinfo.com/db/PICTURES/CMS/216200/216271.jpg', 'http://www.espncricinfo.com/bangladesh/content/story/1099714.html', 'Sports', 'ESPNcricinfo staff', '2017-05-27 15:15:49'),
(28, 'Arsenal v Chelsea, FA Cup final 2017 LIVE: All the action from Wembley', 'Arsenal and Chelsea are both looking to end their season with silverware when they battle it out to win the FA Cup at Wembley. You can follow it all with Sportsmail''s Andy Warren.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/14/40D9A86100000578-0-image-a-3_1495892191455.jpg', 'http://www.dailymail.co.uk/sport/article-4547858/Arsenal-v-Chelsea-FA-Cup-final-2017-LIVE.html', 'Movies', 'By Andy Warren For Mailonline', '2017-05-27 15:15:49'),
(29, 'Driver who stole £1.2m reveals how he evaded police for 20 years', '''Fast'' Eddie Maher, 61, of Essex, sped off from a Lloyds bank with the cash in the back of a van in January 1993 and escaped to Colorado with his partner and toddler son Lee.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/15/40DA347A00000578-0-image-a-2_1495897004676.jpg', 'http://www.dailymail.co.uk/news/article-4547702/Eddie-Maher-reveals-stayed-free-man-20-years.html', 'Movies', 'By Ekin Karasin For Mailonline', '2017-05-27 15:15:49'),
(30, 'Who''s the REAL First Lady?', 'Donald Trump embarked on his first international trip with his wife Melania, 47, and his daughter Ivanka, 35 - two women who have ascended to the White House after very different lives.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/01/40D7481500000578-0-image-a-31_1495843946919.jpg', 'http://www.dailymail.co.uk/femail/article-4546790/REAL-Lady-Trump-takes-Melania-Ivanka-trip.html', 'Movies', 'By Tom Leonard for the Daily Mail', '2017-05-27 15:15:49'),
(31, 'Wasps v Exeter, Aviva Premiership final LIVE: Chiefs chasing history', 'A thrilling Aviva Premiership campaign comes to a thrilling conclusion with Exeter Chiefs taking on a star-studded Wasps outfit at Twickenham.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/14/40DA015D00000578-0-image-a-21_1495892991915.jpg', 'http://www.dailymail.co.uk/sport/rugbyunion/article-4547348/Wasps-v-Exeter-Aviva-Premiership-final-LIVE.html', 'Movies', 'By Rory Keane', '2017-05-27 15:15:49'),
(32, 'BA system is down as all Heathrow and Gatwick flights are cancelled', 'Furious passengers in the UK are complaining of ''huge queues'' at check-in and added that they cannot use the website or the app.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/11/40D8FBE500000578-0-image-a-86_1495880928129.jpg', 'http://www.dailymail.co.uk/news/article-4547442/British-Airways-apologise-customers-facing-delays.html', 'Movies', 'By Ekin Karasin For Mailonline', '2017-05-27 15:15:49'),
(33, 'Cohn & McMaster dodge questions about Jared''s Russian ''back-channel''', 'Gen. H.R. McMaster and Gary Cohn told DailyMail.com that Trump''s fellow world leaders weren''t concerned enough about the story''s implications to ask him about it.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/15/40DA3DDB00000578-0-image-a-10_1495896107036.jpg', 'http://www.dailymail.co.uk/news/article-4547882/Trump-aides-dodge-questions-Jared-s-Russia-channel.html', 'Movies', 'By David Martosko, Us Political Editor For Dailymail.com In Taormina, Italy', '2017-05-27 15:15:49'),
(34, 'Returning Jenson Button will start last at Monaco GP', 'MONACO (AP) - Jenson Button''s one-off return to Formula One at the Monaco Grand Prix is proving problematic.Even though the veteran British driver qualified...', 'http://i.dailymail.co.uk/1/2017/05/27/15/wire-654237-1495896904-620_636x382.jpg', 'http://www.dailymail.co.uk/wires/ap/article-4547534/Returning-Button-hit-15-place-penalty-engine-change.html', 'Movies', 'By Associated Press', '2017-05-27 15:15:49'),
(35, 'Trump resists calls for top nations to work together on climate change', 'Donald Trump will announce his final decision on the Paris climate agreement next week, he announced in a tweet on the final day of his first international trip as president.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/15/40DA470800000578-0-image-a-2_1495896225681.jpg', 'http://www.dailymail.co.uk/news/article-4547434/Trump-charm-snarls-climate-change-migrants-trade.html', 'Movies', 'By Simon Holmes For Mailonline and Liam Quinn For Dailymail.com', '2017-05-27 15:15:49'),
(36, 'Rutherford leaping for more glory, providing his body holds up', 'British long jump star Greg Rutherford is determined to add to his impressive collection of titles but knows his body is starting to fail him.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/14/40D6C2C300000578-0-image-a-28_1495890469954.jpg', 'http://www.dailymail.co.uk/sport/othersports/article-4547738/Rutherford-leaping-glory-providing-body-holds-up.html', 'Movies', 'By Matt Slater, Press Association', '2017-05-27 15:15:49'),
(37, 'Neighbours'' fears after body found in a bin on their Melbourne street', 'Neighbours have spoken of their fears after a man''s body was found stuffed inside a wheelie bin on a suburban street in Preston, Melbourne about 8am on Saturday morning by a garbage collector.', 'http://i.dailymail.co.uk/i/pix/2017/05/27/15/40DA2E1700000578-0-image-a-3_1495895572847.jpg', 'http://www.dailymail.co.uk/news/article-4547830/Neighbours-fears-body-bin-Preston-Melbourne.html', 'Movies', 'By Ashleigh Davis and April Glover For Daily Mail Australia', '2017-05-27 15:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Interest` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Password`, `Interest`) VALUES
(7, 'Sanjeev Malagi', 'sanjeevmalagi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Sports'),
(8, 'Sanjeev Malagi', 'sanjeevmalagi1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Movies'),
(12, 'Malagi Sanjeev', 'malagisanjeev@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Travel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
