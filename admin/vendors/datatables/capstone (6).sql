-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 11:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(13, 'admin', '2022-12-04 00:28:51', 'Edit Subject IS 411A');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(93, 39, 'asdsad', 'A'),
(94, 39, 'asdsad', 'B'),
(95, 39, 'hjh', 'C'),
(96, 39, 'hjh', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, 'BSSW-4B'),
(8, 'BSSW-4C'),
(12, 'BSSW-1A '),
(13, 'BSSW-1B'),
(14, 'BSSW-1C'),
(15, 'BSSW-1D'),
(16, 'BSSW-2A'),
(17, 'BSSW-2B'),
(18, 'BSSW-2C'),
(19, 'BSSW-2D'),
(20, 'BSSW-3A'),
(21, 'BSSW-3B'),
(22, 'BSSW-3C'),
(23, 'BSSW-3D'),
(24, 'BSSW-4A'),
(25, 'BSSW-4D'),
(26, 'BEED-1'),
(27, 'BEED-2'),
(28, 'BEED-3'),
(29, 'BEED-4'),
(30, 'BSIT-1'),
(31, 'BSIT-2'),
(32, 'BSIT-3'),
(33, 'BSIT-4'),
(34, 'BPED-1'),
(35, 'BPED-2'),
(36, 'BPED-3'),
(37, 'BPED-4'),
(38, 'BSBA-1'),
(39, 'BSBA-2'),
(40, 'BSBA-3'),
(41, 'BSBA-4'),
(42, 'BTLED-1'),
(43, 'BTLED-2'),
(44, 'BTLED-3'),
(45, 'BTLED-4'),
(46, 'BSED-1'),
(47, 'BSED-2'),
(48, 'BSED-3'),
(49, 'BSED-4');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `due_date`, `quiz_id`) VALUES
(153, 204, 1860, '2023-01-12 ', 9),
(154, 204, 7200, '2023-01-20 ', 9);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `conference_meeting`
--

CREATE TABLE `conference_meeting` (
  `meetingId` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conference_meeting`
--

INSERT INTO `conference_meeting` (`meetingId`, `teacher_id`, `userID`, `class_id`, `title`) VALUES
(59, 9, '', 33, 'Reload rule for ISEP-System'),
(64, 5, '', 29, 'sadasd'),
(65, 9, '', 29, ''),
(66, 9, '', 27, ''),
(67, 9, '', 48, ''),
(68, 9, '', 28, ''),
(69, 9, '', 28, ''),
(70, 9, '', 29, ''),
(71, 9, '', 31, ''),
(72, 9, '', 26, ''),
(73, 9, '', 33, ''),
(74, 9, '', 37, ''),
(75, 9, '', 30, ''),
(76, 9, '', 31, ''),
(77, 9, '', 32, 'Reload rule for ISEP-System');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; St. Bridget College Batangas is a center for excellence offering an education with programs and services that are person and community oriented anchored in Christian faith and values and supported by appropriate resources and technology.<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; We will form a competent, committed and integrated persons who live the Good Shepherd charism of compassion and the values of St. Bridget College. <br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Drawing from our tradition of caring we create a culture of reconciliation, justice and peace responsive to societal and cosmic needs. &nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; St. Bridget College Batangas is a Catholic Evangelizing educational institution founded by the Religious of the Good Shepherd inspired by the compassion of Jesus and the zeal of St. John Eudes and St. Mary Euphrasia.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  We form Christian communities through education that strengthens faith and morals and uplifts human dignity.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Impelled by merciful love we participate actively in building a transfored society characterized by the love of God and neighbor, justice, peace, reconciliation and integrity of creation.  </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Religious of the Good Shepherd or RGS established the first Catholic School for girls in the Diocese of Lipa. This was in 1913, when the Most Reverend Joseph Petrelli, Bishop of the Diocese, asked the help of the RGS Sisters working in Rangoon, Burma to come to Batangas to start the first educational mission of the Church in his Diocese. The challenge to undertake this new mission was enthusiastically taken up by Mother Mary of St. Ligouri and her companions. Within a short span of time, more Sisters from the Mother House in France arrived. There were many difficulties in the beginning but the Irish and American Sisters who pioneered the task surmounted all these through their untiring sacrifices and the generosity of the people in the community. The said sisters started the school with the name St. Bridget Academy. </p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp; For 34 years the educational program of Saint Bridget was confined to grade school and high school. In 1953 the Boys High School Department was established in answer to the insistent demands of parents who wanted their growing sons to be provided with a Catholic education. His Excellency, the Most Reverend Alejandro Olalia, wholeheartedly endorsed this new department. </p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp; In 1980 the students of the Boys and Girls High School Departments were integrated into co-educational classes. The undertaking turned out to be a learning process for the administration, the faculty, and the students themselves. It was an attempt to answer the students felt need to relate in an atmosphere of friendship, participative discovery, and sharing of ones capabilities, abilities and talents. The integration of the boys and the girls in the academic classes, supplemented with co-curricular and extra curricular activities help them grow and lead wholesome lives. </p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp; In 1998, sensitive to the rapid development of information technology, St. Bridget took up the challenge of integrating technology in the academic instructions familiarizing students from elementary to College with computers, computer know-how, software programs, the internet, websites, and presentation software.     .</p>'),
(4, 'Footer', '<p style=\"text-align:center\"> ISEP </p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2022</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">ISEP-SBC</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: November 7-12, 2022</p>\r\n\r\n<p></p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>September - January &nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>January -</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n	<colspan=\"4\">\r\n			<p><strong>Oct. 31, 2022 to Nov 29, 2022 &ndash; Newsletter for the Month of November</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 31-November 2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>SCHOOL HOLIDAY-NO CLASSES AND NO OFFICE TRANSACTION</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 3</p>\r\n			</td>\r\n			<td>\r\n			<p>Resumption of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4</p>\r\n			</td>\r\n			<td>\r\n			<p>Academic Council Meeting</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 7, 9, 11, 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Exam Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 7, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Field Instruction Midterm Sharing</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 8, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Study Days-No Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 8</p>\r\n			</td>\r\n			<td>\r\n			<p>Quality Assurance Commitee and PAASCU Core Committee Meeting</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 9</p>\r\n			</td>\r\n			<td>\r\n			<p>Guidance Session(All Students)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 14</p>\r\n			</td>\r\n			<td>\r\n			<p>LAMP Photoshoot (7:00am-4:00pm)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 16</p>\r\n			</td>\r\n			<td>\r\n			<p>Admin Meeting, Club Socialization</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 17</p>\r\n			</td>\r\n			<td>\r\n			<p>Seminar/Training on Technology Enhancement c/o BYTES</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 23</p>\r\n			</td>\r\n			<td>\r\n			<p>Parenting Session, Faculty Meeting, Club Socialization</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of 18-Day Campaign to end VAW(Theme: United for a VAW-free Philippines)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 28</p>\r\n			</td>\r\n			<td>\r\n			<p>National Book Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 29</p>\r\n			</td>\r\n			<td>\r\n			<p>3rd Year Student Research Forum(Fourth Year student)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n					</td>\r\n			<td>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Deans Office/Registrar Office - 043-723-3616 </li>\r\n	<li>Guidance Office - 043-722-2951</li>\r\n	<li>Programs Chairpersons Office - 043-723-7469</li>\r\n	<li>Student Affairs Office/SAP Office - 043-980-7540</li>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<p><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">St. Bridget College</span></span></p>\r\n\r\n<p><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Luceat Lux Vestra</span></span></p>\r\n\r\n<p><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Let Your Light Shine</span></span></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>SBC Batangas</li>\r\n	<li>SBC Alitagtag</li>\r\n'),
(16, 'Logo', ''),
(17, 'Background-Page', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(12, 'Education Department', 'Dr. Imelda B. Vergara'),
(13, 'Social Work Department', 'Mr. Sherwin Bagon'),
(14, 'Business & Information Technology Department', 'Engr. Leonardo Pedraja'),
(15, 'General Education Department', 'Miss Cenen I. Chavez');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2013', '06/04/2013'),
(13, 'Start of Classes', 0, '11/04/2013', '11/04/2013'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2013', '11/22/2013'),
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(138, 'admin/uploads/3952_File_sample.pdf', '2020-12-21 09:24:50', 'Sample', 9, 186, 'Sample', 'JomarPabuaya'),
(145, 'admin/uploads/9660_File_Midterms - RS4 AlcantaraIvy FM IV.pdf', '2022-11-28 13:02:19', 'asd', 9, 186, 'Ari po sir', 'JomarPabuaya'),
(144, 'admin/uploads/8887_File_local_media7615793525824980967.docx', '2022-11-28 12:59:55', 'alk', 9, 186, 'Sir ksj', 'JomarPabuaya'),
(141, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 09:40:28', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(142, 'admin/uploads/1952_File_local_media7445047041320141820.docx', '2022-11-24 21:34:45', 'sdfsdf', 0, 167, 'fdsfsd', 'CliffordLedesma'),
(143, 'admin/uploads/7359_File_pngtree-red-pin-png-image_2933326.jpg', '2022-11-24 21:35:00', 'asdsadasd', 0, 19, 'asdsa', 'CliffordLedesma'),
(146, 'admin/uploads/5887_File_Nicole Munoz Baes BSIT.jpg', '2022-11-30 16:12:32', '123213', 9, 186, 'asd', 'JomarPabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `general_post`
--

CREATE TABLE `general_post` (
  `post_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` varchar(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_post`
--

INSERT INTO `general_post` (`post_id`, `teacher_class_id`, `teacher_id`, `content`, `date`) VALUES
(10, 189, '9', '<p>Jrlll</p>\r\n', '2022-12-18 05:39:55'),
(11, 189, '9', '<p>hay aku</p>\r\n', '2022-12-18 05:58:11'),
(12, 189, '9', '<p>asdasdsa222222</p>\r\n', '2022-12-18 11:50:48'),
(13, 189, '9', '<p>sadasdsad</p>\r\n', '2022-12-18 16:17:35'),
(14, 189, '9', '<p>sdasdasd222222</p>\r\n', '2022-12-18 16:21:25'),
(15, 189, '9', '<p>adasdasdsad2222231331</p>\r\n', '2022-12-19 10:44:39'),
(16, 192, '9', '<p>asdasdsa</p>\r\n', '2022-12-19 10:45:10'),
(17, 204, '9', '<p>sadasdsad</p>\r\n', '2023-01-04 23:09:23'),
(18, 204, '9', '<p>asdasd</p>\r\n', '2023-01-04 23:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(63, 157, 'asdasd', '2022-12-11 14:30:14', 9, 'Ace John Casuyon', 'Ryan Gamboa', ''),
(64, 157, 'asdsd', '2022-12-11 15:52:52', 9, 'Ace John Casuyon', 'Ryan Gamboa', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(48, 157, 'asdasd', '2022-12-11 14:30:14', 9, 'Ace John Casuyon', 'Ryan Gamboa'),
(49, 157, 'asdsd', '2022-12-11 15:52:52', 9, 'Ace John Casuyon', 'Ryan Gamboa');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `due_date`, `link`) VALUES
(64, 189, 'Add Annoucements', '2022-12-11 16:52:19', '', 'announcements_student.php'),
(65, 189, 'Add Annoucements', '2022-12-11 17:06:50', '', 'announcements_student.php'),
(66, 189, 'Add Practice Quiz file', '2022-12-18 17:43:32', '', 'student_quiz_list.php'),
(67, 189, 'Add Practice Quiz file', '2022-12-18 17:43:51', '', 'student_quiz_list.php'),
(68, 189, 'Add Practice Quiz file', '2022-12-18 17:46:59', '', 'student_quiz_list.php'),
(69, 189, 'Add Practice Quiz file', '2022-12-19 12:10:10', '', 'student_quiz_list.php'),
(70, 192, 'Add Practice Quiz file', '2022-12-19 12:12:39', '', 'student_quiz_list.php'),
(71, 192, 'Add Practice Quiz file', '2022-12-19 12:13:52', '', 'student_quiz_list.php'),
(72, 192, 'Add Practice Quiz file', '2022-12-19 12:16:01', '', 'student_quiz_list.php'),
(73, 192, 'Added Quiz file', '2022-12-19 12:25:32', '', 'student_quiz_list.php'),
(74, 189, 'Added Quiz file', '2022-12-19 12:31:52', '', 'student_quiz_list.php'),
(75, 189, 'Added Quiz file', '2022-12-19 12:47:46', '', 'student_quiz_list.php'),
(76, 194, 'Added Quiz file', '2022-12-19 13:20:02', '', 'student_quiz_list.php'),
(77, 195, 'Added Quiz file', '2022-12-19 13:37:59', '', 'student_quiz_list.php'),
(78, 192, 'Add Practice Quiz file', '2022-12-30 18:56:46', '', 'student_quiz_list.php'),
(79, 189, 'Add Practice Quiz file', '2022-12-30 21:48:30', '', 'student_quiz_list.php'),
(80, 189, 'Add Practice Quiz file', '2022-12-30 22:14:04', '', 'student_quiz_list.php'),
(81, 189, 'Add Practice Quiz file', '2022-12-31 12:12:12', '', 'student_quiz_list.php'),
(82, 189, 'Add Practice Quiz file', '2022-12-31 12:14:23', '', 'student_quiz_list.php'),
(83, 189, 'Add Practice Quiz file', '2022-12-31 12:15:02', '', 'student_quiz_list.php'),
(84, 192, 'Add Practice Quiz file', '2022-12-31 12:19:30', '', 'student_quiz_list.php'),
(85, 189, 'Add Practice Quiz file', '2022-12-31 12:20:57', '', 'student_quiz_list.php'),
(86, 189, 'Add Practice Quiz file', '2022-12-31 12:40:00', '', 'student_quiz_list.php'),
(87, 189, 'Add Practice Quiz file', '2022-12-31 16:56:31', '2023-01-01 ', 'student_quiz_list.php'),
(88, 189, 'Add Practice Quiz file', '2022-12-31 16:57:14', '2023-01-01 ', 'student_quiz_list.php'),
(89, 189, 'Add Practice Quiz file', '2022-12-31 17:00:47', '2023-01-03 ', 'student_quiz_list.php'),
(90, 189, 'Add Practice Quiz file', '2022-12-31 17:01:58', '2023-01-01 ', 'student_quiz_list.php'),
(91, 189, 'Add Practice Quiz file', '2022-12-31 17:03:07', '2023-01-02 ', 'student_quiz_list.php'),
(92, 189, 'Added a Quiz file', '2022-12-31 17:06:57', '2023-01-05 ', 'student_quiz_list.php'),
(93, 199, 'Added a Quiz file', '2022-12-31 17:09:49', '2023-01-04 ', 'student_quiz_list.php'),
(94, 199, 'Added a Quiz file', '2022-12-31 17:10:12', '2023-01-07 ', 'student_quiz_list.php'),
(95, 200, 'Added a Quiz file', '2022-12-31 17:12:48', '2023-01-14 ', 'student_quiz_list.php'),
(96, 200, 'Added a Quiz file', '2022-12-31 17:14:17', '2023-01-07 ', 'student_quiz_list.php'),
(97, 200, 'Added a Quiz file', '2022-12-31 19:47:01', '2023-01-05 ', 'student_quiz_list.php'),
(98, 200, 'Added a Quiz file', '2022-12-31 20:09:32', '2023-01-07 ', 'student_quiz_list.php'),
(99, 200, 'Added a Quiz file', '2023-01-01 12:01:28', '2023-01-07 ', 'student_quiz_list.php'),
(100, 200, 'Added a Quiz file', '2023-01-01 14:20:26', '2023-02-10 ', 'student_quiz_list.php'),
(101, 200, 'Added a Quiz file', '2023-01-01 14:30:29', '2023-02-11 ', 'student_quiz_list.php'),
(102, 200, 'Added a Quiz file', '2023-01-01 14:34:31', '2023-01-17 ', 'student_quiz_list.php'),
(103, 201, 'Added a Quiz file', '2023-01-01 15:35:17', '2023-02-03 ', 'student_quiz_list.php'),
(104, 200, 'Added a Quiz file', '2023-01-01 15:35:39', '2023-01-09 ', 'student_quiz_list.php'),
(105, 200, 'Added a Quiz file', '2023-01-01 20:25:19', '2023-02-01 ', 'student_quiz_list.php'),
(106, 202, 'Added a Quiz file', '2023-01-01 20:32:14', '2023-02-04 ', 'student_quiz_list.php'),
(107, 204, 'Added a Quiz file', '2023-01-01 20:36:31', '2023-01-25 ', 'student_quiz_list.php'),
(108, 204, 'Added a Quiz file', '2023-01-02 16:30:34', '2023-01-11 ', 'student_quiz_list.php'),
(109, 204, 'Added a Quiz file', '2023-01-02 16:30:34', '2023-01-11 ', 'student_quiz_list.php'),
(110, 204, 'Added a Quiz file', '2023-01-02 16:35:09', '2023-02-02 ', 'student_quiz_list.php'),
(111, 204, 'Added a Quiz file', '2023-01-02 16:49:09', '2023-01-11 ', 'student_quiz_list.php'),
(112, 204, 'Added a Quiz file', '2023-01-02 16:49:26', '2023-01-26 ', 'student_quiz_list.php'),
(113, 204, 'Added a Quiz file', '2023-01-02 18:08:10', '2023-01-02 ', 'student_quiz_list.php'),
(114, 204, 'Add Annoucements', '2023-01-04 23:20:09', '', 'announcements_student.php'),
(115, 204, 'Added a Quiz file', '2023-01-04 23:21:08', '2023-01-11 ', 'student_quiz_list.php'),
(116, 204, 'Added a Quiz file', '2023-01-04 23:21:56', '2023-01-05 ', 'student_quiz_list.php'),
(117, 204, 'Added a Quiz file', '2023-01-04 23:25:24', '2023-02-01 ', 'student_quiz_list.php'),
(118, 204, 'Added a Quiz file', '2023-01-04 23:27:26', '2023-01-26 ', 'student_quiz_list.php'),
(119, 204, 'Added a Quiz file', '2023-01-04 23:38:41', '2023-01-18 ', 'student_quiz_list.php'),
(120, 204, 'Added a Quiz file', '2023-01-04 23:39:14', '2023-01-12 ', 'student_quiz_list.php'),
(121, 204, 'Added a Quiz file', '2023-01-04 23:41:49', '2023-01-20 ', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(22, 113, 'yes', 121),
(23, 113, 'yes', 120),
(24, 113, 'yes', 119),
(25, 113, 'yes', 118),
(26, 113, 'yes', 117),
(27, 113, 'yes', 116),
(28, 113, 'yes', 115),
(29, 113, 'yes', 114),
(30, 113, 'yes', 113),
(31, 113, 'yes', 112),
(32, 113, 'yes', 111),
(33, 113, 'yes', 110),
(34, 113, 'yes', 108),
(35, 113, 'yes', 109),
(36, 113, 'yes', 107);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(9, 'Hello Quiz', 'Test Quiz', '2023-01-04 23:26:45', 9);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
(37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
(38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False'),
(39, 9, '<p>asdasd</p>\r\n', 1, 0, '2023-01-04 23:40:24', '');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(2, '2012-2013'),
(3, '2013-2014'),
(4, '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `sms_notification`
--

CREATE TABLE `sms_notification` (
  `sms_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `teacher_id` varchar(11) NOT NULL,
  `student_number` varchar(500) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sms_notification`
--

INSERT INTO `sms_notification` (`sms_id`, `teacher_class_id`, `notification`, `quiz_id`, `teacher_id`, `student_number`, `due_date`, `subject_id`) VALUES
(58, 204, 'Added a Quiz file', 9, '9', '09752398408,09611979458', '2023-01-20', 15);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `flogin` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`, `flogin`) VALUES
(113, 'Clifford', 'Ledesma', 13, '21100324', '46985daeea3b221520d064acd575da8052c00ff685fded7af67be52ef1498c4995565afc7bba82f53ed257b791328655d4c794ec1c2d13d7754924d0ff118d4a', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', ''),
(112, 'Raymond', 'Serion', 13, '2700372', '46985daeea3b221520d064acd575da8052c00ff685fded7af67be52ef1498c4995565afc7bba82f53ed257b791328655d4c794ec1c2d13d7754924d0ff118d4a', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', ''),
(111, 'Mark Dominic', 'Sayon', 13, '21100867', 'heni', 'uploads/mark.jpg', 'Unregistered', '0'),
(108, 'Kaye Angela', 'Cueva', 13, '21101151', '', 'uploads/dp.jpg', 'Unregistered', '0'),
(105, 'Neljie', 'Guirnela', 13, '21101131', '', 'uploads/Koala.jpg', 'Unregistered', '0'),
(106, 'Razel', 'Palermo', 13, '29000676', '', 'uploads/razel.jpg', 'Unregistered', '0'),
(103, 'Jade', 'Gordoncillo', 13, '21100617', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(104, 'Felix Kirby', 'Ubas', 13, '21100277', 'lms10117', 'uploads/kirb.jpg', 'Unregistered', '0'),
(100, 'Jamilah', 'Lonot', 13, '21100303', '', 'uploads/jamila.jpg', 'Unregistered', '0'),
(101, 'Xenia Jane', 'Billones', 13, '21100318', 'sen', 'uploads/xenia.jpg', 'Unregistered', '0'),
(102, 'Carell', 'Catuburan', 13, '21101124', '', 'uploads/carel.jpg', 'Unregistered', '0'),
(97, 'Mary Joy', 'Lambosan', 13, '20101289', '', 'uploads/Desert.jpg', 'Unregistered', '0'),
(98, 'Christine Joy', 'Macaya', 13, '21100579', '', 'uploads/tin.jpg', 'Unregistered', '0'),
(95, 'Ergin Joy', 'Satoc', 13, '21101142', '', 'uploads/ergin.jpg', 'Unregistered', '0'),
(93, 'John Kevin ', 'Lorayna', 7, '111', 'teph', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered', '0'),
(94, 'Leah Mae', 'Padilla', 13, '21100471', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(76, 'Jamaica Mae', 'Alipe', 13, '21100555', '123', 'uploads/maica.jpg', 'Registered', '0'),
(107, 'Jose Harry', 'Polondaya', 13, '29001002', 'florypis', 'uploads/harry.jpg', 'Registered', '0'),
(110, 'Zyryn', 'Corugda', 13, '21100881', '', 'uploads/baby.jpg', 'Unregistered', '0'),
(109, 'Rena', 'Lamberto', 13, '29001081', '', 'uploads/ca.jpg', 'Unregistered', '0'),
(99, 'Ryan Teofilo', 'Malbata-an', 13, '21100315', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(96, 'Glecy Marie', 'Navarosa', 13, '20101436', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(209, 'dhalia', 'hofilena', 20, '21300311', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(75, 'Miralyn', 'Pabalate', 13, '21100855', 'em', 'uploads/em2.jpg', 'Unregistered', '0'),
(74, 'Ma. Nonie', 'Mendoza', 13, '21100913', '', 'uploads/nonie.jpg', 'Unregistered', '0'),
(73, 'Stephanie', 'Villanueva', 13, '21101042', 'tephai', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered', '0'),
(72, 'Jayvon', 'Pig-ao', 13, '21100547', 'test', 'uploads/von.jpg', 'Unregistered', '0'),
(71, 'Noli', 'Mendoza', 13, '21100556', 'noledel', 'uploads/noli.jpg', 'Registered', '0'),
(134, 'Victor Anthony', 'Jacobo', 12, '21101050', 'akositon', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered', '0'),
(135, 'Albert Kezzel', 'Naynay', 14, '20101361', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(136, 'Jorgielyn', 'Serfino', 7, '20100331', 'jorgie', 'uploads/Koala.jpg', 'Registered', '0'),
(137, 'Wina Mae', 'Espenorio', 8, '20100447', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(138, 'Brian Paul', 'Sablan', 7, '29000557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(139, 'Rodzil', 'Camato', 7, '20100RC', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(140, 'Dean Martin', 'Tingson', 14, '21100665', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(141, 'Jared Reu', 'Windam', 15, '21100695', 'iloveyoujam', 'uploads/1463666_678111108874417_1795412912_n.jpg', 'Registered', '0'),
(142, 'Lee Ann', 'Vertucio', 12, '21100351', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(143, 'Danica', 'Lamis', 12, '21100396', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(144, 'Neovi', 'Devierte', 12, '21100557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(145, 'Eril Pio', 'Mercado', 12, '21100291', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(146, 'Johnedel', 'Bauno', 12, '21100411', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(147, 'Jerwin', 'Delos Reyes', 12, '21100369', 'jerwin27 cute', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0'),
(148, 'Jendrix', 'Victosa', 12, '21100431', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(149, 'Jebson', 'Tordillos', 12, '21100406', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(150, 'Jethro', 'Pansales', 12, '21101273', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(151, 'Karyl June', 'Bacobo', 12, '21100895', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(152, 'Kristelle Shaine', 'Rubi', 12, '21101063', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(153, 'Richelle', 'Villarmia', 12, '20101392', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(154, 'Mae Ann', 'Panugaling', 12, '21100904', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(155, 'Ma. Roxette', 'Infante', 12, '21100421', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(156, 'Savrena Joy', 'Rael', 12, '2100287', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(157, 'Ace John', 'Casuyon', 12, '21100393', 'DianaraSayon', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0'),
(158, 'Rose Mae', 'Pido', 12, '21101195', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(159, 'Mary Ann', 'Panaguiton', 12, '21100701', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(162, 'kimberly kaye', 'salvatierra', 14, '21101182', 'kimzteng', 'uploads/29001002.jpg', 'Registered', '0'),
(210, 'cherylda', 'ohiman', 20, '21300036', 'sawsa', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0'),
(164, 'Alit', 'Arvin', 14, '20101605', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(165, 'Ana Mae', 'Alquizar', 14, '21100785', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(166, 'Thessalonica', 'Arroz', 14, '21100651', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(167, 'Leslie', 'Campo', 14, '21100265', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(168, 'Ace', 'Casolino', 14, '27000921', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(169, 'Michael Jed', 'Flores', 14, '21100820', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(172, 'Hennie Rose', 'Laz', 14, '21100805', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(171, 'Joy', 'Macahilig', 14, '21100464', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(173, 'Ma. Nieva', 'Manuel ', 14, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(174, 'Devina', 'Navarro', 14, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(175, 'Aimee', 'Orlido', 14, '21100654', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(176, 'Mary Grace', 'Quizan', 14, '21100772', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(177, 'John Christopher', 'Reguindin', 14, '21100418', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(178, 'Mary Ann', 'Somosa', 14, '21101150', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(179, 'Marrianne', 'Tumala', 14, '21100710', 'test', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered', '0'),
(180, 'Deo Christopher', 'Tribaco', 14, '21101227', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(181, 'Jerson', 'Vargas', 14, '21100819', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(182, 'Valencia', 'Jeralice', 14, '29000405', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(183, 'Cristine', 'Yanson', 14, '21101148', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(184, 'Ariane', 'Alix', 17, '21201166', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(185, 'Mark Arvin', 'Arandilla', 17, '21201453', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(186, 'Ryan Carl', 'Biaquis', 17, '21201244', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(187, 'Ria', 'Bitar', 17, '21201282', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(188, 'Jeremae', 'Bustamante', 17, '21200798', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(189, 'Rhen Mark', 'Callado', 17, '21201012', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(190, 'Ma. Geraldine', 'Carisma', 17, '21201219', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(191, 'Jenny', 'Casapao', 17, '21200855', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(192, 'Welson', 'Castro', 17, '120733', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(193, 'Kimberly Hope', 'Centina', 17, '21201338', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(194, 'Sandra', 'Gomez', 17, '21201335', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(195, 'Dona Jean', 'Guardialao', 17, '21201113', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(196, 'Jeara Mae', 'Guttierrez', 17, '21200782', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(197, 'Mary Joy', 'Jimenez', 17, '21201437', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(198, 'Cyril', 'Lambayong', 17, '21201163', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(199, 'Angelie', 'Lape', 17, '21201356', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(200, 'Jamine', 'Navarosa', 17, '21201115', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(201, 'Allen Joshua', 'Nicor', 17, '21201430', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(202, 'Charis', 'Onate', 17, '21200984', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(203, 'Ikea', 'Padonio', 17, '20100527', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(204, 'Marissa', 'Pasco', 17, '21200935', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(205, 'Kenneth', 'Sayon', 17, '21201268', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(206, 'Mary Grace', 'Morales', 14, '21100293', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(207, 'Danica', 'Delarmente', 14, '21100613', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(208, 'Irish Dawn', 'Belo', 19, '21300413', 'olebirish', 'uploads/Desert.jpg', 'Registered', '0'),
(211, 'val', 'roushen', 7, '201011231', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(212, 'chrystelle Marie', 'Belecina', 15, '21200363', 'chrys', 'uploads/380903_288008981235527_682004916_n.jpg', 'Registered', '0'),
(213, 'kearl joy', 'bartolome', 18, '21300410', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(214, 'marie', 'rojo', 18, '21300375', 'maayeeh', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0'),
(215, 'cristine', 'trespuer', 18, '21300258', '46985daeea3b221520d064acd575da8052c00ff685fded7af67be52ef1498c4995565afc7bba82f53ed257b791328655d4c794ec1c2d13d7754924d0ff118d4a', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(216, 'arian', 'baldostamon', 18, '21300176', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(217, 'Alyssa', 'David', 17, '21200507', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0'),
(218, 'josie', 'banday', 7, '20100452', 'heaven', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0'),
(219, 'Claire ', 'Blake', 18, '2011120', '123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, '70'),
(2, 32, 'admin/uploads/1036_File_local_media7608260435605246515.docx', '2022-11-24 21:47:51', 'activtiy1', 'Assignemnt-ronnel', 219, '70');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(5, 'admin/uploads/1952_File_local_media7445047041320141820.docx', '2022-11-29 16:34:24', 'sdfsdf', 113, 'fdsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3'),
(4, 148, 113, '3600', '0 out of 0'),
(5, 149, 113, '3600', '0 out of 0'),
(6, 151, 113, '3600', '0 out of 0'),
(7, 150, 113, '3600', '0 out of 0'),
(8, 153, 113, '3600', '1 out of 1'),
(9, 154, 113, '3600', '1 out of 1');

-- --------------------------------------------------------

--
-- Table structure for table `student_number`
--

CREATE TABLE `student_number` (
  `numberID` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `number_student` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_number`
--

INSERT INTO `student_number` (`numberID`, `student_id`, `number_student`) VALUES
(1, 113, '09752398408'),
(4, 215, '09611979458');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(14, 'IS 411A', 'Senior Systems Project 1', '', '<p><span style=\"font-size:medium\"><em>About the Subject</em></span></p>\r\n\r\n<p>This subject comprisea topics about systems development, SDLC methodologies, Conceptual Framework, diagrams such as DFD, ERD and Flowchart and writing a thesis proposal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The project requirement for this subject are:</p>\r\n\r\n<p>Chapters (1-5) Thesis Proposal</p>\r\n\r\n<p>100% Running System at the end of semester</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, '', ''),
(15, 'IS 412', 'Effective Human Communication for IT Professional', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject is intended for IT students to develop or enhance communication skills that will be beneficial especially when used in the business industry. The lesson includes Verbal Communication (Written and Oral), Non-verbal Communication, etc.</p>', 3, '', ''),
(16, 'IS 311', 'Programming Languages', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Learn many of the concepts that underlie all programming languages. Develop a programming style known as functional programming and contrast it with object-oriented programming. Through experience writing programs and studying three different languages, learn the key issues in designing and using programming languages, such as modularity and the complementary benefits of static and dynamic typing. This course is neither particularly theoretical nor just about programming specifics &ndash; it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, you learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs &ndash; in any language.</div>\r\n<h2 class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">&nbsp;</h2>\r\n<pre class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\"><span style=\"font-size: medium;\"><em>&nbsp;Course Syllabus</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">\r\n<ul>\r\n<li>Syntax vs. semantics vs. idioms vs. libraries vs. tools</li>\r\n<li>ML basics (bindings, conditionals, records, functions)</li>\r\n<li>Recursive functions and recursive types</li>\r\n<li>Benefits of no mutation</li>\r\n<li>Algebraic datatypes, pattern matching</li>\r\n<li>Tail recursion</li>\r\n<li>First-class functions and function closures</li>\r\n<li>Lexical scope</li>\r\n<li>Equivalence and effects</li>\r\n<li>Parametric polymorphism and container types</li>\r\n<li>Type inference</li>\r\n<li>Abstract types and modules</li>\r\n<li>Racket basics</li>\r\n<li>Dynamic vs. static typing</li>\r\n<li>Implementing languages, especially higher-order functions</li>\r\n<li>Macro</li>\r\n<li>Ruby basics</li>\r\n<li>Object-oriented programming</li>\r\n<li>Pure object-orientation</li>\r\n<li>Implementing dynamic dispatch</li>\r\n<li>Multiple inheritance, interfaces, and mixins</li>\r\n<li>OOP vs. functional decomposition and extensibility</li>\r\n<li>Subtyping for records, functions, and objects</li>\r\n<li>Subtyping</li>\r\n<li>Class-based subtyping</li>\r\n<li>Subtyping vs. parametric polymorphism; bounded polymorphism</li>\r\n</ul>\r\n</div>', 3, '', ''),
(17, 'IS 413', 'Introduction to the IM Professional and Ethics', '', '<p>This subject discusses about Ethics, E-Commerce, Cybercrime Law, Computer Security, etc.</p>', 0, '', ''),
(22, 'IS 221', 'Application Development', '', '', 3, '', '2nd'),
(23, 'IS 222', 'Network and Internet Technology', '', '', 3, '', '2nd'),
(24, 'IS 223', 'Business Process', '', '', 3, '', '2nd'),
(25, 'IS 224', 'Discrete Structures', '', '', 3, '', '2nd'),
(26, 'IS 227', 'IS Programming 2', '', '', 3, '', '2nd'),
(27, 'SS POL GOV', 'Politics and Governance with Philippine Constitution', '', '', 3, '', '2nd'),
(28, 'LIT 1', 'Philippine  Literature', '', '', 3, '', '2nd'),
(29, 'ACCTG 2', 'Fundamentals of Accounting 2', '', '', 3, '', '2nd'),
(30, 'PE 4', 'Team Sports', '', '', 3, '', '2nd'),
(31, 'IS 302', 'Survey of Programming Languages', '', '', 3, '', '2nd'),
(32, 'IS 303', 'Structured Query Language', '', '', 3, '', '2nd'),
(33, 'IS 321', 'Information System Planning', '', '', 3, '', '2nd'),
(34, 'IS 322', 'Management of Technology', '', '', 3, '', '2nd'),
(35, 'IS 323', 'E-commerce Strategy Architectural', '', '', 3, '', '2nd'),
(36, 'IS 324', 'System Analysis and Design', '', '', 3, '', '2nd'),
(37, 'Law 1', 'Law on Obligation and Contracts', '', '', 3, '', '2nd'),
(38, 'Philo 1', 'Social Philosophy & Logic', '', '', 3, '', '2nd'),
(39, 'MQTB', 'Quantitative Techniques in Business', '', '', 3, '', '2nd'),
(40, 'RIZAL', 'Rizal: Life and Works', '', '<p>COURSE OUTLINE<br />\r\n1. Course Code : RIZAL</p>\r\n\r\n<p>2. Course Title &nbsp;: RIZAL (Rizal Life and Works)<br />\r\n3. Pre-requisite : none<br />\r\n5. Credit/ Class Schedule : 3 units; 3 hrs/week<br />\r\n6. Course Description&nbsp;<br />\r\n1. A critical analysis of Jose Rizal&rsquo;s life and ideas as reflected in his biography, his novels Noli Me Tangere and El Filibusterismo and in his other writings composed of essays and poems to provide the students a value based reference for reacting to certain ideas and behavior.<br />\r\n<br />\r\n<strong>PROGRAM OBJECTIVES</strong><br />\r\n1. To instill in the students human values and cultural refinement through the humanities and social sciences.<br />\r\n2. To inculcate high ethical standards in the students through its integration in the learning activities.<br />\r\n3. To have critical studies and discussions why Rizal is made the national hero of the Philippines.<br />\r\n<br />\r\nTOPICS:&nbsp;<br />\r\n1. A Hero is Born&nbsp;<br />\r\n2. Childhood Days in Calamba<br />\r\n3. School Days in Binan<br />\r\n4. Triumphs in the Ateneo<br />\r\n5. At the UST<br />\r\n6. In Spain<br />\r\n7. Paris to Berlin<br />\r\n8. Noli Me Tangere<br />\r\n9. Elias and Salome<br />\r\n10. Rizal&rsquo;s Tour of Europe with with Viola<br />\r\n11. Back to Calamba<br />\r\n12. HK, Macao and Japan<br />\r\n13. Rizal in Japan<br />\r\n14. Rizal in America<br />\r\n15. Life and Works in London<br />\r\n16. In Gay Paris<br />\r\n17. Rizal in Brussles<br />\r\n18. In Madrid<br />\r\n19. El Filibusterismo<br />\r\n20. In Hong Kong<br />\r\n21. Exile in Dapitan<br />\r\n22. The Trial of Rizal<br />\r\n23. Martyrdom at Bagumbayan<br />\r\n<br />\r\nTextbook and References:<br />\r\n1. Rizal&rsquo;s Life, Works and Writings (The Centennial Edition) by: Gregorio F. Zaide<br />\r\nand Sonia M. Zaide Quezon City, 1988. All Nations Publishing Co.<br />\r\n2. Coates, Austin. Rizal: First Filipino Nationalist and Martyr, Quezon City, UP Press 1999.<br />\r\n3. Constantino, Renato. Veneration Without Understanding. Quezon City, UP Press Inc., 2001.<br />\r\n4. Dela Cruz, W. &amp; Zulueta, M. Rizal: Buhay at Kaisipan. Manila, NBS Publications 2002.<br />\r\n5. Ocampo, Ambeth. Rizal Without the Overcoat (New Edition). Pasig City, anvil Publishing House 2002.<br />\r\n6. Odullo-de Guzman, Maria. Noli Me Tangere and El Filibusterismo. Manila, NBS Publications 1998.<br />\r\n7. Palma, Rafael. Rizal: The Pride of the Malay Race. Manila, Saint Anthony Company 2000.<br />\r\n8.Romero, M.C. &amp; Sta Roman, J. Rizal &amp; the Development of Filipino Consciousness (Third Edition). Manila, JMC Press Inc., 2001.<br />\r\n<br />\r\nCourse Evaluation:<br />\r\n<br />\r\n1. Quizzes : 30 %<br />\r\n2. Exams : 40 %<br />\r\n3. Class Standing : 20 %<br />\r\n- recitation<br />\r\n- attendance<br />\r\n- behavior<br />\r\n4. Final Grade<br />\r\n- 40 % previous grade<br />\r\n- 60 % current grade</p>\r\n', 3, '', '2nd'),
(41, 'IS 411B', 'Senior Systems Project 2', '', '', 3, '', '2nd'),
(42, '1234', 'Sample Subject', '', '<p>Sample Only</p>\r\n', 3, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  `flogin` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`, `flogin`) VALUES
(9, '1001', '46985daeea3b221520d064acd575da8052c00ff685fded7af67be52ef1498c4995565afc7bba82f53ed257b791328655d4c794ec1c2d13d7754924d0ff118d4a', 'Ryan', 'Gamboa', 14, 'uploads/Lilibeth Banaag BS-IT.jpg', 'Abdussamads', 'Registered', 'Deactivated', ''),
(5, '1002', '46985daeea3b221520d064acd575da8052c00ff685fded7af67be52ef1498c4995565afc7bba82f53ed257b791328655d4c794ec1c2d13d7754924d0ff118d4a', 'Lalaine', 'Ramirez', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Deactivated', ''),
(11, '1003', 'aladin', 'Alvine', 'Ramirez', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Deactivated', '0'),
(13, 'test', 'test', 'Gilbert ', 'Manalo', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Deactivated', '0'),
(21, '', '', 'Fe', 'Babao', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', '0'),
(22, '', '', 'Leonado ', 'Fedraja', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', '0'),
(23, '', '', 'Sherwin ', 'Bagon', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', '0'),
(24, '', '', 'Ace Zheridan', 'Gutierrez', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', '0'),
(25, '', '', 'Jerome ', 'Geli', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(191, 5, 29, 25, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(204, 9, 32, 15, 'admin/uploads/thumbnails.jpg', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(42, '<p>asdasdasdasd</p>\r\n', '9', 204, '2023-01-04 23:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(130, 172, 108, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(143, 172, 107, 18),
(144, 172, 110, 18),
(145, 172, 109, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(199, 175, 108, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(212, 175, 107, 13),
(213, 175, 110, 13),
(214, 175, 109, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(268, 178, 108, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(281, 178, 107, 14),
(282, 178, 110, 14),
(283, 178, 109, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(318, 180, 108, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(331, 180, 107, 19),
(332, 180, 110, 19),
(333, 180, 109, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(380, 186, 215, 9),
(383, 186, 113, 9),
(392, 204, 113, 9),
(393, 204, 215, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'teph', 'teph', 'Stephanie', 'villanueva'),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna'),
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(91, 'admin', '2022-12-04 00:26:44', '2022-12-04 00:34:20', 15),
(92, 'admin ', '2022-12-04 00:33:40', '2022-12-04 00:34:20', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `conference_meeting`
--
ALTER TABLE `conference_meeting`
  ADD PRIMARY KEY (`meetingId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `general_post`
--
ALTER TABLE `general_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `sms_notification`
--
ALTER TABLE `sms_notification`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `student_number`
--
ALTER TABLE `student_number`
  ADD PRIMARY KEY (`numberID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conference_meeting`
--
ALTER TABLE `conference_meeting`
  MODIFY `meetingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `general_post`
--
ALTER TABLE `general_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_notification`
--
ALTER TABLE `sms_notification`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_number`
--
ALTER TABLE `student_number`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
