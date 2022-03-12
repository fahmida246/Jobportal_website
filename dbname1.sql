-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 12:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbname1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add contact', 1, 'add_contact'),
(2, 'Can change contact', 1, 'change_contact'),
(3, 'Can delete contact', 1, 'delete_contact'),
(4, 'Can view contact', 1, 'view_contact'),
(5, 'Can add post', 2, 'add_post'),
(6, 'Can change post', 2, 'change_post'),
(7, 'Can delete post', 2, 'delete_post'),
(8, 'Can view post', 2, 'view_post'),
(9, 'Can add postjob', 3, 'add_postjob'),
(10, 'Can change postjob', 3, 'change_postjob'),
(11, 'Can delete postjob', 3, 'delete_postjob'),
(12, 'Can view postjob', 3, 'view_postjob'),
(13, 'Can add feedback', 4, 'add_feedback'),
(14, 'Can change feedback', 4, 'change_feedback'),
(15, 'Can delete feedback', 4, 'delete_feedback'),
(16, 'Can view feedback', 4, 'view_feedback'),
(17, 'Can add company', 5, 'add_company'),
(18, 'Can change company', 5, 'change_company'),
(19, 'Can delete company', 5, 'delete_company'),
(20, 'Can view company', 5, 'view_company'),
(21, 'Can add candidate', 6, 'add_candidate'),
(22, 'Can change candidate', 6, 'change_candidate'),
(23, 'Can delete candidate', 6, 'delete_candidate'),
(24, 'Can view candidate', 6, 'view_candidate'),
(25, 'Can add applyforjob1', 7, 'add_applyforjob1'),
(26, 'Can change applyforjob1', 7, 'change_applyforjob1'),
(27, 'Can delete applyforjob1', 7, 'delete_applyforjob1'),
(28, 'Can view applyforjob1', 7, 'view_applyforjob1'),
(29, 'Can add log entry', 8, 'add_logentry'),
(30, 'Can change log entry', 8, 'change_logentry'),
(31, 'Can delete log entry', 8, 'delete_logentry'),
(32, 'Can view log entry', 8, 'view_logentry'),
(33, 'Can add permission', 9, 'add_permission'),
(34, 'Can change permission', 9, 'change_permission'),
(35, 'Can delete permission', 9, 'delete_permission'),
(36, 'Can view permission', 9, 'view_permission'),
(37, 'Can add group', 10, 'add_group'),
(38, 'Can change group', 10, 'change_group'),
(39, 'Can delete group', 10, 'delete_group'),
(40, 'Can view group', 10, 'view_group'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add content type', 12, 'add_contenttype'),
(46, 'Can change content type', 12, 'change_contenttype'),
(47, 'Can delete content type', 12, 'delete_contenttype'),
(48, 'Can view content type', 12, 'view_contenttype'),
(49, 'Can add session', 13, 'add_session'),
(50, 'Can change session', 13, 'change_session'),
(51, 'Can delete session', 13, 'delete_session'),
(52, 'Can view session', 13, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'admin', 'logentry'),
(10, 'auth', 'group'),
(9, 'auth', 'permission'),
(11, 'auth', 'user'),
(12, 'contenttypes', 'contenttype'),
(7, 'projects', 'applyforjob1'),
(6, 'projects', 'candidate'),
(5, 'projects', 'company'),
(1, 'projects', 'contact'),
(4, 'projects', 'feedback'),
(2, 'projects', 'post'),
(3, 'projects', 'postjob'),
(13, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-10 11:14:11.268710'),
(2, 'auth', '0001_initial', '2022-01-10 11:14:14.542288'),
(3, 'admin', '0001_initial', '2022-01-10 11:14:15.614842'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-10 11:14:15.630289'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-10 11:14:15.671435'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-10 11:14:16.009167'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-10 11:14:16.553942'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-10 11:14:16.628550'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-10 11:14:16.663226'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-10 11:14:17.159702'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-10 11:14:17.166684'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-10 11:14:17.199595'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-10 11:14:17.267415'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-10 11:14:17.330651'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-10 11:14:17.432252'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-10 11:14:17.444634'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-10 11:14:17.530936'),
(18, 'projects', '0001_initial', '2022-01-10 11:14:20.408795'),
(19, 'projects', '0002_applyforjob1', '2022-01-10 11:14:21.047026'),
(20, 'projects', '0003_auto_20220104_2047', '2022-01-10 11:14:22.235620'),
(21, 'projects', '0004_auto_20220104_2150', '2022-01-10 11:14:22.669375'),
(22, 'projects', '0005_applyforjob1_image', '2022-01-10 11:14:22.699651'),
(23, 'projects', '0006_feedback_jobno', '2022-01-10 11:14:22.777790'),
(24, 'projects', '0007_alter_applyforjob1_candidate', '2022-01-10 11:14:22.946625'),
(25, 'projects', '0008_auto_20220110_1713', '2022-01-10 11:14:23.174632'),
(26, 'sessions', '0001_initial', '2022-01-10 11:14:23.210803');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_applyforjob1`
--

CREATE TABLE `projects_applyforjob1` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(10) UNSIGNED NOT NULL CHECK (`pin` >= 0),
  `mobile` int(10) UNSIGNED NOT NULL CHECK (`mobile` >= 0),
  `email` varchar(254) NOT NULL,
  `job_city` varchar(50) NOT NULL,
  `ifile` varchar(100) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `jobno_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_candidate`
--

CREATE TABLE `projects_candidate` (
  `id` bigint(20) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_company`
--

CREATE TABLE `projects_company` (
  `id` bigint(20) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contact`
--

CREATE TABLE `projects_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(122) NOT NULL,
  `email` varchar(122) NOT NULL,
  `phone` varchar(122) NOT NULL,
  `desc` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_feedback`
--

CREATE TABLE `projects_feedback` (
  `id` bigint(20) NOT NULL,
  `title` varchar(122) NOT NULL,
  `feedback` varchar(122) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jobno_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_post`
--

CREATE TABLE `projects_post` (
  `sno` int(11) NOT NULL,
  `title` varchar(122) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(122) NOT NULL,
  `timeStamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_postjob`
--

CREATE TABLE `projects_postjob` (
  `sno` int(11) NOT NULL,
  `title` varchar(122) NOT NULL,
  `companyname` varchar(122) NOT NULL,
  `describtion` longtext NOT NULL,
  `experience` varchar(122) NOT NULL,
  `salary` varchar(122) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `projects_applyforjob1`
--
ALTER TABLE `projects_applyforjob1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_applyforjob1_jobno_id_31a501b1_fk_projects_postjob_sno` (`jobno_id`),
  ADD KEY `projects_applyforjob1_candidate_id_d30bba8d_fk_auth_user_id` (`candidate_id`);

--
-- Indexes for table `projects_candidate`
--
ALTER TABLE `projects_candidate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `projects_company`
--
ALTER TABLE `projects_company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `projects_contact`
--
ALTER TABLE `projects_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_feedback`
--
ALTER TABLE `projects_feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `projects_feedback_jobno_id_1893d862_fk_projects_postjob_sno` (`jobno_id`);

--
-- Indexes for table `projects_post`
--
ALTER TABLE `projects_post`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `projects_postjob`
--
ALTER TABLE `projects_postjob`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `projects_postjob_user_id_2f0b813e_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `projects_applyforjob1`
--
ALTER TABLE `projects_applyforjob1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_candidate`
--
ALTER TABLE `projects_candidate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_company`
--
ALTER TABLE `projects_company`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_contact`
--
ALTER TABLE `projects_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_feedback`
--
ALTER TABLE `projects_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_post`
--
ALTER TABLE `projects_post`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_postjob`
--
ALTER TABLE `projects_postjob`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `projects_applyforjob1`
--
ALTER TABLE `projects_applyforjob1`
  ADD CONSTRAINT `projects_applyforjob1_candidate_id_d30bba8d_fk_auth_user_id` FOREIGN KEY (`candidate_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `projects_applyforjob1_jobno_id_31a501b1_fk_projects_postjob_sno` FOREIGN KEY (`jobno_id`) REFERENCES `projects_postjob` (`sno`);

--
-- Constraints for table `projects_candidate`
--
ALTER TABLE `projects_candidate`
  ADD CONSTRAINT `projects_candidate_user_id_d3a9ebec_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `projects_company`
--
ALTER TABLE `projects_company`
  ADD CONSTRAINT `projects_company_user_id_465b5cc3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `projects_feedback`
--
ALTER TABLE `projects_feedback`
  ADD CONSTRAINT `projects_feedback_jobno_id_1893d862_fk_projects_postjob_sno` FOREIGN KEY (`jobno_id`) REFERENCES `projects_postjob` (`sno`),
  ADD CONSTRAINT `projects_feedback_user_id_9907436a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `projects_postjob`
--
ALTER TABLE `projects_postjob`
  ADD CONSTRAINT `projects_postjob_user_id_2f0b813e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
