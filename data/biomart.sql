-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 08:21 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biomart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(6, 'admin', 'admin', 'admin', 'Active'),
(14, '[value-2]', '[value-3]', '[value-4]', '[value-5]');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `category_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `category_type`, `description`, `img`, `status`) VALUES
(1, 'Fruit', 'Produce', 'Fruits are a rich source of many important nutrients like fibers, vitamins, water, etc. The daily consumption of fruits keeps one healthy and at the same time maintain a young look...', '849168229ONLINE CORONA TRACKER.png', 'Active'),
(2, 'Cereals and Pulses', 'Produce', 'Cereals are an integral part of our lives, as they are the only food products that provide instant energy. Rich in nutrients, cereals come in the form of rice or corns.', '28333cereals and pulses.jpg', 'Active'),
(3, 'Seeds', 'Produce', 'Seeds have stored foods inside them and are confined in coverings known as seed coats. The process of reproduction in a plant is completed after the seeds are developed fully.', '1506seeds.gif', 'Active'),
(4, 'Spices', 'Produce', 'Spices are defined as dried seed or fruit, in whole or powder form, used as \r\nfood additives for enhancing the flavor or taste of a particular food item. India produces 3.2 million tonnes of various spices.', '3443spices.jpg', 'Active'),
(5, 'Vegetable', 'Produce', 'Vegetables, the edible part of a plant, are rich sources of several vital nutrients, contributing immensely to the overall growth of the living being.', '29744veggie.jpg', 'Active'),
(6, 'Dry Fruit and Nuts', 'Produce', 'The need for having a healthy and tasty snack in between our regular food time can be satisfied with the consumption of dry fruits and nuts. They fully satisfy the taste buds, and one need not worry about gaining weight!', '18601dry fruit.jpg', 'Active'),
(7, 'Edible Oil', 'Produce', 'India is the 4th largest user of edible oil. Edible oils are basic ingredients used in the making of foods and other eatables.', '7726edible oil.jpg', 'Active'),
(8, 'Fertilizers', 'SellingProduct', 'The role of fertilizers cannot be ignored in agriculture. These are the compounds that are given to the soil to help nurture the plant facilitating increased yields.', '18021fertilizer.jpg', 'Active'),
(9, 'Fodders', 'SellingProduct', 'To enable livestock to remain healthy and thereby perform their activities, they are provided with fodder or animal feed. Fodder includes hay, straw, sprouted legumes, etc.', '20158fodder.jpg', 'Active'),
(11, 'Herbal Products', 'Produce', 'Herbs have exotic flavor, medicinal properties, scent, etc. They are used as \r\nmedicines, facilitating curing of ailments at a faster pace.', '23605herbal plants.jpg', 'Active'),
(12, 'Machinery and Equipments', 'SellingProduct', 'Agricultural equipments have revolutionized the agricultural industry worldwide. They help in increasing and improving the productivity content to a great extent.', '6346Agricultural Machinery and Equipments.jpg', 'Active'),
(14, 'Other Agro Products', 'Produce', 'Agro products are limitless and have an even larger number of sub-products, and may not generally be categorized.', '20247jaggery.jpg', 'Active'),
(15, 'Beverages', 'Produce', 'A drink or beverage is a liquid intended for human consumption.', '30296beverage and juices.jpg', 'Active'),
(19, 'Compost', 'SellingProduct', '  Compost is a key ingredient in organic farming. At the simplest level, the process of composting simply requires making a heap of wetted organic matter known as green waste (leaves, food waste) and waiting for the materials to break down into humus after a period of weeks or months.', '28756compost4.jpg', 'Active'),
(20, 'Biofertilizers', 'SellingProduct', 'Biofertilizers are ecofriendly fertilizers, which are being used to improve the quality and fertility of the soil. Biofertilizers are made from biological wastes and they do not contain any chemicals. They are beneficial to the soil, as they enrich the soil with microorganisms that help in producing organic nutrients, which in turn help the soil to fight diseases. They therefore enrich the the nutrient quality of the soil. They also restore the depleted nutrients of the soil.', '15808bio1.jpg', 'Active'),
(21, ' Chemical Fertilizer', 'SellingProduct', 'Today productivity has been increased by a major proportion and the entire credit goes to fertilizers. Fertilizers are a superior and advanced means to promote and enhance productivity. All the fertilizers have been categorized into several types depending on their constituents, strength and various other features. However each fertilizer contain adequate amounts of the needed chemicals, minerals and elements to ensure a healthy and fast growth.', '30188chemi1.jpg', 'Active'),
(23, 'Urea Fertilizer', 'SellingProduct', 'When applied in measured proportions and through precise methodology, urea works wonder for all crops and increase4s the yields by great proportions\r\n\r\nAs urea comprises of 46% N, it can be easily stored, transported and handled safely. There are no explosion hazards caused by urea fertilizer\r\n\r\nThe nutrient composition rendered by urea enhances the productivity of the soil and enriches its nutrient constituency. Providing each plant with relevant elements needed, urea sustains plant life.', '1240urea.jpg', 'Active'),
(24, 'Organic Fertilizers', 'SellingProduct', 'Organic fertilizers are naturally occurring fertilizers and nutrient enhancers of the soil. Therefore every substance that occurs naturally and is easily bio-degradable is organic and if this organic material enhances the richness of the soil, it is termed as organic fertilizer.', '790organic-fertilizer.jpg', 'Active'),
(25, ' Organic Manure', 'SellingProduct', '\r\nOrganic manure is easy to find and can be made available in all conditions.\r\nEasy to store, manure does not require any special treatment as it is not reactive or inflammable.', '5764organic-manure.jpg', 'Active'),
(26, 'Seeds', 'SellingProduct', 'Seeds have stored foods inside them and are confined in coverings known as seed coats. The process of reproduction in a plant is completed after the seeds are developed fully.', '17749sesame seeds.png', 'Active'),
(29, 'Crafts', 'Produce', 'Bangali Handy Crafts Products', '275759975Crafts.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `state_id`, `city`, `description`, `status`) VALUES
(2, 3, 'Mirpur', '', 'Active'),
(3, 3, 'Mohammadpur', '', 'Active'),
(4, 3, 'Baridhara ', '', 'Active'),
(5, 3, 'Motijheel', '', 'Active'),
(6, 3, 'Uttara', '', 'Active'),
(7, 3, 'Gulshan', '', 'Active'),
(8, 3, 'Banani', '', 'Active'),
(9, 3, 'Rampura', '', 'Active'),
(11, 4, 'Chittagong Division', '', 'Active'),
(12, 5, 'Barisal Division ', '', 'Active'),
(13, 6, 'Khulna Division', '', 'Active'),
(14, 7, 'Mymensingh Division', '', 'Active'),
(15, 8, 'Rajshahi Division', '', 'Active'),
(16, 9, 'Rangpur Division', '', 'Active'),
(17, 10, 'Sylhet Division', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `customer_type` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `state_id`, `city_id`, `pincode`, `contact_no`, `mobile_no`, `email_id`, `password`, `customer_type`, `status`) VALUES
(1, 'SAIFUZZAMAN', 'trav', 3, 2, '1111', '017', '017', 'saifuzzaman.nsu@northsouth.edu', '12345678', 'Retailer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `produce`
--

CREATE TABLE `produce` (
  `produce_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produce`
--

INSERT INTO `produce` (`produce_id`, `category_id`, `produce`, `description`, `img`, `status`) VALUES
(2, 29, 'Handkerchief', 'Local Handkerchief design', '2021118743handkerchip cata.jpg.crdownload', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `img_5` varchar(100) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `quantity_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `uploaded_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `seller_id`, `category_id`, `produce_id`, `title`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `quantity`, `quantity_type`, `description`, `uploaded_date`, `status`) VALUES
(2, 1, 29, 2, 'linen', '391088798linen.jpg', '1100230829linen thread.jpg', '', '', '', 10.00, 'Quintal', 'Soft Linen Handkerchief', '2022-11-27', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `purchase_order_date` date NOT NULL,
  `purchase_order_time` time NOT NULL,
  `purchase_amt` float(10,2) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_order_id`, `product_id`, `purchase_request_id`, `customer_id`, `seller_id`, `purchase_order_date`, `purchase_order_time`, `purchase_amt`, `quantity`, `status`) VALUES
(1, 2, 1, 1, 1, '2022-11-27', '04:28:35', 50.00, 5.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_bill`
--

CREATE TABLE `purchase_order_bill` (
  `purchase_order_bill_id` int(10) NOT NULL,
  `purchase_order_id` int(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_description` text NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `request_date_expire` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`purchase_request_id`, `customer_id`, `product_id`, `quantity`, `request_date`, `request_date_expire`, `note`, `status`) VALUES
(1, 1, 2, 5.00, '2022-11-27', '2022-12-04', 'NEED 5 pieces', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(10) NOT NULL,
  `seller_name` varchar(25) NOT NULL,
  `seller_address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_branch` varchar(50) NOT NULL,
  `bank_IFSC` varchar(25) NOT NULL,
  `bank_acno` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `seller_address`, `state_id`, `city_id`, `pincode`, `contact_number`, `mobile_no`, `email_id`, `password`, `bank_name`, `bank_branch`, `bank_IFSC`, `bank_acno`, `status`) VALUES
(1, 'sham', 'trav', 3, 2, '1111', '017', '016', 'saifuzzaman.nsu@northsouth.edu', '12345678', 'toto', 'tototo', '11111111111', 'wt', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL,
  `state` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state`, `description`, `status`) VALUES
(3, 'Dhaka', 'Dhaka is the capital of Bangladesh\r\n', 'Active'),
(4, 'Chittagong', 'Chittagong is a major coastal city and financial center in southeastern Bangladesh.', 'Active'),
(5, 'Barisal ', 'Barisal is a major city that lies on the banks of the Kirtankhola river in south-central Bangladesh.', 'Active'),
(6, 'Khulna ', 'Khulna is the third largest city in Bangladesh after Dhaka and Chittagong.', 'Active'),
(7, 'Mymensingh ', 'Mymensingh is the capital of Mymensingh Division, Bangladesh, Located on the bank of Brahmaputra River.', 'Active'),
(8, 'Rajshahi ', 'Rajshahi is a metropolitan city, and a major urban, commercial and educational centre of Bangladesh.', 'Active'),
(9, 'Rangpur ', 'Rangpur is one of the major cities in Bangladesh and Rangpur Division.', 'Active'),
(10, 'Sylhet ', 'Sylhet is a metropolitan city in northeastern Bangladesh, Located on the north bank of the Surma River at the eastern tip of Bengal.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `worker_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `work_profile` text NOT NULL,
  `biodata` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `date_of_birth` date NOT NULL,
  `login_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `expected_salary` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`worker_id`, `name`, `address`, `state_id`, `city_id`, `pincode`, `work_profile`, `biodata`, `contactno`, `date_of_birth`, `login_id`, `password`, `expected_salary`, `status`) VALUES
(6, 'saif', 'trav', 3, 2, '111111', 'OKAY', '1497370294wallpapersden.com_ghostrunner-4k-gaming_3840x2160 (2).jpg', '017', '2000-02-01', 'saifuzzaman.nsu@northsouth.edu', '12345678', 10000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `worker_request`
--

CREATE TABLE `worker_request` (
  `worker_request_id` int(10) NOT NULL,
  `worker_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `task` text NOT NULL,
  `country_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `salary` float(10,2) NOT NULL,
  `salary_type` varchar(20) NOT NULL,
  `seller_status` varchar(20) NOT NULL,
  `worker_status` varchar(20) NOT NULL,
  `seller_comment` text NOT NULL,
  `worker_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `produce`
--
ALTER TABLE `produce`
  ADD PRIMARY KEY (`produce_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_order_id`);

--
-- Indexes for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  ADD PRIMARY KEY (`purchase_order_bill_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`purchase_request_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`worker_id`);

--
-- Indexes for table `worker_request`
--
ALTER TABLE `worker_request`
  ADD PRIMARY KEY (`worker_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produce`
--
ALTER TABLE `produce`
  MODIFY `produce_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `purchase_order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  MODIFY `purchase_order_bill_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `purchase_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `worker_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `worker_request`
--
ALTER TABLE `worker_request`
  MODIFY `worker_request_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
