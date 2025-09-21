-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2025 at 04:25 AM
-- Server version: 5.7.44-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radius_controller`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rc_city`
--

CREATE TABLE `rc_city` (
  `cty_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rc_documents`
--

CREATE TABLE `rc_documents` (
  `id` int(11) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `type_data` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_dplc`
--

CREATE TABLE `rc_dplc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dplc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_addons`
--

CREATE TABLE `rc_fin_addons` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addonPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `create_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_commissionInvoice`
--

CREATE TABLE `rc_fin_commissionInvoice` (
  `id` int(11) NOT NULL,
  `tranId` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `franchiseId` int(11) NOT NULL,
  `dealerId` int(11) DEFAULT NULL,
  `subdealerId` int(11) DEFAULT NULL,
  `juniordealerId` int(11) DEFAULT NULL,
  `roles_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `type` enum('Account Recharged','Add Days','Refund') NOT NULL,
  `adminCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `admincStatus` varchar(2) NOT NULL DEFAULT 'U',
  `franchiseCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `franchisecStatus` varchar(2) NOT NULL DEFAULT 'U',
  `dealerCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dealercStatus` varchar(2) NOT NULL DEFAULT 'U',
  `subdealerCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `subdealercStatus` varchar(2) NOT NULL DEFAULT 'U',
  `ownerPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `adminTranId` varchar(100) DEFAULT NULL,
  `franchiseTranId` varchar(100) DEFAULT NULL,
  `dealerTranId` varchar(100) DEFAULT NULL,
  `subdealerTranId` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_commissionTopupInvoice`
--

CREATE TABLE `rc_fin_commissionTopupInvoice` (
  `id` int(11) NOT NULL,
  `prefix` int(11) NOT NULL DEFAULT '1',
  `tranID` varchar(50) NOT NULL,
  `senderId` int(11) NOT NULL,
  `senderName` varchar(50) NOT NULL,
  `recevierId` int(11) DEFAULT NULL,
  `recevierName` varchar(244) DEFAULT NULL,
  `payment_type` varchar(100) NOT NULL,
  `Invtype` enum('Topup','Commission') NOT NULL,
  `amount` decimal(30,2) NOT NULL DEFAULT '0.00',
  `remarks` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_managerInvoice`
--

CREATE TABLE `rc_fin_managerInvoice` (
  `id` int(11) NOT NULL,
  `prefix` int(11) NOT NULL DEFAULT '1',
  `tranID` varchar(50) NOT NULL,
  `senderId` int(11) NOT NULL,
  `senderName` varchar(50) NOT NULL,
  `recevierId` int(11) DEFAULT NULL,
  `recevierName` varchar(244) DEFAULT NULL,
  `payment_type` varchar(100) NOT NULL,
  `Invtype` enum('Topup','Commission') NOT NULL,
  `amount` decimal(30,2) NOT NULL DEFAULT '0.00',
  `remarks` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_managerLedger`
--

CREATE TABLE `rc_fin_managerLedger` (
  `id` int(11) NOT NULL,
  `tranId` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `particular` varchar(200) NOT NULL,
  `debit` decimal(30,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(30,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(30,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_managerwalletLedger`
--

CREATE TABLE `rc_fin_managerwalletLedger` (
  `id` int(11) NOT NULL,
  `tranId` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `particular` varchar(200) NOT NULL,
  `debit` decimal(30,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(30,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(30,2) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_serviceCommission`
--

CREATE TABLE `rc_fin_serviceCommission` (
  `id` int(11) NOT NULL,
  `assignBy` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `srvid` int(11) NOT NULL,
  `adminCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `franchiseCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dealerCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `subdealerCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_userInvoice`
--

CREATE TABLE `rc_fin_userInvoice` (
  `id` int(11) NOT NULL,
  `tranID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `renewDate` date NOT NULL,
  `lastExpirationDate` varchar(30) NOT NULL,
  `newExpirationDate` varchar(50) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  `franchiseId` int(11) DEFAULT NULL,
  `dealerId` int(11) DEFAULT NULL,
  `subdealerId` int(11) DEFAULT NULL,
  `juniordealerID` int(11) DEFAULT NULL,
  `srvid` int(11) NOT NULL,
  `srvname` varchar(100) NOT NULL,
  `payment_method` enum('Cash','Online') NOT NULL,
  `invType` enum('Account Recharged','Add Days','Refund') NOT NULL,
  `InvType2` enum('Single recharge','Bulk Charge') NOT NULL,
  `basePrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `srbTax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `advTax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `adminPrice` decimal(10,2) DEFAULT '0.00',
  `adminCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `franchisePrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `franchiseCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dealerPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dealerCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `subdealerPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `subdealerCommission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `juniorPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addons` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ownerPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '1',
  `recharge_type` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_fin_userLedger`
--

CREATE TABLE `rc_fin_userLedger` (
  `id` int(11) NOT NULL,
  `tranId` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `particular` varchar(200) NOT NULL,
  `debit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_general_settings`
--

CREATE TABLE `rc_general_settings` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `exp_pool` varchar(20) DEFAULT NULL,
  `disable_pool` varchar(20) DEFAULT NULL,
  `com_name` varchar(50) DEFAULT NULL,
  `com_address` varchar(100) DEFAULT NULL,
  `com_mobile` varchar(50) DEFAULT NULL,
  `com_phone` varchar(50) DEFAULT NULL,
  `com_email` varchar(50) DEFAULT NULL,
  `com_ntn` varchar(10) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_logs`
--

CREATE TABLE `rc_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `particular` varchar(244) NOT NULL,
  `actionBy` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_managers`
--

CREATE TABLE `rc_managers` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `managername` varchar(50) NOT NULL,
  `token` varchar(244) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `address` varchar(244) DEFAULT NULL,
  `cnic` varchar(244) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `roles_id` int(20) NOT NULL DEFAULT '2',
  `balance` decimal(30,2) NOT NULL DEFAULT '0.00',
  `ledgerBalance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `remarks` varchar(244) DEFAULT NULL,
  `exp_time` varchar(40) NOT NULL DEFAULT '00:00:00',
  `enablemanager` tinyint(1) NOT NULL DEFAULT '1',
  `cty_id` int(11) DEFAULT NULL,
  `aggr_id` int(11) DEFAULT NULL,
  `dplc_id` int(11) DEFAULT NULL,
  `ref_id` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_managers_hierarchy`
--

CREATE TABLE `rc_managers_hierarchy` (
  `id` int(11) NOT NULL,
  `managername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `superadminId` int(11) NOT NULL DEFAULT '15',
  `adminId` int(11) NOT NULL,
  `franchiseId` int(11) DEFAULT NULL,
  `dealerId` int(11) DEFAULT NULL,
  `subdealerId` int(11) DEFAULT NULL,
  `juniordealerId` int(11) DEFAULT NULL,
  `roles_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_managers_permission`
--

CREATE TABLE `rc_managers_permission` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `perm_ExpireEdit` tinyint(4) NOT NULL,
  `perm_RolesList` tinyint(4) NOT NULL,
  `perm_RolesEdit` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_manager_domain_details`
--

CREATE TABLE `rc_manager_domain_details` (
  `id` int(11) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `logo_code` varchar(244) DEFAULT NULL,
  `assignId` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_nas`
--

CREATE TABLE `rc_nas` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_ip` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `api_username` varchar(100) DEFAULT NULL,
  `api_password` varchar(100) DEFAULT NULL,
  `api_port` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_policy`
--

CREATE TABLE `rc_policy` (
  `policy_id` tinyint(4) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_pool`
--

CREATE TABLE `rc_pool` (
  `pool_id` tinyint(4) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_radreply`
--

CREATE TABLE `rc_radreply` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `op` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(253) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rc_roles`
--

CREATE TABLE `rc_roles` (
  `roles_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_server_config`
--

CREATE TABLE `rc_server_config` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `api_url` varchar(100) DEFAULT NULL,
  `api_username` varchar(20) DEFAULT NULL,
  `api_password` varchar(20) DEFAULT NULL,
  `api_tokken` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_services`
--

CREATE TABLE `rc_services` (
  `srvid` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `srvname` varchar(50) NOT NULL,
  `descr` varchar(244) DEFAULT NULL,
  `downrate` int(11) NOT NULL,
  `uprate` int(11) NOT NULL,
  `pool_id` tinyint(4) DEFAULT NULL,
  `policy_id` int(11) NOT NULL DEFAULT '0',
  `custattr` varchar(244) DEFAULT NULL,
  `recharge_type` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '1',
  `basePrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_type` int(11) NOT NULL DEFAULT '0' COMMENT '0 = inclusive, 1 = exclusive',
  `taxPercentage` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Tax percentage (e.g., 15.50)',
  `srbTax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `advTax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `rc_services`
--
DELIMITER $$
CREATE TRIGGER `service_commission_admin` AFTER INSERT ON `rc_services` FOR EACH ROW INSERT INTO rc_fin_serviceCommission (assignBy,user_id,srvid) VALUES (15,NEW.user_id,NEW.srvid)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rc_services_groupname`
--

CREATE TABLE `rc_services_groupname` (
  `id` int(11) NOT NULL,
  `name` varchar(244) NOT NULL,
  `desc` varchar(244) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_services_radgroupreply`
--

CREATE TABLE `rc_services_radgroupreply` (
  `id` int(10) NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_services_radusergroup`
--

CREATE TABLE `rc_services_radusergroup` (
  `id` int(10) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rc_service_scheduler`
--

CREATE TABLE `rc_service_scheduler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `srvid` int(11) DEFAULT NULL,
  `starttime` time DEFAULT NULL,
  `endtime` time DEFAULT NULL,
  `groupname` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rc_subscriber`
--

CREATE TABLE `rc_subscriber` (
  `subscriber_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(40) NOT NULL,
  `subscriber_enable` tinyint(1) NOT NULL DEFAULT '1',
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(240) DEFAULT NULL,
  `cnic` varchar(50) NOT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `expiration` datetime NOT NULL,
  `owner_id` int(11) NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  `franchiseId` int(11) DEFAULT NULL,
  `dealerId` int(11) DEFAULT NULL,
  `subdealerId` int(11) DEFAULT NULL,
  `juniordealerId` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `srvid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_subscriber`
--

CREATE TABLE `tmp_subscriber` (
  `id` int(11) NOT NULL,
  `username` varchar(244) DEFAULT NULL,
  `password` varchar(244) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `srvid` int(11) DEFAULT NULL,
  `cnic` varchar(50) DEFAULT NULL,
  `address` varchar(244) DEFAULT NULL,
  `expiration` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `uploadBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `serviceStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `add_manager` AFTER INSERT ON `users` FOR EACH ROW INSERT INTO rc_managers (user_id,managername,email,roles_id) VALUES (NEW.id,NEW.name,NEW.email,NEW.roles_id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rc_genertal_setting` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    IF NEW.roles_id = '2' THEN
        INSERT INTO rc_general_settings (user_id)
        VALUES (NEW.id);
    
       
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rc_server_config` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    IF NEW.roles_id = '2' THEN
        INSERT INTO rc_server_config (user_id)
        VALUES (NEW.id);
    
       
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_manager_permission` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    IF NEW.roles_id = '2' THEN
        INSERT INTO rc_managers_permission (user_id, perm_ExpireEdit, Perm_RolesList, Perm_RolesEdit)
        VALUES (NEW.id, 1,1,1);
    ELSE
        INSERT INTO rc_managers_permission (user_id, perm_ExpireEdit, Perm_RolesList, Perm_RolesEdit)
        VALUES (NEW.id, 0, 0, 0);
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rc_city`
--
ALTER TABLE `rc_city`
  ADD PRIMARY KEY (`cty_id`);

--
-- Indexes for table `rc_documents`
--
ALTER TABLE `rc_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_dplc`
--
ALTER TABLE `rc_dplc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rc_dplc_cty_id_foreign` (`cty_id`);

--
-- Indexes for table `rc_fin_addons`
--
ALTER TABLE `rc_fin_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_fin_commissionInvoice`
--
ALTER TABLE `rc_fin_commissionInvoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tranId` (`tranId`);

--
-- Indexes for table `rc_fin_commissionTopupInvoice`
--
ALTER TABLE `rc_fin_commissionTopupInvoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tranID` (`tranID`);

--
-- Indexes for table `rc_fin_managerInvoice`
--
ALTER TABLE `rc_fin_managerInvoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tranID` (`tranID`);

--
-- Indexes for table `rc_fin_managerLedger`
--
ALTER TABLE `rc_fin_managerLedger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_fin_managerwalletLedger`
--
ALTER TABLE `rc_fin_managerwalletLedger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_fin_serviceCommission`
--
ALTER TABLE `rc_fin_serviceCommission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_fin_userInvoice`
--
ALTER TABLE `rc_fin_userInvoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tranID` (`tranID`);

--
-- Indexes for table `rc_fin_userLedger`
--
ALTER TABLE `rc_fin_userLedger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_general_settings`
--
ALTER TABLE `rc_general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rc_logs`
--
ALTER TABLE `rc_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_managers`
--
ALTER TABLE `rc_managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`user_id`);

--
-- Indexes for table `rc_managers_hierarchy`
--
ALTER TABLE `rc_managers_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_managers_permission`
--
ALTER TABLE `rc_managers_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `rc_manager_domain_details`
--
ALTER TABLE `rc_manager_domain_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_nas`
--
ALTER TABLE `rc_nas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rc_policy`
--
ALTER TABLE `rc_policy`
  ADD PRIMARY KEY (`policy_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rc_pool`
--
ALTER TABLE `rc_pool`
  ADD PRIMARY KEY (`pool_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rc_radreply`
--
ALTER TABLE `rc_radreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_roles`
--
ALTER TABLE `rc_roles`
  ADD PRIMARY KEY (`roles_id`);

--
-- Indexes for table `rc_server_config`
--
ALTER TABLE `rc_server_config`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `rc_services`
--
ALTER TABLE `rc_services`
  ADD PRIMARY KEY (`srvid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pool_id` (`pool_id`);

--
-- Indexes for table `rc_services_groupname`
--
ALTER TABLE `rc_services_groupname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_services_radgroupreply`
--
ALTER TABLE `rc_services_radgroupreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_services_radusergroup`
--
ALTER TABLE `rc_services_radusergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_service_scheduler`
--
ALTER TABLE `rc_service_scheduler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_subscriber`
--
ALTER TABLE `rc_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD KEY `srvid` (`srvid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tmp_subscriber`
--
ALTER TABLE `tmp_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_city`
--
ALTER TABLE `rc_city`
  MODIFY `cty_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_documents`
--
ALTER TABLE `rc_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_dplc`
--
ALTER TABLE `rc_dplc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_addons`
--
ALTER TABLE `rc_fin_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_commissionInvoice`
--
ALTER TABLE `rc_fin_commissionInvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_commissionTopupInvoice`
--
ALTER TABLE `rc_fin_commissionTopupInvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_managerInvoice`
--
ALTER TABLE `rc_fin_managerInvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_managerLedger`
--
ALTER TABLE `rc_fin_managerLedger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_managerwalletLedger`
--
ALTER TABLE `rc_fin_managerwalletLedger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_serviceCommission`
--
ALTER TABLE `rc_fin_serviceCommission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_userInvoice`
--
ALTER TABLE `rc_fin_userInvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_fin_userLedger`
--
ALTER TABLE `rc_fin_userLedger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_general_settings`
--
ALTER TABLE `rc_general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_logs`
--
ALTER TABLE `rc_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_managers`
--
ALTER TABLE `rc_managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_managers_hierarchy`
--
ALTER TABLE `rc_managers_hierarchy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_managers_permission`
--
ALTER TABLE `rc_managers_permission`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_manager_domain_details`
--
ALTER TABLE `rc_manager_domain_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_nas`
--
ALTER TABLE `rc_nas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_policy`
--
ALTER TABLE `rc_policy`
  MODIFY `policy_id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_pool`
--
ALTER TABLE `rc_pool`
  MODIFY `pool_id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_radreply`
--
ALTER TABLE `rc_radreply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_roles`
--
ALTER TABLE `rc_roles`
  MODIFY `roles_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_services`
--
ALTER TABLE `rc_services`
  MODIFY `srvid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_services_groupname`
--
ALTER TABLE `rc_services_groupname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_services_radgroupreply`
--
ALTER TABLE `rc_services_radgroupreply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_services_radusergroup`
--
ALTER TABLE `rc_services_radusergroup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_service_scheduler`
--
ALTER TABLE `rc_service_scheduler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_subscriber`
--
ALTER TABLE `rc_subscriber`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmp_subscriber`
--
ALTER TABLE `tmp_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rc_dplc`
--
ALTER TABLE `rc_dplc`
  ADD CONSTRAINT `rc_dplc_cty_id_foreign` FOREIGN KEY (`cty_id`) REFERENCES `rc_city` (`cty_id`) ON DELETE CASCADE;

--
-- Constraints for table `rc_general_settings`
--
ALTER TABLE `rc_general_settings`
  ADD CONSTRAINT `rc_general_settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rc_managers`
--
ALTER TABLE `rc_managers`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rc_nas`
--
ALTER TABLE `rc_nas`
  ADD CONSTRAINT `rc_nas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rc_pool`
--
ALTER TABLE `rc_pool`
  ADD CONSTRAINT `rc_pool_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rc_server_config`
--
ALTER TABLE `rc_server_config`
  ADD CONSTRAINT `rc_server_config_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rc_services`
--
ALTER TABLE `rc_services`
  ADD CONSTRAINT `rc_services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rc_services_ibfk_2` FOREIGN KEY (`pool_id`) REFERENCES `rc_pool` (`pool_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rc_subscriber`
--
ALTER TABLE `rc_subscriber`
  ADD CONSTRAINT `rc_subscriber_ibfk_1` FOREIGN KEY (`srvid`) REFERENCES `rc_services` (`srvid`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
