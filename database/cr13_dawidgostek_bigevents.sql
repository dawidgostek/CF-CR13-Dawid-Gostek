-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Dez 2020 um 13:22
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr13_dawidgostek_bigevents`
--
CREATE DATABASE IF NOT EXISTS `cr13_dawidgostek_bigevents` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr13_dawidgostek_bigevents`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `time`, `short_description`, `description`, `image`, `capacity`, `email`, `phonenumber`, `address`, `url`, `type`) VALUES
(1, 'Exhibition: Beethoven Moves', '2020-09-29 11:00:00', 'The exhibition at the Kunsthistorisches Museum Vienna brings Beethoven into dialogue with artists like Friedrich, Goya, Rodin, Horn, Baldessari, and Sehgal.', 'The Kunsthistorisches Museum Vienna presents, in cooperation with the Archive of the Gesellschaft der Musikfreunde in Vienna, an unusual homage to Ludwig van Beethoven (1770–1827).\r\n\r\nHis universal and unique reception, the epochal significance of his music, but also the perception of his deified persona, create numerous entry points; high and popular culture, commerce and politics all form an inexhaustible reservoir for inspiration and appropriation.\r\n\r\nThe exhibition brings together paintings by Caspar David Friedrich, sketchbooks by J. M. W. Turner, graphic works by Francisco de Goya, Anselm Kiefer and Jorinde Voigt, sculptures by Auguste Rodin, Rebecca Horn and a new work developed for the exhibition by Tino Sehgal, a video by Guido van der Werve and much more, all of which are brought into dialogue with the music and persona of Beethoven. The exhibition will thus build a bridge with the present: masterpieces of fine art form connections with music and silence.', 'https://aws-tiqets-cdn.imgix.net/images/content/1871e79477e74468b73080a23361a2b5.jpg?auto=format&fit=crop&ixlib=python-3.2.1&q=25&s=91b63fadc783728afad6385ab3bb3910&w=375&h=250&dpr=2.625', 200, 'ticket@khm.at', '+431525242500', 'Maria-Theresien-Platz, 1010 Wien', 'https://beethovenmoves.at/', 'exhibition'),
(2, 'Wörthersee Classics Music Festival 2020', '2020-12-13 18:00:00', 'World-famous orchestras and solo musicians will perform works by Gustav Mahler, Alban Berg, Anton von Webern, Johannes Brahms, and Hugo Wolf.', 'The philosophy of the Woerthersee Classic Festival is unique: Gustav Mahler, Alban Berg, Anton von Webern, Johannes Brahms and Hugo Wolf stayed at the picturesque Wörthersee and created there - the inspiration of Carinthia flowed through them all. Since 2002 the works of these composers have been performed to the delight of the audience.\r\n\r\nThe silhouettes of Otto Böhler became an incentive  for a wider range of composers for the festival. The most important factor in that case is a balance between classical compositions, works which are commissioned for the festival and at the same time honoring specific Carinthian artists.', 'https://images.squarespace-cdn.com/content/v1/5825bdbed482e95e63bfd99c/1573800775431-C2KD8TKHGN6HH1JSS2O6/ke17ZwdGBToddI8pDm48kOW0kVwSOHykEsE7dIhkBkt7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UVCXwMwrWIyemusInkwK5wf1CEI6b--rc-Q2PkPg-nniM14nZUo0tVr0uKhdsAoztA/Hotel-Linde-W%2525C3%2525B6rthersee-Luft-1900-2.jpg?format=1500w', 500, 'office@woertherseeclassics.com', '+43 31687187111', 'Konzerthaus, Klagenfurt/Woerthersee', 'http://www.woertherseeclassics.com/index.php?id=40&L=1', 'music'),
(4, 'FM4 Frequency Festival', '2021-08-19 18:00:00', '3 days, more than 120 international acts, 8 stages – the FM4 Frequency Festival in St. Pölten is a highlight of Austria\'s music festival summer.', '3 days, more than 120 international acts, 8 stages – the FM4 Frequency Festival in St. Pölten is a highlight of Austria\'s music festival summer.', 'https://www.frequency.at/wp-content/uploads/sites/17/FQ19_190818-0052_c_Patrick_Ziebermayr_A7307421_2048px-440x320.jpg', 5000, 'fm4frequencyfestival@mail.com', '+43 1 5225220', 'St. Pölten', 'https://www.frequency.at/en/impressum/', 'music'),
(5, 'Mountain Yoga Festival in St. Anton am Arlberg', '2021-09-09 12:00:00', 'Practice yoga whilst soaking up the beauty of Alpine nature.', 'Why #myfstanton\r\nYoga- and nature lovers seeking for a great mix of different yoga styles, for beginners and advanced yogis, mountain experiences, “Waldluftbaden”, music, talks are joining the 4-day festival each year:\r\nFeedback 2018:\r\n„What makes this festival so special, is the certain attention to details“\r\n„Best yoga experience ever! Thank you all!“\r\n„Yoga can be fun! We had a blast!“\r\n„Great experience overall – so glad I came!“\r\n\r\nYoga\r\nA mix of different yoga styles to try or deepen the practice, for beginners and advanced yogis. The mountain view shouldn’t be missed out, while practicing on the mountain or in the valley.\r\n\r\nMountain hikes\r\nHinking in the surrounding of St. Anton will show you breathtaking landscapes and will give you different perspectives while sitting on a mountain peak.\r\nGeli is our mountain guide, she loves the mountains and she will show you her favourite tours for different levels.\r\n\r\nTeachers / experts\r\n#myf teachers and experts are passionate, experienced and are in love with what they do! They share their knowledge around the love and on those 4 days in St. Anton.\r\n\r\nHealthy food\r\n….and local delicacies will give you the energy you need for a day full of yoga and nature. A healthy and hearty breakfast will be served at your “home away from home”.\r\n\r\nIt is already an institution: The yoga-lunch on Friday and Saturday at the Gampen restaurant. Local chef Reinhold will create delicious dishes, veggie and vegan with products from the region.\r\n\r\nMusik\r\nThe sound of the hang is as much part of the festival as the mountains and is a musical highlight every day.', 'https://www.mountainyogafestivalstanton.at/img/containers/main/impressionen/DSC_8494_MYF%20by%20TA.jpg/80b8b8863d4616b88d85f72e75048b00.jpg', 50, 'yoga@stantonamarlberg.com', '+43 544622690', 'A-6580 St. Anton am Arlberg', 'https://www.mountainyogafestivalstanton.at/en/', 'sport'),
(6, 'Salzburg Festival', '2021-08-01 18:00:00', 'The absolute highlight of the city\'s events calendar is the Salzburg Festival. It\'s a grand affair, with some 200 productions – including theatre, classical music and opera – staged in the impressive surrounds of the Grosses Festspielhaus, Haus für Mozart and the baroque Felsenreitschule.', 'Music festivals had been held in Salzburg at irregular intervals since 1877 held by the International Mozarteum Foundation but were discontinued in 1910. Although a festival was planned for 1914, it was cancelled at the outbreak of World War I. In 1917, Friedrich Gehmacher and Heinrich Damisch formed an organization known as the Salzburger Festspielhaus-Gemeinde to establish an annual festival of drama and music, emphasizing especially the works of Mozart.[1] At the close of the war in 1918, the festival\'s revival was championed by five men now regarded as its founders:[2] the poet and dramatist Hugo von Hofmannsthal, the composer Richard Strauss, the scenic designer Alfred Roller, the conductor Franz Schalk, and the director Max Reinhardt, then intendant of the Deutsches Theater in Berlin, who had produced the first performance of Hofmannsthal\'s play Jedermann at the Berlin Zirkus Schumann arena in 1911.\r\n\r\nAccording to Hofmannsthal\'s political writings, the Salzburg Festival, as a counterpart to the Prussian-North German uncompromising worldview, should emphasize the centuries-old Habsburg principles of \"live and let live\" with regard to ethnic groups, peoples, minorities, religions, cultures and languages.[3][4][5] The Salzburg Festival was officially inaugurated on 22 August 1920 with Reinhardt\'s performance of Hofmannsthal\'s Jedermann on the steps of Salzburg Cathedral, starring Alexander Moissi. The practice has become a tradition, and the play is now always performed at Cathedral Square; since 1921 it has been accompanied by several performances of chamber music and orchestral works. The first operatic production came in 1922, with Mozart\'s Don Giovanni conducted by Richard Strauss. The singers were mainly drawn from the Wiener Staatsoper, including Richard Tauber in the part of Don Ottavio.', 'https://traveltop6.com/assets/media/places/salzburg-festspiele-2017/_AUTOx800_crop_center-center_none/rxybfms70jy9ejewqnsj.jpg', 1000, 'info@salzburgfestival.at', '+43 6628045500', 'Hofstallgasse 1, 5020 Salzburg', 'https://www.salzburgerfestspiele.at/', 'music'),
(7, 'Donauinselfest', '2021-09-18 16:00:00', 'Held over three days on a weekend in late June, the Donauinselfest features a feast of rock, pop, folk and country performers, and attracts almost three million onlookers. Best of all, it’s free!', 'Performances take place in the festival area which is 4.5 km long and consists of 11 different open-air stages in 16 tented areas around the island. Stages are added or removed depending on the performance lineup. Local bands, DJs, and many world-famous artists have performed at the festival since its beginning in 1984.\r\n\r\nAccording to numerous media reports, the Donauinselfest is among Europe\'s biggest open-air festivals with over 3 million visitors.\r\n\r\nTo ensure the safety of visitors, \"house rules\" were introduced in 2007 and checkpoint controls were established to help control certain items (such as glass and liquor inside the festival perimeter).[2] A strong police presence, in tandem with around 1,500 volunteers from around the world, help make the Donauinselfest one of the most secure events in Europe.\r\n\r\nFood stands offer a variety of Austrian and international cuisine, including Thai, Greek, Italian, Indian, and Turkish. Although all concerts are free, financial experts estimate the event generates €40 million in city revenue due to increased tourism.[3]\r\n\r\nTraffic connection (how to get there):\r\n\r\nOEBB Travel Portal (trains)\r\nAustrian Airlines\r\nWiener Linien (public transport in Vienna)\r\nAreas referred to as \"islands\" are sponsored by radio stations, newspapers, and other companies.', 'https://gastronews.wien/wp-content/uploads/2017/06/c-Donauinselfest-Florian-Wieser.jpg', 50000, 'presse@donauinselfest.at', '+43 153427221', 'Donauinsel', 'https://donauinselfest.at/?nofade', 'music');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
