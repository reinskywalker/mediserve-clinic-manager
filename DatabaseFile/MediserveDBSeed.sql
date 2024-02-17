-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 11:04 PM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `phone`, `doctor`, `date`, `fee`, `message`, `status`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(16, 'John Doe', 'john.doe@example.com', '0123456789', 'Dr. Smith', '2023-09-01', '500', 'Appointment confirmed', 'Pending', '3', '3', '2024-02-17 21:09:07', '2024-02-17 21:09:07'),
(17, 'Jane Smith', 'jane.smith@example.com', '0987654321', 'Dr. Johnson', '2023-09-02', '700', 'Appointment rescheduled', 'Rescheduled', '4', '4', '2024-02-17 21:09:07', '2024-02-17 21:09:07'),
(18, 'Michael Brown', 'michael.brown@example.com', '0123456789', 'Dr. Williams', '2023-09-03', '500', 'Appointment confirmed', 'Pending', '5', '5', '2024-02-17 21:09:07', '2024-02-17 21:09:07'),
(19, 'Emily Johnson', 'emily.johnson@example.com', '0987654321', 'Dr. Taylor', '2023-09-04', '700', 'Appointment cancelled', 'Cancelled', '6', '6', '2024-02-17 21:09:07', '2024-02-17 21:09:07'),
(20, 'William Miller', 'william.miller@example.com', '0123456789', 'Dr. Anderson', '2023-09-05', '500', 'Appointment confirmed', 'Pending', '7', '7', '2024-02-17 21:09:07', '2024-02-17 21:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_histories`
--

CREATE TABLE `appointment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `fee` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_histories`
--

INSERT INTO `appointment_histories` (`id`, `username`, `email`, `phone`, `user_id`, `doctor`, `doctor_id`, `fee`, `message`, `status`, `appointment_id`, `created_at`, `updated_at`) VALUES
(12, 'John Doe', 'john.doe@example.com', '0123456789', 3, 'Dr. Smith', 3, '500', 'Appointment confirmed', 'Pending', 16, '2023-08-25 02:00:00', '2024-02-17 20:57:44'),
(13, 'Jane Smith', 'jane.smith@example.com', '0987654321', 4, 'Dr. Johnson', 4, '700', 'Appointment rescheduled', 'Rescheduled', 17, '2023-08-26 03:00:00', '2024-02-17 20:57:44'),
(14, 'Michael Brown', 'michael.brown@example.com', '0123456789', 5, 'Dr. Williams', 5, '500', 'Appointment confirmed', 'Pending', 18, '2023-08-27 04:00:00', '2024-02-17 20:57:44'),
(15, 'Emily Johnson', 'emily.johnson@example.com', '0987654321', 6, 'Dr. Taylor', 6, '700', 'Appointment cancelled', 'Cancelled', 19, '2023-08-28 05:00:00', '2024-02-17 20:57:44'),
(16, 'William Miller', 'william.miller@example.com', '0123456789', 7, 'Dr. Anderson', 7, '500', 'Appointment confirmed', 'Pending', 20, '2023-08-29 06:00:00', '2024-02-17 20:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `blog_type` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=Published, 0=Published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category`, `title`, `slug`, `image`, `description`, `blog_type`, `date`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'COVID-19 Risk Management', 'covid-19-risk', 'admin-assets/assets/image/blog/1635437994.jpg', 'Walking (also known as ambulation) is one of the main gaits of terrestrial locomotion among legged animals. Walking is typically slower than running and other gaits. Walking is defined by an \'inverted pendulum\' gait in which the body vaults over the stiff limb or limbs with each step. This applies regardless of the usable number of limbs—even arthropods, with six, eight, or more limbs, walk.', 'latest', '2023-08-18', 1, '2023-08-16 16:58:55', '2023-08-16 16:58:55'),
(3, 2, 'Walking daily new', 'Walking-daily-new', 'admin-assets/assets/image/blog/924720193.jpg', 'Walking (also known as ambulation) is one of the main gaits of terrestrial locomotion among legged animals. Walking is typically slower than running and other gaits. Walking is defined', 'latest', '2023-08-19', NULL, '2023-08-16 17:44:41', '2023-08-17 12:10:21'),
(4, 2, 'Hello world new', 'Hello-world-new', 'admin-assets/assets/image/blog/1531185272.jpg', 'cgdhcdhc  dchuidshcgduifduiacfyhsduia hghasuihcfasduhcuiasd hghsdhdcsgh', 'latest', '2023-08-18', NULL, '2023-08-17 11:28:55', '2023-08-17 12:06:33'),
(5, 2, 'Youga Dialy', 'Youga-Dialy', 'admin-assets/assets/image/blog/1234313417.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'latest', '2023-08-22', 1, '2023-08-21 10:27:12', '2023-08-21 10:27:12'),
(6, 2, 'Meditation', 'Meditation', 'admin-assets/assets/image/blog/79039071.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'popular', '2023-08-22', 1, '2023-08-21 10:28:18', '2023-08-21 10:28:18'),
(7, 2, 'Daily Gym', 'Daily-Gym', 'admin-assets/assets/image/blog/875648951.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'trending', '2023-08-21', 1, '2023-08-21 10:28:44', '2023-08-21 10:28:44'),
(8, 2, 'Fitness is Necessary', 'Fitness-is-Necessary', 'admin-assets/assets/image/blog/1823735945.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'trending', '2023-08-22', 1, '2023-08-21 10:29:37', '2023-08-21 10:29:37'),
(9, 2, 'Happy Lunch', 'Happy-Lunch', 'admin-assets/assets/image/blog/839915877.jpg', 'sdvfdhbg dfhdbfuyhfcuydh', 'latest', '2023-08-22', 1, '2023-08-21 11:28:11', '2023-08-21 11:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COVID-19', 1, '2023-08-16 15:31:51', '2023-08-16 15:31:51'),
(2, 'Fitness', 1, '2023-08-16 15:50:27', '2023-08-16 15:50:27'),
(3, 'Jogging', 1, '2023-08-16 15:50:37', '2023-08-16 15:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `phone`, `speciality`, `room`, `time`, `day`, `fee`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Dr. Emily Johnson', '555-1234', 'Pediatrics', '105', '9:00 AM to 1:00 PM', 'Monday, Wednesday, Friday', '300', 'Dr. Emily Johnson is a specialist in pediatrics with extensive experience in child healthcare.', 'admin-assets/assets/doctor-image/emily_johnson.jpg', '2024-02-17 20:37:52', '2024-02-17 20:37:52'),
(4, 'Dr. Michael Smith', '555-5678', 'Orthopedics', '215', '8:00 AM to 12:00 PM', 'Tuesday, Thursday', '400', 'Dr. Michael Smith specializes in orthopedic surgery and has a track record of successful joint replacements and fracture repairs.', 'admin-assets/assets/doctor-image/michael_smith.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(5, 'Dr. Sarah Wilson', '555-9876', 'Dermatology', '310', '9:00 AM to 3:00 PM', 'Monday, Wednesday', '350', 'Dr. Sarah Wilson is a dermatologist known for her expertise in treating various skin conditions and performing cosmetic procedures.', 'admin-assets/assets/doctor-image/sarah_wilson.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(6, 'Dr. Robert Garcia', '555-2468', 'Neurology', '120', '10:00 AM to 4:00 PM', 'Wednesday, Friday', '450', 'Dr. Robert Garcia is a neurologist specializing in diagnosing and treating disorders of the nervous system, including Parkinsons disease and epilepsy.', 'admin-assets/assets/doctor-image/robert_garcia.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(7, 'Dr. Jennifer Lee', '555-1357', 'Ophthalmology', '402', '8:00 AM to 2:00 PM', 'Monday, Thursday', '380', 'Dr. Jennifer Lee is an ophthalmologist with expertise in eye surgery and vision correction procedures such as LASIK and cataract surgery.', 'admin-assets/assets/doctor-image/jennifer_lee.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(8, 'Dr. David Rodriguez', '555-3698', 'Cardiology', '318', '9:00 AM to 5:00 PM', 'Tuesday, Thursday, Saturday', '500', 'Dr. David Rodriguez is a cardiologist specializing in diagnosing and treating heart conditions, including heart attacks and arrhythmias.', 'admin-assets/assets/doctor-image/david_rodriguez.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(9, 'Dr. Michelle Nguyen', '555-8745', 'Gynecology', '220', '10:00 AM to 3:00 PM', 'Monday, Wednesday, Friday', '380', 'Dr. Michelle Nguyen is a gynecologist providing comprehensive care for women, including reproductive health and prenatal care.', 'admin-assets/assets/doctor-image/michelle_nguyen.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(11, 'Dr. Amanda White', '555-7890', 'Psychiatry', '415', '10:00 AM to 4:00 PM', 'Monday, Wednesday, Friday', '400', 'Dr. Amanda White is a psychiatrist offering compassionate care for patients with mental health disorders, including depression, anxiety, and schizophrenia.', 'admin-assets/assets/doctor-image/amanda_white.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(12, 'Dr. Daniel Taylor', '555-4567', 'Pulmonology', '312', '8:00 AM to 1:00 PM', 'Wednesday, Friday', '430', 'Dr. Daniel Taylor is a pulmonologist specializing in diagnosing and treating diseases of the respiratory system, such as asthma, COPD, and lung cancer.', 'admin-assets/assets/doctor-image/daniel_taylor.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54'),
(13, 'Dr. Jessica Martinez', '555-2314', 'Endocrinology', '408', '9:00 AM to 3:00 PM', 'Tuesday, Thursday', '380', 'Dr. Jessica Martinez is an endocrinologist specializing in hormonal disorders, including diabetes, thyroid diseases, and hormonal imbalances.', 'admin-assets/assets/doctor-image/jessica_martinez.jpg', '2024-02-17 20:46:54', '2024-02-17 20:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `sku`, `price`, `quantity`, `description`, `image`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Chicken Burger', 'CB001', '150', 50, 'Delicious chicken burger with cheese and vegetables', 'admin-assets/assets/food/chicken_burger.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(9, 'Vegetable Pizza', 'VP002', '200', 40, 'Freshly made pizza topped with a variety of vegetables', 'admin-assets/assets/food/vegetable_pizza.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(10, 'Spaghetti Bolognese', 'SB003', '180', 60, 'Classic Italian spaghetti with rich Bolognese sauce', 'admin-assets/assets/food/spaghetti_bolognese.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(11, 'Fried Rice', 'FR004', '120', 70, 'Savory fried rice with mixed vegetables and chicken', 'admin-assets/assets/food/fried_rice.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(12, 'Grilled Salmon', 'GS005', '250', 30, 'Grilled salmon fillet served with roasted vegetables', 'admin-assets/assets/food/grilled_salmon.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(13, 'Caesar Salad', 'CS006', '100', 80, 'Fresh Caesar salad with crisp lettuce, croutons, and Caesar dressing', 'admin-assets/assets/food/caesar_salad.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(14, 'Beef Tacos', 'BT007', '170', 45, 'Tasty beef tacos with salsa, lettuce, and cheese', 'admin-assets/assets/food/beef_tacos.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(15, 'Cheese Sandwich', 'CS008', '90', 65, 'Classic cheese sandwich with melted cheese on toasted bread', 'admin-assets/assets/food/cheese_sandwich.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(16, 'Chocolate Cake', 'CC009', '180', 55, 'Decadent chocolate cake with layers of rich chocolate frosting', 'admin-assets/assets/food/chocolate_cake.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27'),
(17, 'Fresh Fruit Salad', 'FS010', '80', 75, 'Refreshing fruit salad with a mix of seasonal fruits', 'admin-assets/assets/food/fruit_salad.jpg', NULL, NULL, '2024-02-17 21:12:27', '2024-02-17 21:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `name`, `code`, `price`, `room`, `description`, `created_at`, `updated_at`) VALUES
(4, 'MD. Fahim Rahman', 'DLKJNQ', '100', '8', 'Blood Test', '2024-02-17 21:13:08', '2024-02-17 21:13:08'),
(5, 'Dr. Sania Khan', 'JHGUIP', '150', '5', 'X-ray Examination', '2024-02-17 21:13:08', '2024-02-17 21:13:08'),
(6, 'Dr. Anisur Rahman', 'KPOJNH', '120', '10', 'Urine Analysis', '2024-02-17 21:13:08', '2024-02-17 21:13:08'),
(7, 'Dr. Sumaiya Ahmed', 'QWEJAK', '200', '15', 'MRI Scan', '2024-02-17 21:13:08', '2024-02-17 21:13:08'),
(8, 'MD. Kamal Hossain', 'LYTHDC', '80', '3', 'ECG Test', '2024-02-17 21:13:08', '2024-02-17 21:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `lab_carts`
--

CREATE TABLE `lab_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_orders`
--

CREATE TABLE `lab_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_orders`
--

INSERT INTO `lab_orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `test_name`, `test_id`, `price`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(10, 'John Doe', 'john@example.com', '0123456789', '123 Main St', 1, 'Blood Test', 1, '150', 'Paid', 'Delivered', '2023-09-10 08:00:00', '2023-09-10 08:00:00'),
(11, 'Jane Doe', 'jane@example.com', '9876543210', '456 Elm St', 2, 'Urine Analysis', 2, '100', 'Paid', 'Delivered', '2023-09-10 09:00:00', '2023-09-10 09:00:00'),
(12, 'Alice Smith', 'alice@example.com', '5551234567', '789 Oak St', 3, 'MRI Scan', 3, '500', 'Paid', 'Processing', '2023-09-10 10:00:00', '2023-09-10 10:00:00'),
(13, 'Bob Johnson', 'bob@example.com', '3334567890', '101 Pine St', 4, 'X-ray', 4, '200', 'Cash On Delivery', 'Processing', '2023-09-10 11:00:00', '2023-09-10 11:00:00'),
(14, 'Eva Green', 'eva@example.com', '4447890123', '202 Cedar St', 5, 'Ultrasound', 5, '300', NULL, 'Pending', '2023-09-10 12:00:00', '2023-09-10 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `medi_carts`
--

CREATE TABLE `medi_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medi_orders`
--

CREATE TABLE `medi_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `delivery_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medi_orders`
--

INSERT INTO `medi_orders` (`id`, `u_name`, `m_name`, `email`, `phone`, `user_id`, `m_id`, `price`, `quantity`, `vendor`, `date`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(11, 'John Doe', 'Paracetamol', 'johndoe@example.com', '1234567890', '3', '1', '100', '2', 'PharmaX', '2023-09-01', 'Paid', 'Processing', '2024-02-17 21:30:37', '2024-02-17 21:30:37'),
(12, 'Jane Smith', 'Amoxicillin', 'janesmith@example.com', '2345678901', '4', '2', '150', '3', 'PharmaY', '2023-09-02', 'Cash On Delivery', 'Processing', '2024-02-17 21:30:37', '2024-02-17 21:30:37'),
(13, 'Alice Johnson', 'Ibuprofen', 'alicejohnson@example.com', '3456789012', '5', '3', '75', '1', 'PharmaZ', '2023-09-03', 'Paid', 'Delivered', '2024-02-17 21:30:37', '2024-02-17 21:30:37'),
(14, 'Bob Williams', 'Aspirin', 'bobwilliams@example.com', '4567890123', '6', '4', '200', '2', 'PharmaX', '2023-09-04', 'Cash On Delivery', 'Processing', '2024-02-17 21:30:37', '2024-02-17 21:30:37'),
(15, 'Emily Davis', 'Ciprofloxacin', 'emilydavis@example.com', '5678901234', '7', '5', '80', '4', 'PharmaY', '2023-09-05', 'Paid', 'Processing', '2024-02-17 21:30:37', '2024-02-17 21:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_14_202635_create_sessions_table', 1),
(9, '2023_08_15_175922_create_notifications_table', 4),
(17, '2023_08_15_204354_create_contacts_table', 7),
(19, '2023_08_16_211158_create_categories_table', 8),
(21, '2023_08_16_204115_create_blogs_table', 9),
(30, '2023_08_17_002928_create_food_table', 12),
(31, '2023_08_17_050210_create_orders_table', 13),
(32, '2023_08_15_000441_create_doctors_table', 14),
(34, '2023_08_15_023958_create_appointments_table', 15),
(35, '2023_08_21_222218_create_appointment_histories_table', 16),
(39, '2014_10_12_000000_create_users_table', 17),
(41, '2023_08_24_185030_create_pres_table', 18),
(43, '2023_08_24_204349_create_pharmachies_table', 19),
(46, '2023_08_24_213233_create_labs_table', 20),
(47, '2023_08_25_002119_create_lab_carts_table', 21),
(50, '2023_08_25_010156_create_lab_orders_table', 22),
(56, '2023_08_25_045642_create_medi_carts_table', 23),
(58, '2023_08_25_055345_create_medi_orders_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food_name`, `food_price`, `quantity`, `person_name`, `phone`, `room`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 'Package 01', '250', '3', 'John Doe', '0123456789', '302', NULL, '3', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(13, 'Package 02', '300', '2', 'Jane Smith', '9876543210', '405', NULL, '4', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(14, 'Mineral Water', '30', '5', 'Alice Johnson', '1234567890', '201', NULL, '5', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(15, 'Item 011', '100', '8', 'Bob Williams', '4567890123', '104', NULL, '6', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(16, 'Package 01', '250', '4', 'Emily Davis', '7890123456', '401', NULL, '7', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(17, 'Item 04', '300', '6', 'Michael Wilson', '2345678901', '305', NULL, '8', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(18, 'Package 02', '300', '3', 'Jessica Taylor', '8901234567', '103', NULL, '9', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(19, 'Mineral Water', '30', '2', 'Christopher Martinez', '6789012345', '202', NULL, '10', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(20, 'Item 011', '100', '7', 'Amanda Anderson', '3456789012', '304', NULL, '11', '2024-02-17 21:28:13', '2024-02-17 21:28:13'),
(21, 'Package 01', '250', '5', 'Daniel Garcia', '9012345678', '303', NULL, '12', '2024-02-17 21:28:13', '2024-02-17 21:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('reinald.luzikooij@gmail.com', '$2y$10$9aMBptM0U3zBAm6OBR1qZe1BSuZBRJDtXHD7SuM/AJ67/hnQMa0Z2', '2024-02-17 12:58:18')

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmachies`
--

CREATE TABLE `pharmachies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmachies`
--

INSERT INTO `pharmachies` (`id`, `name`, `code`, `price`, `quantity`, `description`, `image`, `vendor`, `date`, `created_at`, `updated_at`) VALUES
(6, 'Aspirin', 'ASPN01', '30', '80', 'For pain relief and fever reduction', 'admin-assets/assets/medicine/aspirin.jpg', 'Bayer', '2023-09-11', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(7, 'Ibuprofen', 'IBP01', '40', '60', 'For pain relief and anti-inflammatory', 'admin-assets/assets/medicine/ibuprofen.jpg', 'Johnson & Johnson', '2023-09-13', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(8, 'Paracetamol', 'PCM01', '20', '100', 'For pain relief and fever reduction', 'admin-assets/assets/medicine/paracetamol.jpg', 'GSK', '2023-09-15', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(9, 'Metformin', 'MTFM01', '35', '40', 'For treating type 2 diabetes', 'admin-assets/assets/medicine/metformin.jpg', 'Novo Nordisk', '2023-09-17', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(10, 'Simvastatin', 'SMV01', '45', '30', 'For lowering cholesterol', 'admin-assets/assets/medicine/simvastatin.jpg', 'Merck', '2023-09-19', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(11, 'Amlodipine', 'AML01', '55', '50', 'For treating high blood pressure', 'admin-assets/assets/medicine/amlodipine.jpg', 'AstraZeneca', '2023-09-21', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(12, 'Lisinopril', 'LSP01', '50', '45', 'For treating high blood pressure and heart failure', 'admin-assets/assets/medicine/lisinopril.jpg', 'Pfizer', '2023-09-23', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(13, 'Metoprolol', 'MTP01', '60', '35', 'For treating high blood pressure and angina', 'admin-assets/assets/medicine/metoprolol.jpg', 'Novartis', '2023-09-25', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(14, 'Levothyroxine', 'LVT01', '40', '25', 'For treating hypothyroidism', 'admin-assets/assets/medicine/levothyroxine.jpg', 'Eli Lilly', '2023-09-27', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(15, 'Omeprazole', 'OMZ01', '35', '40', 'For treating gastroesophageal reflux disease (GERD)', 'admin-assets/assets/medicine/omeprazole.jpg', 'Takeda', '2023-09-29', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(16, 'Lansoprazole', 'LSPZ01', '30', '55', 'For treating GERD and peptic ulcer disease', 'admin-assets/assets/medicine/lansoprazole.jpg', 'GSK', '2023-10-01', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(17, 'Gabapentin', 'GBP01', '45', '30', 'For treating neuropathic pain and epilepsy', 'admin-assets/assets/medicine/gabapentin.jpg', 'Pfizer', '2023-10-03', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(18, 'Citalopram', 'CTL01', '40', '35', 'For treating depression', 'admin-assets/assets/medicine/citalopram.jpg', 'AstraZeneca', '2023-10-05', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(19, 'Sertraline', 'SRL01', '50', '30', 'For treating depression, anxiety, and obsessive-compulsive disorder', 'admin-assets/assets/medicine/sertraline.jpg', 'Novartis', '2023-10-07', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(20, 'Atorvastatin', 'ATR01', '55', '40', 'For lowering cholesterol', 'admin-assets/assets/medicine/atorvastatin.jpg', 'Merck', '2023-10-09', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(21, 'Warfarin', 'WRF01', '35', '50', 'For preventing blood clots', 'admin-assets/assets/medicine/warfarin.jpg', 'Bayer', '2023-10-11', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(22, 'Furosemide', 'FRM01', '30', '60', 'For treating edema and hypertension', 'admin-assets/assets/medicine/furosemide.jpg', 'Teva Pharmaceutical', '2023-10-13', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(23, 'Metronidazole', 'MTR01', '25', '70', 'For treating infections caused by bacteria and protozoa', 'admin-assets/assets/medicine/metronidazole.jpg', 'AbbVie', '2023-10-15', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(24, 'Diazepam', 'DZP01', '40', '45', 'For treating anxiety, muscle spasms, and seizures', 'admin-assets/assets/medicine/diazepam.jpg', 'Roche', '2023-10-17', '2024-02-17 21:20:54', '2024-02-17 21:20:54'),
(25, 'Ondansetron', 'ODS01', '35', '55', 'For preventing nausea and vomiting caused by chemotherapy', 'admin-assets/assets/medicine/ondansetron.jpg', 'Takeda', '2023-10-19', '2024-02-17 21:20:54', '2024-02-17 21:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `pres`
--

CREATE TABLE `pres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `d_phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `medicines` text DEFAULT NULL,
  `tests` text DEFAULT NULL,
  `advice` varchar(255) DEFAULT NULL,
  `age` varchar(255) NOT NULL,
  `appointment_id` varchar(255) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `appointmenthistory_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `current_datetime` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pres`
--

INSERT INTO `pres` (`id`, `p_name`, `sex`, `d_phone`, `email`, `d_name`, `medicines`, `tests`, `advice`, `age`, `appointment_id`, `doctor_id`, `appointmenthistory_id`, `user_id`, `fee`, `current_datetime`, `created_at`, `updated_at`) VALUES
(5, 'John Doe', 'Male', '0123456789', 'john.doe@example.com', 'Dr. Smith', 'paracetamol', 'blood test', 'rest and fluids', '30', '10', '3', '3', '2', '700', '2023-08-24 19:22:50', '2024-02-17 20:52:11', '2024-02-17 20:52:11'),
(6, 'Jane Smith', 'Female', '0987654321', 'jane.smith@example.com', 'Dr. Johnson', 'ibuprofen', 'urine test', 'avoid strenuous activity', '25', '11', '4', '4', '3', '700', '2023-08-24 19:27:03', '2024-02-17 20:52:11', '2024-02-17 20:52:11'),
(7, 'Michael Brown', 'Male', '0123456789', 'michael.brown@example.com', 'Dr. Williams', 'aspirin', 'x-ray', 'apply ice to reduce swelling', '35', '12', '5', '5', '4', '700', '2023-08-24 19:28:22', '2024-02-17 20:52:11', '2024-02-17 20:52:11'),
(8, 'Emily Johnson', 'Female', '0987654321', 'emily.johnson@example.com', 'Dr. Taylor', 'antibiotics', NULL, NULL, '28', '13', '6', '6', '5', '700', '2023-08-24 19:41:01', '2024-02-17 20:52:11', '2024-02-17 20:52:11'),
(9, 'William Miller', 'Male', '0123456789', 'william.miller@example.com', 'Dr. Anderson', 'cough syrup', 'MRI scan', 'get plenty of rest', '40', '14', '7', '7', '6', '700', '2023-08-24 19:22:50', '2024-02-17 20:52:11', '2024-02-17 20:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jplg6XNnYzNKgilqf2Lp0ko58aojqKYMgML3kCah', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQVI2TWhVbnNTd29VY1dQY1Q1OFVxR29na0t3UWxaT0lGdk90R3d0TSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSVU5TlcwUlVCaHR3eXNJeVNUZGpkLkQvdGlXRkNpNU8zL09jRUVVMHRMWG5lelAzZmlIOVMiO30=', 1708207427);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `doctor_id`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Andre Reynaldi Lusikooy', 'reynaldi@outlook.jp', '085156624640', 'Komplek TVRI, Blok DK5, DK-5, DK-5', '1', '2024-02-17 20:06:44', '$2y$10$IU9NW0RUBhtwysIySTdjd.D/tiWFCi5O3/OcEEU0tLXnezP3fiH9S', NULL, NULL, NULL, NULL, '2024-02-17 13:06:03', '2024-02-17 13:06:03');
-- adminadmin --
--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_histories`
--
ALTER TABLE `appointment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_carts`
--
ALTER TABLE `lab_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_orders`
--
ALTER TABLE `lab_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medi_carts`
--
ALTER TABLE `medi_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medi_orders`
--
ALTER TABLE `medi_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pharmachies`
--
ALTER TABLE `pharmachies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `appointment_histories`
--
ALTER TABLE `appointment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lab_carts`
--
ALTER TABLE `lab_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lab_orders`
--
ALTER TABLE `lab_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medi_carts`
--
ALTER TABLE `medi_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medi_orders`
--
ALTER TABLE `medi_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmachies`
--
ALTER TABLE `pharmachies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pres`
--
ALTER TABLE `pres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
