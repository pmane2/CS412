-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 07:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dishdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dish_admin`
--

CREATE TABLE `dish_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dish_admin`
--

INSERT INTO `dish_admin` (`id`, `full_name`, `username`, `password`) VALUES
(15, 'user12', 'user', '202cb962ac59075b964b07152d234b70'),
(16, 'Purna ', 'purna', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `dish_category`
--

CREATE TABLE `dish_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dish_category`
--

INSERT INTO `dish_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'Pizza', 'Food_Category_676.jpeg', 'Yes', 'Yes'),
(10, 'Burger ', 'Food_Category_502.jpeg', 'Yes', 'Yes'),
(11, 'Desserts', 'Food_Category_826.jpeg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `dish_food`
--

CREATE TABLE `dish_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dish_food`
--

INSERT INTO `dish_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(10, 'Margarita Pizza', ' A classic Margarita Pizza topped with fresh mozzarella, flavorful tomato sauce, and aromatic basil leaves. Perfect for a light yet satisfying meal.', 12.00, 'Food-Name-1866.jpeg', 9, 'Yes', 'Yes'),
(11, 'Chicken Pizza', 'A delicious Chicken Pizza featuring a golden-brown crust, tender chunks of grilled chicken, colorful bell peppers, onions, and a drizzle of barbecue sauce. Perfectly topped with melted mozzarella cheese for a rich and flavorful experience.', 16.00, 'Food-Name-6534.jpeg', 9, 'Yes', 'Yes'),
(12, 'Spinach and Feta Pizza', 'A delightful Spinach and Feta Pizza with a golden crust, generously topped with creamy feta cheese, fresh spinach leaves, garlic, and a sprinkle of aromatic herbs. A healthy and flavorful choice for pizza lovers.', 15.00, 'Food-Name-6146.jpeg', 9, 'Yes', 'Yes'),
(13, 'Buffalo Chicken Pizza', ' A mouthwatering Buffalo Chicken Pizza with a golden crust, spicy Buffalo sauce, chunks of grilled chicken, melted mozzarella cheese, red onions, and a drizzle of ranch dressing. A perfect combination of heat and creaminess for pizza lovers.', 17.00, 'Food-Name-5367.jpeg', 9, 'Yes', 'Yes'),
(14, 'Veggie Supreme Pizza', 'A vibrant Veggie Supreme Pizza featuring a golden crust, topped with colorful bell peppers, black olives, red onions, juicy cherry tomatoes, mushrooms, and melted mozzarella cheese. A perfect choice for vegetable lovers.', 9.00, 'Food-Name-2559.jpeg', 9, 'Yes', 'Yes'),
(15, 'Spicy Chicken Burger', 'A fiery Spicy Chicken Burger featuring a crispy fried chicken patty, spicy mayo, fresh lettuce, pickles, and jalapenos, all nestled in a toasted brioche bun. Served with a side of curly fries and dipping sauce for a satisfying spicy kick.', 11.00, 'Food-Name-5191.jpeg', 10, 'Yes', 'Yes'),
(16, 'Mushroom and Swiss Burger', 'A gourmet Mushroom and Swiss Burger featuring a juicy beef patty, sautéed mushrooms, melted Swiss cheese, caramelized onions, and garlic aioli, all nestled in a toasted brioche bun. Served with sweet potato fries and dipping sauce for an elevated burger experience.', 11.00, 'Food-Name-9046.jpeg', 10, 'Yes', 'Yes'),
(17, 'Double Bacon Cheeseburger', ': A hearty Double Bacon Cheeseburger featuring two juicy beef patties, crispy bacon, melted cheddar cheese, fresh lettuce, tomato slices, and smoky barbecue sauce, all packed into a toasted sesame seed bun. Served with crispy onion rings and a side of dipping sauce for the ultimate indulgence.', 15.00, 'Food-Name-6647.jpeg', 10, 'Yes', 'Yes'),
(18, 'Strawberry Cheesecake', ' A classic Strawberry Cheesecake with a creamy cheesecake layer on a crumbly graham cracker crust, topped with fresh strawberries and a drizzle of strawberry sauce. Garnished with a mint leaf for a perfect finish.', 6.00, 'Food-Name-6329.jpeg', 11, 'Yes', 'Yes'),
(19, 'Classic Apple Pie', 'A timeless Classic Apple Pie slice with a flaky golden crust and a warm cinnamon-spiced apple filling. Served with a scoop of vanilla ice cream and a drizzle of caramel sauce for a perfect dessert experience.', 7.00, 'Food-Name-554.jpeg', 11, 'Yes', 'Yes'),
(20, 'Chocolate Lava Cake', 'A rich and decadent Chocolate Lava Cake with a molten chocolate center, served warm and garnished with a scoop of vanilla ice cream, fresh mint leaves, and a drizzle of chocolate syrup. A perfect treat for dessert lovers.', 9.00, 'Food-Name-6904.jpeg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `dish_order`
--

CREATE TABLE `dish_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dish_order`
--

INSERT INTO `dish_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(4, 'Buffalo Chicken Pizza', 17.00, 1, 17.00, '2024-12-14 07:03:04', 'Delivered', 'Rajbasheer Baig', '8624052051', 'rajbasheer79@gmail.com', '306 Sussex Street\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dish_admin`
--
ALTER TABLE `dish_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_category`
--
ALTER TABLE `dish_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_food`
--
ALTER TABLE `dish_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_order`
--
ALTER TABLE `dish_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dish_admin`
--
ALTER TABLE `dish_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dish_category`
--
ALTER TABLE `dish_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dish_food`
--
ALTER TABLE `dish_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dish_order`
--
ALTER TABLE `dish_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
