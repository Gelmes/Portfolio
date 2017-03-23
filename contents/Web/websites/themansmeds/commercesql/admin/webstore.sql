-- --------------------------------------------------------

--
-- Table structure for table `accesslog`
--

CREATE TABLE `accesslog` (
  `url` varchar(100) default NULL,
  `shortdate` varchar(100) default NULL,
  `request_uri` varchar(100) default NULL,
  `visit` varchar(100) default NULL,
  `remote_addr` varchar(100) default NULL,
  `http_user_agent` varchar(100) default NULL,
  `http_referer` varchar(100) default NULL,
  `unixdate` varchar(100) default NULL
);

--
-- Dumping data for table `accesslog`
--


-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL auto_increment,
  `cart_id` varchar(30) NOT NULL default '',
  `cart_row` text NOT NULL,
  `add_time` int(30) NOT NULL default '0',
  `number` int(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cart_id` (`cart_id`)
) AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `emaillog`
--

CREATE TABLE `emaillog` (
  `address` varchar(100) NOT NULL default '',
  UNIQUE KEY `address` (`address`)
);

--
-- Dumping data for table `emaillog`
--


-- --------------------------------------------------------

--
-- Table structure for table `errorlog`
--

CREATE TABLE `errorlog` (
  `type_of_error` varchar(100) default NULL,
  `file_name` varchar(100) default NULL,
  `line_number` int(11) default NULL,
  `env_vars` text
);

--
-- Dumping data for table `errorlog`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL auto_increment,
  `invoice` varchar(20) default NULL,
  `name` varchar(50) default NULL,
  `address` varchar(100) default NULL,
  `city` varchar(50) default NULL,
  `state` varchar(5) default NULL,
  `zip` varchar(15) default NULL,
  `country` varchar(50) default NULL,
  `shiptoname` varchar(50) default NULL,
  `shiptostreet` varchar(100) default NULL,
  `shiptocity` varchar(50) default NULL,
  `shiptostate` varchar(5) default NULL,
  `shiptozip` varchar(15) default NULL,
  `shiptocountry` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `fax` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `method` varchar(50) default NULL,
  `ccname` varchar(100) default NULL,
  `cardnum` varchar(25) default NULL,
  `expdate` varchar(8) default NULL,
  `hw2ship` varchar(50) default NULL,
  `comment` text,
  `quantity` int(10) default NULL,
  `discount` double(6,2) default NULL,
  `category` varchar(50) default NULL,
  `price` double(6,2) default NULL,
  `prdname` varchar(100) default NULL,
  `options` text,
  `prafo` double(6,2) default NULL,
  `line` varchar(10) default NULL,
  `extamt` double(6,2) default NULL,
  `subtotal` double(6,2) default NULL,
  `shipping` double(6,2) default NULL,
  `salestax` double(6,2) default NULL,
  `grandtotal` double(6,2) default NULL,
  `status` int(1) NOT NULL default '0',
  `ip` varchar(15) default NULL,
  `time` varchar(15) default NULL,
  KEY `id` (`id`),
  KEY `invoice` (`invoice`)
);

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `prd_stats`
--

CREATE TABLE `prd_stats` (
  `id` int(11) NOT NULL default '0',
  `prd` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `prd` (`prd`)
);

--
-- Dumping data for table `prd_stats`
--


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `rowid` int(6) NOT NULL auto_increment,
  `category` varchar(50) NOT NULL default '',
  `price` double(6,2) NOT NULL default '0.00',
  `name` varchar(100) NOT NULL default '',
  `image` text NOT NULL,
  `description` text NOT NULL,
  `weight` double(6,2) NOT NULL default '0.00',
  `userone` text,
  `usertwo` text,
  `userthree` text,
  `userfour` text,
  `userfive` text,
  `options` text,
  PRIMARY KEY  (`rowid`),
  KEY `category` (`category`),
  KEY `name` (`name`)
);

--
-- Dumping data for table `product`
--

INSERT INTO `product` VALUES (1, 'Books', 23.96, 'Learning Perl', '<IMG SRC="%%URLofImages%%/0001.jpg" BORDER=0>', 'In this smooth, carefully paced course, a leading Perl trainer teaches you to program in the language that threatens to make C, sed, awk, and the Unix shell obsolete for many tasks. This book is the "official" guide for both formal (classroom) and informal learning. It is fully accessible to the novice programmer.<br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/1565922840/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (2, 'Books', 39.96, 'Programming Perl (3rd Edition)', '<IMG SRC="%%URLofImages%%/0002.jpg" BORDER=0>', 'Perl is a powerful programming language that has grown in popularity since it first appeared in 1988. The first edition of this book, Programming Perl, hit the shelves in 1990, and was quickly adopted as the undisputed bible of the language. Since then, Perl has grown with the times, and so has this book. <br><br>Programming Perl is not just a book about Perl. It is also a unique introduction to the language and its culture, as you might expect only from its authors. <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/0596000278/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (3, 'Books', 31.96, 'Perl Cookbook', '<IMG SRC="%%URLofImages%%/0003.jpg" BORDER=0>', 'The Perl Cookbook is a comprehensive collection of problems, solutions, and practical examples for anyone programming in Perl. Topics range from beginner questions to techniques that even the most experienced Perl programmers can learn from. More than just a collection of tips and tricks, the Perl Cookbook is the long-awaited companion volume to Programming Perl, filled with previously unpublished Perl arcana.<br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/1565922433/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (4, 'Books', 27.96, 'Programming the Perl DBI', '<IMG SRC="%%URLofImages%%/0007.jpg" BORDER=0>', '"The DBI is a database interface module for Perl. It defines a set of methods, variables and conventions that provide a consistent database interface independent of the actual database being used", explains Bunce, the architect and inventor of DBI. He and Descartes, one of the most active members of the DBI community, explain the architecture of DBI and show how to write DBI-based programs. For the DBI expert, they cover the nuances and peculiarities of each individual database driver. <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/1565926994//thebookstore03">MORE INFO</a></p><br>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (5, 'Software', 95.00, 'Classify 98 - Classified Ads Submission Software', '<IMG SRC="%%URLofImages%%/0008.jpg" BORDER=0>', 'Classify 98 is an automated submission wizard for classified Ads.<br><br>It has a database of over 1500 Classified sites and can submit your Ad to up to 500 Free Internet Classified sites within minutes. Manually, the same task would take days, if not weeks.<br><br>Classify 98 is easy to use and your Classified Ads can potentially reach millions of people on the Internet, with no additional costs to advertise.<br><br>Whether it is Real estate, MLM, Cars, Boats or Services, Classify 98 is the ideal partner for your business.<br><br><p><a href="http://www.trellian.com/cgi-bin/msw/entry?id=1663&amp;file=classify/index.html">MORE INFO...</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (6, 'Software', 95.00, 'SubmitWolf PRO - URL submission program', '<IMG SRC="%%URLofImages%%/0013.jpg" BORDER=0>', 'You may have the best web site in the world, offer the best products or services, but all of that means nothing if no one knows about you. <br><br>When your site is competing with over 400 million other web pages, you need an unfair advantage. SubmitWolf can give you that advantage. <br><br>What is SubmitWolf?<br><br>SubmitWolf PRO is an easy to use, professional website promotional tool, which automates the process of promoting your web pages on the internet. It can dramatically increase the number of visitors to your web site. It has a database of over 3500 search engines, link list and business directories. SubmitWolf Pro can automatically register your website''s details with 1500+ of these sites, simply and quickly achieving mass exposure.  <br><br><p><a href="http://www.trellian.com/cgi-bin/msw/entry?id=1663&amp;file=swolf/index.html">MORE INFO...</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (7, 'Books', 39.99, 'MySQL (OTHER NEW RIDERS)', '<IMG SRC="%%URLofImages%%/0014.jpg" BORDER=0>', 'The unexpected pleasure of reading books about databases is that they are often written by authors with highly organized minds. Paul DuBois and his editors at New Riders have assembled MySQL with a clarity and lucidity that inspires confidence in the subject matter: a (nearly) freely redistributable SQL-interpreting database client/server primarily geared for Unix systems but maintained for Windows platforms as well. What isn''t "free" about MySQL (the application) is its server''s commercial use; all clients and noncommercial server use are free. DuBois''s tome isn''t free either, but its list price is modest in light of its value and the value of its namesake.<br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/0735709211/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (8, 'Software', 95.00, 'Sharit - Automated Software Submission', '<IMG SRC="%%URLofImages%%/0015.jpg" BORDER=0>', 'Internet today is an integral part of any Software marketing and promotion. <br><br>It is very time consuming to list a program with all the review and archive sites on the internet, however with Sharit this can be achieved in just a few minutes.<br><br>Sharit is the first automated submission wizard designed for the promotion of Shareware, Freeware and Commercial Demo Programs. <br><br>Sharit can submit and maintain your program listings with over 80 software archive and review sites on the Internet, including most popular sites such as Winfiles.com, DaveCentral, Tucows .....<br><br><p><a href="http://www.trellian.com/cgi-bin/msw/entry?id=1663&amp;file=sharit/index.html">MORE INFO...</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (9, 'Books', 31.96, 'Essential System Administration (Nutshell Handbook)', '<IMG SRC="%%URLofImages%%/0021.jpg" BORDER=0>', 'Essential System Administration takes an in-depth look at the fundamentals of UNIX system administration in a real-world, heterogeneous environment. Whether you are a beginner or an experienced administrator, you''ll quickly be able to apply its principles and advice to your everyday problems. <br><br>The book approaches UNIX system administration from the perspective of your job -- the routine tasks and troubleshooting that make up your day. <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/1565921275/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (10, 'Books', 68.00, 'UNIX System Administration Handbook', '<IMG SRC="%%URLofImages%%/22.jpg" BORDER=0>', 'The third edition of Unix System Administration Handbook stands as a fantastic Unix book, perhaps one that''s destined for legend. It''s arguably the best general Unix book around. Don''t delay in getting it, and don''t spend too much time flinching at the price; it''s worth it. If you work with Unix--in any of its flavors--you''ll use this book, and frequently.<br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/0130206016/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (11, 'Books', 27.95, 'Running Linux', '<IMG SRC="%%URLofImages%%/0023.jpg" BORDER=0>', 'Earlier editions of O''Reilly''s Running Linux served as central guides on installing, configuring, and using the OS. The third edition of this guide covers the kernel through version 2.2.1 and will prove especially useful to those with high technical aptitudes and a well-tested willingness to experiment with their computing environments. <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/156592469X/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (12, 'Books', 39.99, 'Red Hat Linux 7 Unleashed', '<IMG SRC="%%URLofImages%%/0024.jpg" BORDER=0>', 'Red Hat Linux 7 Unleashed shows you how to install, configure, and manage version 7, the latest version of Red Hat operating system. Version 7 boasts the latest stable Linux kernel, a new and improved installation program, updated libraries and a host of other improvements, including the new Xfree86 4.x. Learn how the operating system works from the inside out. <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/0672319853/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (13, 'Software', 649.99, 'Dreamweaver UltraDev 4.0/Fireworks 4.0 Studio', '<IMG SRC="%%URLofImages%%/0025.jpg" BORDER=0>', 'This Macromedia UltraDev 4/Fireworks 4 bundle is an efficient way to develop ASP, JSP, or ColdFusion Web applications. Rapidly build database-driven Web applications with total control over source code, plus integrated Web graphics. Professional hand-coding environment includes ASP, JSP, and CFML keyword color-coding, autoindenting, punctuation balancing, and the ability to debug client-side JavaScript directly in your browser. Create, edit, and animate Web graphics in Fireworks 4; add advanced interactivity; optimize images; and integrate seamlessly with UltraDev 4 for efficient development. View live, server-side data in the workspace, and make edits to layout and logic on the fly. Maximize productivity with built-in server behaviors, the ability to create your own library of reusable server behaviors easily, and powerful shortcuts for creating user authentication, master/detail pages, and more. Improve development efficiency with sitewide reports, project tracking, and integration with version-control systems like Microsoft Visual SourceSafe for Windows and leading content-management systems. <br><br>Quickly connect existing, static Web pages to any database<br>Maintain total control over your source code<br>Easily identify keywords and scripts in code<br>See exactly how layouts will display<br>Maximize productivity with Server Behaviors and Live Objects <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B000050XBE/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (14, 'Software', 132.99, 'Microsoft FrontPage 2000', '<IMG SRC="%%URLofImages%%/0026.jpg" BORDER=0>', 'The Internet offers unprecedented publishing possibilities, allowing anyone with a few hundred bucks and some spare time to bypass the middleman and reach readers, viewers, listeners, and buyers directly. If you want to tap into the power of Web publishing without staying up nights learning HTML, try Microsoft FrontPage 2000.<br><br>Features: <br><br>NOTE: In-Box Upgrade Rebate valid only for previous licensed users of Microsoft Windows 95 or later (see product description for complete list)<br>Allows users to easily create Web sites exactly the way they want<br>Makes site management easy<br>Updates sites quickly<br>Works together with Microsoft Office <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00002SFM4/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (15, 'Software', 567.99, 'Adobe Photoshop 6.0', '<IMG SRC="%%URLofImages%%/0027.jpg" BORDER=0>', 'With each new release of Photoshop, Adobe manages both to satisfy the expectations of existing users and to pull a few magic features out of its hat. Version 6 is no exception. Powerful vector editing and masking, improved layer controls, layer styles, incredible typographic control, new Web publishing tools, and a cleaner, more accessible interface are already making version 5.5, itself a groundbreaker, look like ancient history.<br><br>Image editing software with an extensive toolset and powerful new features<br>Use for graphic and website design, photography and collage, pre-press, and more<br>Easily combine crisp, resolution-independent type with pixel-based images<br>Output sharp type edges with your image to produce high-quality results<br>Includes extensive new type formatting controls to produce the best-looking text <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00004YNJJ/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (16, 'Software', 354.99, 'Flash 5.0', '<IMG SRC="%%URLofImages%%/0028.jpg" BORDER=0>', 'Macromedia''s Flash 5 brings substantial changes and improvements to this dominant player in the Web animation tools arena. A new and customizable interface and improved scripting are the most notable of the new features. These, among other enhancements, make this upgrade almost essential to any serious designer.<br><br>Features: <br><br>Design beautiful, compact Web animation<br>Build intuitive interfaces that maintain branding<br>Produce stand-alone, run-time animation applications<br>Create engaging rich-media advertisements<br>Develop interactive e-commerce Web applications for all Internet-enabled devices <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00004WG0L/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (17, 'Software', 273.99, 'Dreamweaver 4.0', '<IMG SRC="%%URLofImages%%/0029.jpg" BORDER=0>', 'Some folks pour Web code from their soul using nothing more than a simple text editor. Others avoid code altogether by building pages in a WYSIWYG editor''s visual interface. Whatever one''s preferences, Macromedia''s Dreamweaver 4.0 delivers a powerful collection of features for building and maintaining even the most complex sites.<br><br>Features: <br><br>Tools to create a professional Web site<br>New code view<br>JavaScript debugger <br>Integrated O''Reilly code reference<br>New layout view--design complex pages easily <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B000050F96/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (18, 'Software', 199.99, 'Adobe Acrobat 4.0', '<IMG SRC="%%URLofImages%%/0030.jpg" BORDER=0>', 'Adobe Acrobat lets you share information electronically in a quick and effective way. It converts any document--including entire Web sites--into an Adobe PDF file, keeping the original appearance preserved, then allows you to distribute it for viewing and printing on any system. In addition, powerful markup tools make electronic review and collaboration a snap. Do late-stage text and image editing on PDF files or reuse text, graphics, and table data from PDF files. "Overall, Acrobat 4.0 merits a standing ovation." --Luis Camus, PC World, May 1999. <br><br>Features: <br><br>Convert any document to Portable Document Format (PDF)<br>Mark up and annotate PDF documents<br>Create PDF Web forms<br>Integrate PDF files with Web servers and e-mail<br>Retain and print sophisticated PostScript 3 graphics <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B0000205ZI/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (19, 'Electronics', 419.94, 'Creative Labs Nomad Jukebox (Blue)', '<IMG SRC="%%URLofImages%%/0031.jpg" BORDER=0>', 'The Creative NOMAD Jukebox is a portable, multiformat, compressed audio player with intuitive navigation for easy categorizing and classifying of content. Measuring about the size of a portable CD player and weighing only 14 ounces, this EAX-certified digital audio player features 6 GB of storage capacity. With far more memory than most portable digital audio players, it stores approximately 100 hours of CD-quality audio (equivalent to about 150 albums) or up to 2,600 hours of spoken word content. Unlike other hard drive-based solutions, the NOMAD Jukebox offers an onboard, real-time digital signal processor for superior audio playback and customization. The NOMAD Jukebox is SDMI-capable and supports file formats such as MP3, WAV, and WMA.<br><br>Features: <br><br>Portable digital audio player with 6 GB of built-in storage (over 100 hours of CD-quality music)<br>Plays MP3 files; upgradable to support other formats (such as WMA) and is SDMI compliant<br>USB interface for fast digital transfer; compatible with Windows and Mac<br>Weighs only 14 ounces and measures the size of a portable CD player<br>Comes with headphones, rechargeable batteries, AC adapter, and carrying pouch <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B000026D6I/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (20, 'Electronics', 129.94, 'Linksys BEFSR41 4-Port Etherfast Cable/DSL Router', '<IMG SRC="%%URLofImages%%/0032.jpg" BORDER=0>', 'Linksys is fast making a name for itself in the networking world and the EtherFast Cable/DSL Instant Broadband Router is one of the reasons why. This router lets you connect a group of PCs (up to 253) to a high-speed broadband Internet connection, but instead of requiring you to buy a separate hub to connect them all, Linksys made the extra effort and built the hub in.<br><br>Features: <br><br>Equipped with an internal, 4-port 10/100 Fast Ethernet switch<br>Connects all your PCs to the Internet using a single IP address<br>Includes a firewall<br>Includes DHCP server or client and supports PPPoE<br>Configurable via Web browser <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00004SB92/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (21, 'Electronics', 399.00, 'Palm Vx Handheld', '<IMG SRC="%%URLofImages%%/0033.jpg" BORDER=0>', 'At only 4.7 by 3.2 inches square and 0.4 inches thick, the Palm Vx connected organizer is truly pocket-size; however, this model sports a hefty 8 MB of RAM. The Palm Vx also sports a sleek exterior that looks supercool--an intangible value to be sure, but one that''s hard to argue with.<br><br>Features: <br><br>8 MB RAM <br>HotSync cradle included <br>Easily transfer data from your handheld to your PC or Macintosh<br>Rechargeable lithium-ion battery<br>Stores thousands of addresses, appointments, to-do items, memos, and more <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B000031KIM/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (22, 'Electronics', 44.99, 'GPX C3948BI Blue Ice Ultra-Slim CD Player', '<IMG SRC="%%URLofImages%%/0034.jpg" BORDER=0>', 'You may not be familiar with the GPX C3948BI CD player, but it''s a great unit and definitely worth your consideration. It''s loaded with useful features, such as 22-track programming and random and repeat play modes. It comes with an adapter kit that lets you plug the player into your car''s cassette player for tunes on the road and a six-digit LCD that shows the track number and time counter. And there''s an impressive 40-second antiskip buffer, which GPX calls an Anti-Rolling System, to keep your tunes from jumping forward when you nudge the player.<br><br>Features: <br><br>Car adapter kit<br>Bass boost system<br>40-second antishock protection<br>Headphones with inline volume control<br>6-digit LCD <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00000JBPB/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (23, 'Electronics', 39.57, 'Microsoft IntelliMouse Optical', '<IMG SRC="%%URLofImages%%/0035.jpg" BORDER=0>', 'The IntelliMouse Optical incorporates all the great features of the IntelliMouse Explorer mouse into its design--optical technology, cool red underglow, titanium accents, and superior performance. It also answers the most common complaints about the Explorer. For example, the two troublesome side buttons that were on the Explorer have been moved--there is one on each side of the IntelliMouse Optical, so both right- or left-handers can now program and use these buttons for any number of functions. In addition, the IntelliMouse Optical''s smaller body is comfortable for people who don''t have large hands.<br><br>Features: <br><br>Optical pointing device for right- or left-handed users<br>5 programmable buttons<br>Provides more control and accuracy than trackball mice can<br>Requires no cleaning or mouse pad<br>IntelliPoint software included <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00004S9AK/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (24, 'Electronics', 249.00, 'Hewlett Packard CD-Writer 8230e 4 X 4 X 6 USB External Kit', '<IMG SRC="%%URLofImages%%/0036.jpg" BORDER=0>', 'Features: <br><br>Compile CDs with 74 minutes of your favorite tunes <br>Convert MP3 files into songs you can listen to anywhere<br>Create discs with powerful and reliable CD creation software<br>Back up data easily with disaster-recovery software<br>2 MB buffer <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B000050AOO/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (25, 'Electronics', 103.94, '3Com HomeConnect PC Digital Camera', '<IMG SRC="%%URLofImages%%/0037.jpg" BORDER=0>', 'PC Digital Camera is easy to detach from its 9-foot Universal Serial Bus (USB) connector, so there''s no more fumbling behind your PC. Then you just pop it onto the USB cable on a different PC or laptop and you''re ready to go. The unit adjusts automatically from bright to very dim light. You can see bright, clear images in conditions from full sunlight to hotel light to birthday candles. When you travel on business, what''s better than your kids'' snapshots in your wallet? How about saying good-night to them right from your hotel room? When you can''t visit grandpa across the country, try video e-mail, featuring pictures created by his favorite young artists! With the HomeConnect PC Digital Camera, the Internet is more than a business tool or a big library, it''s a way to share smiles. <br><br>Features: <br><br>Video e-mail, video phone calls, and Webcam functionality<br>Sharp, clear pictures <br>1-touch snapshot button for instant digital photos<br>Automatic light-adjustment feature<br>Portable <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00000JDHV/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (26, 'Electronics', 79.99, 'Iomega Zip 100 Portable USB Drive', '<IMG SRC="%%URLofImages%%/0039.jpg" BORDER=0>', 'The Iomega Zip drive is the low-cost removable storage leader--and Iomega''s two latest offerings, the Zip 250 (a SCSI device) and a USB version of the Zip 100, should help maintain its popularity. The USB drive is designed for Win98; you install the drivers and IomegaWare software first, then reboot your system. We got it installed and performing without a hitch.<br><br>Features: <br><br>USB interface<br>Mac and PC compatible<br>Plug and play<br>Unlimited capacity<br>Each disk holds up to 70 floppies <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00000J3Q7/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');
INSERT INTO `product` VALUES (27, 'Electronics', 69.99, 'Uniden EXAI7980 Cordless Phone and Answering System', '<IMG SRC="%%URLofImages%%/0038.jpg" BORDER=0>', 'The Uniden EXAI 7980 combines 900 MHz cordless range and clarity with a full menu of functions and features, including a digital answering machine, caller ID, and a base speakerphone. All of these features combined make an easy-to-use, comprehensive, cordless call-management system for your busy home or office.<br><br>Features: <br><br>900 MHz analog operation with UltraClear Plus noise reduction<br>Digital answering machine and base speakerphone<br>Caller ID/call-waiting ID<br>30-number caller-ID memory<br>120 mintues of free long distance from Uniden; call 1-888-447-9709 for details <br><br><p align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/B00000K3XR/thebookstore03">MORE INFO</a></p>', 4.00, '', '', '', '', '', '');