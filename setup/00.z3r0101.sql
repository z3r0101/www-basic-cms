-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2021 at 06:54 AM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `CMS_Users_Id` int(11) NOT NULL,
  `CMS_Users_Roles_Uid` int(11) NOT NULL DEFAULT 0,
  `CMS_Users_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CMS_Users_Password` text COLLATE utf8_unicode_ci NOT NULL,
  `CMS_Users_Name_First` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CMS_Users_Name_Last` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CMS_Users_Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CMS_Users_Super_Admin` int(11) NOT NULL DEFAULT 0 COMMENT '[0: No, 1: Yes]',
  `CMS_Users_Type` int(11) NOT NULL DEFAULT 0,
  `CMS_Users_Access` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMS_Users_Status` int(11) NOT NULL DEFAULT 0,
  `CMS_Users_Status_SSO` int(11) NOT NULL DEFAULT 0 COMMENT '[0: None, 1: For approval, 2: Approved, 3: Rejected]',
  `CMS_Users_Date_Login` datetime DEFAULT NULL,
  `CMS_Users_Date_Created` datetime DEFAULT NULL,
  `CMS_Users_Date_LastActivity` datetime DEFAULT NULL,
  `CMS_Users_Date_LastLogin` datetime DEFAULT NULL,
  `CMS_Users_SessionId` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMS_Users_Website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CMS_Editor_IP` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cms_CreatedById` int(11) NOT NULL DEFAULT 0,
  `cms_CreatedByName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cms_CreatedDate` datetime DEFAULT NULL,
  `cms_ModifiedById` int(11) NOT NULL DEFAULT 0,
  `cms_ModifiedByName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cms_ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users_login`
--

CREATE TABLE `cms_users_login` (
  `CMS_Users_Login_Id` int(11) NOT NULL,
  `CMS_Users_Id` int(11) NOT NULL,
  `CMS_Users_SessionId` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMS_Users_Login_DateTime` datetime DEFAULT NULL,
  `CMS_Users_Login_Activity_DateTime` datetime DEFAULT NULL,
  `CMS_Users_Login_ClientIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CMS_Users_Login_Data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMS_Users_Login_Type` int(11) NOT NULL DEFAULT 0 COMMENT '[0: Local, 1: SSO]',
  `CMS_Users_Login_SSO_Id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `CMS_Users_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `cms_users_login`
--
ALTER TABLE `cms_users_login`
  MODIFY `CMS_Users_Login_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;