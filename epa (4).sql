-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epa`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eid` int(11) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `etype` varchar(50) NOT NULL,
  `edata` varchar(1000) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `elocation` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `eimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `ename`, `etype`, `edata`, `capacity`, `elocation`, `price`, `eimage`) VALUES
(1, 'Wedding', 'Traditional Wedding', '1) Traditional Decor: White floral arrangements, soft candles, draped fabric archways.\r\n2) Music: String quartet, pianist, or classic ballads playlist.\r\n3) Seating: Elegant chairs like Chiavari or wooden pews with satin chair covers.\r\n4) Traditional Cake: Multi-tiered white cake with lace details or sugar flowers.\r\n5) Photography and Videography: Professional photographers capturing formal moments.\r\n6) Floral Arrangements: Roses, peonies, and orchids in classic colors like white and pastels.\r\n7) Transportation: Vintage car or horse-drawn carriage.', '1000-2000', 'Pune  ', '100000', 'wed1.jpg'),
(2, 'Wedding', 'Beach Wedding', '1)Beach Location: A beautiful and private beach venue with scenic views for the ceremony.\r\n2)Decor: Elegant beach-inspired decorations such as floral arrangements, archway, aisle runner, and lanterns.\r\n3)Seating: Comfortable seating for guests  such as folding chairs or benches.\r\n4)Music: Sound system with microphones.\r\n5)Catering: On-site catering with a beach-inspired menu (e.g., seafood, tropical cocktails, etc.), or catering referrals.\r\n6) Cake: Wedding cake or dessert options.\r\n7) Photography and Videography: Professional photographers to capture the moments, and optional video services.\r\n8) Transportation: Shuttle services or luxury car rentals for the couple and guests to and from the venue.', '500-1000', 'Goa', '200000', 'wed2.jpg'),
(3, 'Wedding', 'Themed Wedding', '1) Themed Decor: Custom decorations to match the theme, such as archways, flowers, candles, and aisle decor (e.g., fairytale, vintage, or tropical).\r\n2) Music: Sound system with a curated playlist that fits the theme or live musicians for a specific vibe (e.g., string quartet, jazz band).\r\n3) Seating: Themed seating arrangements and chairs (e.g., vintage, modern, or rustic).\r\n4) Themed Cake: Custom-designed wedding cake that matches the theme (e.g., vintage floral, fairytale-inspired).\r\n5) Photography and Videography: Professional photographers who specialize in capturing the details of your themed wedding.\r\n6) Floral Arrangements: Custom flower designs that complement the theme.\r\n7) Transportation: Themed transportation options, such as a vintage car, horse-drawn carriage.', '1000-2000', 'Jaipur', '400000', 'wed3.jpg'),
(4, 'Wedding', 'Luxury Wedding', '1) Exclusive Venue Selection: Access to luxurious, high-end venues such as five-star hotels, private estates.\r\n2) Luxury Decor: Tailored decor to create a grand, sophisticated atmosphere with items like gilded arches, marble or gold aisle runners, and towering floral arrangements using the finest flowers such as orchids, roses.\r\n3) Live Music & Sound: High-quality sound system or live orchestra, featuring classical musicians.\r\n4)Seating: Premium seating options such as plush velvet chairs or custom-designed seating arrangements.\r\n5) Luxury Photography and Videography: Exclusive photography and videography services from top-tier professionals.\r\n6) Luxury Transportation: Chauffeured luxury vehicles like Rolls-Royce, Bentley, or custom-designed limousines for the bride, groom, and guests.', '500-1000', 'Mumbai', '400000', 'wed4.jpg'),
(5, 'Birthday', 'Themed Birthday Party', '1) Decor: Creative Themed Decor: Personalized decor based on a unique theme (e.g., “Fairytale Fantasy,” “Retro Glam,” “Circus Extravaganza”) with custom banners, themed tableware, and props..\r\n2) Catering: A themed buffet or plated service with fun stations (e.g., taco bar, dessert station, or sushi station) and a signature cocktail that fits the theme.\r\n3) Immersive Entertainment: Costumed performers, interactive activities , a DJ or live band playing themed songs, and theme-based games for all ages.\r\n4) Themed Cake Creation: A show-stopping cake designed to match the event theme (e.g., a “Harry Potter” cake with house colors or a “Space Adventure” cake with stars and planets).\r\n5) Themed Photography Styling: Professional photographers capturing the essence of the event through stylized shots that match the theme, from close-ups of decorations to candid moments with guests.\r\n', '50-100', 'Mumbai', '10000', 'bd1.jpg'),
(6, 'Birthday', 'Luxury Birthday Party', '1) Decor: Stunning, birthday-themed decor with dazzling floral arrangements, twinkling lights, and elegant table settings.\r\n2) Sound & Music: Premium sound systems with DJs or live bands, setting the perfect party mood from start to finish.\r\n3) Catering: A delectable range of gourmet dishes, grand buffets, tailored to your birthday cravings.\r\n4) Entertainment: Fun and exciting entertainment, including party games, live performances, and interactive photo booths.\r\n5) Photography & Videography: Professional photographers and videographers capturing every joyful moment of your special day.\r\n6) Cake: A custom-designed, multi-tiered birthday cake with intricate decorations and tailored flavors to match your theme and preferences.', '500-1000', 'at your place', '20000', 'bd2.jpg'),
(7, 'Birthday', 'Formal Birthday Party', '1) Decor: Elegant table settings with  floral centerpieces, ambient lighting, customizable photo backdrops, balloon installations, luxurious table runners, chair sashes, draped ceilings.\r\n2) Catering: Buffet or plated meals with gourmet appetizers, main courses, sides, custom menus for dietary restrictions, welcome drinks.\r\n3) Entertainment: Live music with a string quartet or band, DJ service for dancing, and an MC to host and manage the event flow.\r\n4) Professional Photography: Experienced photographers capturing every key moment, from the arrival of guests to the cutting of the cake, candid moments, and group photos.\r\n5) Custom Cake Design: A beautifully designed, multi-tiered cake tailored to the guest of honor’s preferences.', '50-100', 'at your place', '5000', 'bd3.jpg'),
(8, 'Birthday', 'Themed Birthday Party ', '1) Decor: Creative Themed Decor: Personalized decor based on a unique theme (e.g., “Fairytale Fantasy,” “Retro Glam,” “Circus Extravaganza”) with custom banners, themed tableware, and props..\r\n2) Catering: A themed buffet or plated service with fun stations (e.g., taco bar, dessert station, or sushi station) and a signature cocktail that fits the theme.\r\n3) Immersive Entertainment: Costumed performers, interactive activities , a DJ or live band playing themed songs, and theme-based games for all ages.\r\n4) Themed Cake Creation: A show-stopping cake designed to match the event theme (e.g., a “Harry Potter” cake with house colors or a “Space Adventure” cake with stars and planets).\r\n5) Themed Photography Styling: Professional photographers capturing the essence of the event through stylized shots that match the theme, from close-ups of decorations to candid moments with guests.\r\n\r\n', '100-200', 'at your place', '15000', 'bd4.jpg'),
(9, 'Corporate Event', 'Formal Corporate Event', '1) Venue (Hall/Room): Spacious, well-lit, air-conditioned hall with customizable seating arrangements.\r\n2) Seating & Furniture: Comfortable chairs and tables, podium, and stage setup as needed.\r\n3) Audiovisual Equipment: Projector, screen, microphones, and sound system for clear communication and presentations.\r\n4) Lighting: Professional stage and ambient lighting with adjustable settings.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi and tech support for seamless connectivity.\r\n6) Parking and Transportation: On-site parking and optional shuttle services for large groups.\r\n7) Catering Services : Customizable catering options for refreshments, meals, and coffee breaks.', '50-100', 'Mumbai', '12000', 'cor1.jpg'),
(10, 'Corporate Event', 'Seminar and Workshop', '1) Venue: Spacious, well-lit, air-conditioned hall with customizable seating.\r\n2) Seating & Furniture: Comfortable chairs, tables, podium, and stage setup.\r\n3) Audiovisual Equipment: Projector, screen, microphones, and sound system.\r\n4) Lighting: Adjustable professional stage and ambient lighting.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi and tech support for seamless connectivity.\r\n6) Parking & Transportation: On-site parking and optional shuttle services.\r\n7) Catering Services: Customizable refreshments, meals, and coffee breaks.', '100-200', 'Mumbai', '10000', 'cor2.jpg'),
(11, 'Corporate Event', 'Corporate Conference', '1) Venue: Conference center or hotel ballroom designed for networking and professional development.\r\n2) Seating & Furniture: Modular seating for various session types (panel discussions, workshops, and keynotes).\r\n3) Audiovisual Equipment: State-of-the-art projection system, microphones for Q&A, and virtual conferencing tools for hybrid formats.\r\n4) Lighting: Soft ambient lighting for networking and clear focus lighting for keynote speakers.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi with dedicated tech support and network options for attendees.\r\n6) Parking & Transportation: Convenient parking with valet services and shuttle buses from major hotels.\r\n7) Catering Services: Corporate lunch catering with high-end options; coffee breaks with refreshments available.', '500-1000', 'Mumbai', '12000', 'cor3.jpg'),
(12, 'Corporate Event', 'Networking Event', '1) Venue: Spacious event hall or hotel conference room with dedicated areas for mingling and discussions.\r\n2) Seating & Furniture: High-top tables for casual standing conversations and lounge-style seating for relaxed chats.\r\n3) Audiovisual Equipment: Microphones for announcements, projectors for presentations, and sound system for ambient background music.\r\n4) Lighting: Warm, inviting lighting to create a comfortable environment for networking.\r\nWi-Fi & Internet: High-speed Wi-Fi for easy access to business websites and quick email exchanges.\r\n5) Parking & Transportation: On-site parking with valet services; shuttle buses to and from nearby hotels or public transportation hubs.\r\n6) Catering Services: Cocktail-style appetizers, finger foods, and drinks (alcoholic and non-alcoholic) for socializing.', '1000-2000', 'Mumbai', '20000', 'cor4.jpg'),
(13, 'Party', 'Traditional Party', '1) Theme & Decor: Traditional cultural elements like ethnic patterns, flowers, lanterns, and handmade crafts to set the mood.\r\n2) Venue: A heritage site, ballroom, or outdoor space decorated with cultural motifs to enhance the traditional feel.\r\n3) Music & Entertainment: Live or recorded traditional music with folk instruments and cultural performances, such as dance or storytelling.\r\n4) Food & Drinks: Traditional cuisine served buffet-style, offering local delicacies with regional drinks like chai or lassi.\r\n5) Lighting & Ambience: Soft, warm lighting with lanterns and candles to create an intimate, cozy atmosphere for the event.\r\n6) eating & Furniture: Low seating arrangements such as cushions or wooden benches that reflect the cultural setting.\r\n7) Photography & Videography: Capturing cultural moments, performances, and interactions, with themed photo booths for fun guest pictures.', '50-100', 'Mumbai', '20000', 'party1.jpg'),
(14, 'Party', 'Themed Party ', '1) Theme-Based Decorations: Custom decorations to match the party theme, including backdrops, props, table settings, and banners.\r\n2) Event Setup & Venue Styling: Complete venue styling with furniture arrangements, lighting, drapery, and themed decor elements to create an immersive experience.\r\n3) DJ & Music: A professional DJ to play theme-specific music, or a live band.\r\n4) Catering Services: Themed menu options with food and beverages designed to match the event theme, including snacks, appetizers, and signature cocktails.\r\n5) Photography & Videography: Professional photographers and videographers to capture key moments of the themed event.\r\n6) Photobooth Setup: A themed photo booth with props, backdrops, and instant printing to capture fun moments throughout the event.\r\n7) Lighting & Visual Effects: Customized lighting setups such as LED lights, color-changing lights, or special effects (e.g., fog machines, lasers) to enhance the theme.\r\n8) Entertainment & Performers: Themed perfor', '100-200', 'Mumbai', '30000', 'party2.jpg'),
(15, 'Party', 'Luxurious Party', '1) Decor & Ambiance: Elegant decor with luxurious lighting, floral arrangements, and stylish furnishings to set the perfect mood.\r\n2) Party Favors: Customized party favors for all guests as a keepsake from the night.\r\n3)Catering: Gourmet food stations featuring five-star cuisine, including appetizers, main courses, and desserts.\r\n4) Entertainment: DJ performances, live musicians, dancers, and other high-energy performances to keep the vibe going all night.\r\n5) Photography: Professional photographers capturing candid moments, along with a red carpet photo booth for guests to enjoy.\r\n6) VIP Experience: Exclusive access to VIP areas with personalized service, private lounges, and bottle service.\r\n7) VIP Experience: Exclusive access to VIP areas with personalized service, private lounges, and bottle service.', '500-1000', 'Mumbai', '35000', 'party3.jpg'),
(16, 'Wedding', 'Themed Wedding', '1) Themed Decor: Custom decorations to match the theme, such as archways, flowers, candles, and aisle decor (e.g., fairytale, vintage, or tropical).\r\n2) Music: Sound system with a curated playlist that fits the theme or live musicians for a specific vibe (e.g., string quartet, jazz band).\r\n3) Seating: Themed seating arrangements and chairs (e.g., vintage, modern, or rustic).\r\n4) Themed Cake: Custom-designed wedding cake that matches the theme (e.g., vintage floral, fairytale-inspired).\r\n5) Photography and Videography: Professional photographers who specialize in capturing the details of your themed wedding.\r\n6) Floral Arrangements: Custom flower designs that complement the theme.\r\n7) Transportation: Themed transportation options, such as a vintage car, horse-drawn carriage.', '500-1000', 'Pune  ', '100000-200000', 'wed5.jpg'),
(17, 'Wedding', 'Traditional Wedding', '1) Traditional Decor: White floral arrangements, soft candles, draped fabric archways.\r\n2) Music: String quartet, pianist, or classic ballads playlist.\r\n3) Seating: Elegant chairs like Chiavari or wooden pews with satin chair covers.\r\n4) Traditional Cake: Multi-tiered white cake with lace details or sugar flowers.\r\n5) Photography and Videography: Professional photographers capturing formal moments.\r\n6) Floral Arrangements: Roses, peonies, and orchids in classic colors like white and pastels.\r\n7) Transportation: Vintage car or horse drawn carriage.\r\n', '50-100', 'Mumbai', '500000-1000000', 'wed6.jpg'),
(18, 'Wedding', 'Beach Wedding', '1)Beach Location: A beautiful and private beach venue with scenic views for the ceremony.\r\n2)Decor: Elegant beach-inspired decorations such as floral arrangements, archway, aisle runner, and lanterns.\r\n3)Seating: Comfortable seating for guests  such as folding chairs or benches.\r\n4)Music: Sound system with microphones.\r\n5)Catering: On-site catering with a beach-inspired menu (e.g., seafood, tropical cocktails, etc.), or catering referrals.\r\n6) Cake: Wedding cake or dessert options.\r\n7) Photography and Videography: Professional photographers to capture the moments, and optional video services.\r\n8) Transportation: Shuttle services or luxury car rentals for the couple and guests to and from the venue.', '1000-2000', 'Mumbai', '1500000-2500000', 'wed7.jpg'),
(19, 'Wedding', 'Luxury Wedding', '1) Exclusive Venue Selection: Access to luxurious, high-end venues such as five-star hotels, private estates.\r\n2) Luxury Decor: Tailored decor to create a grand, sophisticated atmosphere with items like gilded arches, marble or gold aisle runners, and towering floral arrangements using the finest flowers such as orchids, roses.\r\n3) Live Music & Sound: High-quality sound system or live orchestra, featuring classical musicians.\r\n4)Seating: Premium seating options such as plush velvet chairs or custom-designed seating arrangements.\r\n5) Luxury Photography and Videography: Exclusive photography and videography services from top-tier professionals.\r\n6) Luxury Transportation: Chauffeured luxury vehicles like Rolls-Royce, Bentley, or custom-designed limousines for the bride, groom, and guests.', '1000-2000', 'Goa', '3000000-5000000', 'wed8.jpg'),
(20, 'Wedding', 'Themed Wedding', '1) Themed Decor: Custom decorations to match the theme, such as archways, flowers, candles, and aisle decor (e.g., fairytale, vintage, or tropical).\r\n2) Music: Sound system with a curated playlist that fits the theme or live musicians for a specific vibe (e.g., string quartet, jazz band).\r\n3) Seating: Themed seating arrangements and chairs (e.g., vintage, modern, or rustic).\r\n4) Themed Cake: Custom-designed wedding cake that matches the theme (e.g., vintage floral, fairytale-inspired).\r\n5) Photography and Videography: Professional photographers who specialize in capturing the details of your themed wedding.\r\n6) Floral Arrangements: Custom flower designs that complement the theme.\r\n7) Transportation: Themed transportation options, such as a vintage car, horse-drawn carriage.', '100-200', 'Mumbai', '2000000', 'wed9.jpg'),
(21, 'Wedding', 'Themed Wedding', '1) Themed Decor: Custom decorations to match the theme, such as archways, flowers, candles, and aisle decor (e.g., fairytale, vintage, or tropical).\r\n2) Music: Sound system with a curated playlist that fits the theme or live musicians for a specific vibe (e.g., string quartet, jazz band).\r\n3) Seating: Themed seating arrangements and chairs (e.g., vintage, modern, or rustic).\r\n4) Themed Cake: Custom-designed wedding cake that matches the theme (e.g., vintage floral, fairytale-inspired).\r\n5) Photography and Videography: Professional photographers who specialize in capturing the details of your themed wedding.\r\n6) Floral Arrangements: Custom flower designs that complement the theme.\r\n7) Transportation: Themed transportation options, such as a vintage car, horse-drawn carriage.', '50-100', 'Goa ', '1500000', 'wed10.jpg'),
(22, 'Wedding', 'Luxury Wedding', '1) Exclusive Venue Selection: Access to luxurious, high-end venues such as five-star hotels, private estates.\r\n2) Luxury Decor: Tailored decor to create a grand, sophisticated atmosphere with items like gilded arches, marble or gold aisle runners, and towering floral arrangements using the finest flowers such as orchids, roses.\r\n3) Live Music & Sound: High-quality sound system or live orchestra, featuring classical musicians.\r\n4)Seating: Premium seating options such as plush velvet chairs or custom-designed seating arrangements.\r\n5) Luxury Photography and Videography: Exclusive photography and videography services from top-tier professionals.\r\n6) Luxury Transportation: Chauffeured luxury vehicles like Rolls-Royce, Bentley, or custom-designed limousines for the bride, groom, and guests.', '50-100', 'Pune  ', '3000000', 'wed11.jpg'),
(23, 'Wedding', 'Luxury Wedding', '1) Exclusive Venue Selection: Access to luxurious, high-end venues such as five-star hotels, private estates.\r\n2) Luxury Decor: Tailored decor to create a grand, sophisticated atmosphere with items like gilded arches, marble or gold aisle runners, and towering floral arrangements using the finest flowers such as orchids, roses.\r\n3) Live Music & Sound: High-quality sound system or live orchestra, featuring classical musicians.\r\n4)Seating: Premium seating options such as plush velvet chairs or custom-designed seating arrangements.\r\n5) Luxury Photography and Videography: Exclusive photography and videography services from top-tier professionals.\r\n6) Luxury Transportation: Chauffeured luxury vehicles like Rolls-Royce, Bentley, or custom-designed limousines for the bride, groom, and guests.', '100-200', 'Jaipur', '4000000', 'wed12.jpg'),
(24, 'Wedding', 'Traditional Wedding', '1) Traditional Decor: White floral arrangements, soft candles, draped fabric archways.\r\n2) Music: String quartet, pianist, or classic ballads playlist.\r\n3) Seating: Elegant chairs like Chiavari or wooden pews with satin chair covers.\r\n4) Traditional Cake: Multi-tiered white cake with lace details or sugar flowers.\r\n5) Photography and Videography: Professional photographers capturing formal moments.\r\n6) Floral Arrangements: Roses, peonies, and orchids in classic colors like white and pastels.\r\n7) Transportation: Vintage car or horse-drawn carriage.', '100-200', 'Goa', '2000000', 'wed13.jpg'),
(25, 'Wedding', 'Traditional Wedding', '1) Traditional Decor: White floral arrangements, soft candles, draped fabric archways.\r\n2) Music: String quartet, pianist, or classic ballads playlist.\r\n3) Seating: Elegant chairs like Chiavari or wooden pews with satin chair covers.\r\n4) Traditional Cake: Multi-tiered white cake with lace details or sugar flowers.\r\n5) Photography and Videography: Professional photographers capturing formal moments.\r\n6) Floral Arrangements: Roses, peonies, and orchids in classic colors like white and pastels.\r\n7) Transportation: Vintage car or horse-drawn carriage.', '500-1000', 'Jaipur', '3500000', 'wed14.jpg'),
(26, 'Wedding', 'Beach Wedding', '1)Beach Location: A beautiful and private beach venue with scenic views for the ceremony.\r\n2)Decor: Elegant beach-inspired decorations such as floral arrangements, archway, aisle runner, and lanterns.\r\n3)Seating: Comfortable seating for guests  such as folding chairs or benches.\r\n4)Music: Sound system with microphones.\r\n5)Catering: On-site catering with a beach-inspired menu (e.g., seafood, tropical cocktails, etc.), or catering referrals.\r\n6) Cake: Wedding cake or dessert options.\r\n7) Photography and Videography: Professional photographers to capture the moments, and optional video services.\r\n8) Transportation: Shuttle services or luxury car rentals for the couple and guests to and from the venue.', '100-200', 'Pune  ', '2000000', 'wed15.jpg'),
(27, 'Wedding', 'Beach Wedding', '1)Beach Location: A beautiful and private beach venue with scenic views for the ceremony.\r\n2)Decor: Elegant beach-inspired decorations such as floral arrangements, archway, aisle runner, and lanterns.\r\n3)Seating: Comfortable seating for guests  such as folding chairs or benches.\r\n4)Music: Sound system with microphones.\r\n5)Catering: On-site catering with a beach-inspired menu (e.g., seafood, tropical cocktails, etc.), or catering referrals.\r\n6) Cake: Wedding cake or dessert options.\r\n7) Photography and Videography: Professional photographers to capture the moments, and optional video services.\r\n8) Transportation: Shuttle services or luxury car rentals for the couple and guests to and from the venue.', '50-100', 'Jaipur', '1000000', 'wed16.jpg'),
(28, 'Birthday', 'Themed Birthday Party ', '1) Decor: Creative Themed Decor: Personalized decor based on a unique theme (e.g., “Fairytale Fantasy,” “Retro Glam,” “Circus Extravaganza”) with custom banners, themed tableware, and props..\r\n2) Catering: A themed buffet or plated service with fun stations (e.g., taco bar, dessert station, or sushi station) and a signature cocktail that fits the theme.\r\n3) Immersive Entertainment: Costumed performers, interactive activities , a DJ or live band playing themed songs, and theme-based games for all ages.\r\n4) Themed Cake Creation: A show-stopping cake designed to match the event theme (e.g., a “Harry Potter” cake with house colors or a “Space Adventure” cake with stars and planets).\r\n5) Themed Photography Styling: Professional photographers capturing the essence of the event through stylized shots that match the theme, from close-ups of decorations to candid moments with guests.\r\n', '50-100', 'Pune  ', '90000', 'bd5.jpg'),
(29, 'Birthday', 'Themed Wedding', '1) Decor: Creative Themed Decor: Personalized decor based on a unique theme (e.g., “Fairytale Fantasy,” “Retro Glam,” “Circus Extravaganza”) with custom banners, themed tableware, and props..\r\n2) Catering: A themed buffet or plated service with fun stations (e.g., taco bar, dessert station, or sushi station) and a signature cocktail that fits the theme.\r\n3) Immersive Entertainment: Costumed performers, interactive activities , a DJ or live band playing themed songs, and theme-based games for all ages.\r\n4) Themed Cake Creation: A show-stopping cake designed to match the event theme (e.g., a “Harry Potter” cake with house colors or a “Space Adventure” cake with stars and planets).\r\n5) Themed Photography Styling: Professional photographers capturing the essence of the event through stylized shots that match the theme, from close-ups of decorations to candid moments with guests.\r\n', '500-1000', 'Goa', '20000', 'bd6.jpg'),
(30, 'Birthday', 'Themed Birthday Party ', '1) Decor: Creative Themed Decor: Personalized decor based on a unique theme (e.g., “Fairytale Fantasy,” “Retro Glam,” “Circus Extravaganza”) with custom banners, themed tableware, and props..\r\n2) Catering: A themed buffet or plated service with fun stations (e.g., taco bar, dessert station, or sushi station) and a signature cocktail that fits the theme.\r\n3) Immersive Entertainment: Costumed performers, interactive activities , a DJ or live band playing themed songs, and theme-based games for all ages.\r\n4) Themed Cake Creation: A show-stopping cake designed to match the event theme (e.g., a “Harry Potter” cake with house colors or a “Space Adventure” cake with stars and planets).\r\n5) Themed Photography Styling: Professional photographers capturing the essence of the event through stylized shots that match the theme, from close-ups of decorations to candid moments with guests.\r\n', '500-1000', 'Jaipur', '20000', 'bd7.jpg'),
(31, 'Birthday', 'Luxury Birthday Party', '1) Decor: Stunning, birthday-themed decor with dazzling floral arrangements, twinkling lights, and elegant table settings.\r\n2) Sound & Music: Premium sound systems with DJs or live bands, setting the perfect party mood from start to finish.\r\n3) Catering: A delectable range of gourmet dishes, grand buffets, tailored to your birthday cravings.\r\n4) Entertainment: Fun and exciting entertainment, including party games, live performances, and interactive photo booths.\r\n5) Photography & Videography: Professional photographers and videographers capturing every joyful moment of your special day.\r\n6) Cake: A custom-designed, multi-tiered birthday cake with intricate decorations and tailored flavors to match your theme and preferences.', '100-200', 'Mumbai', '25000', 'bd8.jpg'),
(32, 'Birthday', 'Luxury Birthday Party', '1) Decor: Stunning, birthday-themed decor with dazzling floral arrangements, twinkling lights, and elegant table settings.\r\n2) Sound & Music: Premium sound systems with DJs or live bands, setting the perfect party mood from start to finish.\r\n3) Catering: A delectable range of gourmet dishes, grand buffets, tailored to your birthday cravings.\r\n4) Entertainment: Fun and exciting entertainment, including party games, live performances, and interactive photo booths.\r\n5) Photography & Videography: Professional photographers and videographers capturing every joyful moment of your special day.\r\n6) Cake: A custom-designed, multi-tiered birthday cake with intricate decorations and tailored flavors to match your theme and preferences.', '100-200', 'Pune  ', '20000', 'bd9.jpg'),
(33, 'Birthday', 'Luxury Birthday Party', '1) Decor: Stunning, birthday-themed decor with dazzling floral arrangements, twinkling lights, and elegant table settings.\r\n2) Sound & Music: Premium sound systems with DJs or live bands, setting the perfect party mood from start to finish.\r\n3) Catering: A delectable range of gourmet dishes, grand buffets, tailored to your birthday cravings.\r\n4) Entertainment: Fun and exciting entertainment, including party games, live performances, and interactive photo booths.\r\n5) Photography & Videography: Professional photographers and videographers capturing every joyful moment of your special day.\r\n6) Cake: A custom-designed, multi-tiered birthday cake with intricate decorations and tailored flavors to match your theme and preferences.', '50-100', 'Goa', '30000', 'bd10.jpg'),
(34, 'Birthday', 'Luxury Birthday Party', '1) Decor: Stunning, birthday-themed decor with dazzling floral arrangements, twinkling lights, and elegant table settings.\r\n2) Sound & Music: Premium sound systems with DJs or live bands, setting the perfect party mood from start to finish.\r\n3) Catering: A delectable range of gourmet dishes, grand buffets, tailored to your birthday cravings.\r\n4) Entertainment: Fun and exciting entertainment, including party games, live performances, and interactive photo booths.\r\n5) Photography & Videography: Professional photographers and videographers capturing every joyful moment of your special day.\r\n6) Cake: A custom-designed, multi-tiered birthday cake with intricate decorations and tailored flavors to match your theme and preferences.', '50-100', 'Jaipur', '20000', 'bd11.jpg'),
(35, 'Birthday', 'Formal Birthday Party', '1) Decor: Elegant table settings with  floral centerpieces, ambient lighting, customizable photo backdrops, balloon installations, luxurious table runners, chair sashes, draped ceilings.\r\n2) Catering: Buffet or plated meals with gourmet appetizers, main courses, sides, custom menus for dietary restrictions, welcome drinks.\r\n3) Entertainment: Live music with a string quartet or band, DJ service for dancing, and an MC to host and manage the event flow.\r\n4) Professional Photography: Experienced photographers capturing every key moment, from the arrival of guests to the cutting of the cake, candid moments, and group photos.\r\n5) Custom Cake Design: A beautifully designed, multi-tiered cake tailored to the guest of honor’s preferences.', '500-1000', 'Mumbai', '20000', 'bd12.jpg'),
(36, 'Birthday', 'Formal Birthday Party', '1) Decor: Elegant table settings with  floral centerpieces, ambient lighting, customizable photo backdrops, balloon installations, luxurious table runners, chair sashes, draped ceilings.\r\n2) Catering: Buffet or plated meals with gourmet appetizers, main courses, sides, custom menus for dietary restrictions, welcome drinks.\r\n3) Entertainment: Live music with a string quartet or band, DJ service for dancing, and an MC to host and manage the event flow.\r\n4) Professional Photography: Experienced photographers capturing every key moment, from the arrival of guests to the cutting of the cake, candid moments, and group photos.\r\n5) Custom Cake Design: A beautifully designed, multi-tiered cake tailored to the guest of honor’s preferences.', '500-1000', 'Pune  ', '10000', 'bd13.jpg'),
(37, 'Birthday', 'Formal Birthday Party', '1) Decor: Elegant table settings with  floral centerpieces, ambient lighting, customizable photo backdrops, balloon installations, luxurious table runners, chair sashes, draped ceilings.\r\n2) Catering: Buffet or plated meals with gourmet appetizers, main courses, sides, custom menus for dietary restrictions, welcome drinks.\r\n3) Entertainment: Live music with a string quartet or band, DJ service for dancing, and an MC to host and manage the event flow.\r\n4) Professional Photography: Experienced photographers capturing every key moment, from the arrival of guests to the cutting of the cake, candid moments, and group photos.\r\n5) Custom Cake Design: A beautifully designed, multi-tiered cake tailored to the guest of honor’s preferences.', '100-200', 'Goa', '10000', 'bd14.jpg'),
(38, 'Birthday', 'Formal Birthday Party', '1) Decor: Elegant table settings with  floral centerpieces, ambient lighting, customizable photo backdrops, balloon installations, luxurious table runners, chair sashes, draped ceilings.\r\n2) Catering: Buffet or plated meals with gourmet appetizers, main courses, sides, custom menus for dietary restrictions, welcome drinks.\r\n3) Entertainment: Live music with a string quartet or band, DJ service for dancing, and an MC to host and manage the event flow.\r\n4) Professional Photography: Experienced photographers capturing every key moment, from the arrival of guests to the cutting of the cake, candid moments, and group photos.\r\n5) Custom Cake Design: A beautifully designed, multi-tiered cake tailored to the guest of honor’s preferences.', '100-200', 'Jaipur', '15000', 'bd15.jpg'),
(39, 'Corporate Event', 'Seminar and Workshop', '1) Venue: Spacious, well-lit, air-conditioned hall with customizable seating.\r\n2) Seating & Furniture: Comfortable chairs, tables, podium, and stage setup.\r\n3) Audiovisual Equipment: Projector, screen, microphones, and sound system.\r\n4) Lighting: Adjustable professional stage and ambient lighting.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi and tech support for seamless connectivity.\r\n6) Parking & Transportation: On-site parking and optional shuttle services.\r\n7) Catering Services: Customizable refreshments, meals, and coffee breaks.', '50-100', 'Pune  ', '12000', 'cor5.jpg'),
(40, 'Corporate Event', 'Seminar and Workshop', '1) Venue: Spacious, well-lit, air-conditioned hall with customizable seating.\r\n2) Seating & Furniture: Comfortable chairs, tables, podium, and stage setup.\r\n3) Audiovisual Equipment: Projector, screen, microphones, and sound system.\r\n4) Lighting: Adjustable professional stage and ambient lighting.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi and tech support for seamless connectivity.\r\n6) Parking & Transportation: On-site parking and optional shuttle services.\r\n7) Catering Services: Customizable refreshments, meals, and coffee breaks.', '1000-2000', 'Jaipur', '20000', 'cor6.jpg'),
(41, 'Corporate Event', 'Formal Corporate Event', '1) Venue (Hall/Room): Spacious, well-lit, air-conditioned hall with customizable seating arrangements.\r\n2) Seating & Furniture: Comfortable chairs and tables, podium, and stage setup as needed.\r\n3) Audiovisual Equipment: Projector, screen, microphones, and sound system for clear communication and presentations.\r\n4) Lighting: Professional stage and ambient lighting with adjustable settings.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi and tech support for seamless connectivity.\r\n6) Parking and Transportation: On-site parking and optional shuttle services for large groups.\r\n7) Catering Services : Customizable catering options for refreshments, meals, and coffee breaks.', '100-200', 'Pune  ', '14000', 'cor7.jpg'),
(42, 'Corporate Event', 'Formal Corporate Event', '1) Venue (Hall/Room): Spacious, well-lit, air-conditioned hall with customizable seating arrangements.\r\n2) Seating & Furniture: Comfortable chairs and tables, podium, and stage setup as needed.\r\n3) Audiovisual Equipment: Projector, screen, microphones, and sound system for clear communication and presentations.\r\n4) Lighting: Professional stage and ambient lighting with adjustable settings.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi and tech support for seamless connectivity.\r\n6) Parking and Transportation: On-site parking and optional shuttle services for large groups.\r\n7) Catering Services : Customizable catering options for refreshments, meals, and coffee breaks.', '500-1000', 'Jaipur', '18000', 'cor8.jpg'),
(43, 'Corporate Event', 'Networking Event', '1) Venue: Spacious event hall or hotel conference room with dedicated areas for mingling and discussions.\r\n2) Seating & Furniture: High-top tables for casual standing conversations and lounge-style seating for relaxed chats.\r\n3) Audiovisual Equipment: Microphones for announcements, projectors for presentations, and sound system for ambient background music.\r\n4) Lighting: Warm, inviting lighting to create a comfortable environment for networking.\r\nWi-Fi & Internet: High-speed Wi-Fi for easy access to business websites and quick email exchanges.\r\n5) Parking & Transportation: On-site parking with valet services; shuttle buses to and from nearby hotels or public transportation hubs.\r\n6) Catering Services: Cocktail-style appetizers, finger foods, and drinks (alcoholic and non-alcoholic) for socializing.', '500-1000', 'Pune  ', '20000', 'cor9.jpg'),
(44, 'Corporate Event', 'Networking Event', '1) Venue: Spacious event hall or hotel conference room with dedicated areas for mingling and discussions.\r\n2) Seating & Furniture: High-top tables for casual standing conversations and lounge-style seating for relaxed chats.\r\n3) Audiovisual Equipment: Microphones for announcements, projectors for presentations, and sound system for ambient background music.\r\n4) Lighting: Warm, inviting lighting to create a comfortable environment for networking.\r\nWi-Fi & Internet: High-speed Wi-Fi for easy access to business websites and quick email exchanges.\r\n5) Parking & Transportation: On-site parking with valet services; shuttle buses to and from nearby hotels or public transportation hubs.\r\n6) Catering Services: Cocktail-style appetizers, finger foods, and drinks (alcoholic and non-alcoholic) for socializing.', '100-200', 'Jaipur', '15000', 'cor10.jpg'),
(45, 'Corporate Event', 'Corporate Conference', '1) Venue: Conference center or hotel ballroom designed for networking and professional development.\r\n2) Seating & Furniture: Modular seating for various session types (panel discussions, workshops, and keynotes).\r\n3) Audiovisual Equipment: State-of-the-art projection system, microphones for Q&A, and virtual conferencing tools for hybrid formats.\r\n4) Lighting: Soft ambient lighting for networking and clear focus lighting for keynote speakers.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi with dedicated tech support and network options for attendees.\r\n6) Parking & Transportation: Convenient parking with valet services and shuttle buses from major hotels.\r\n7) Catering Services: Corporate lunch catering with high-end options; coffee breaks with refreshments available.', '1000-2000', 'Pune  ', '20000', 'cor11.jpg'),
(46, 'Corporate Event', 'Corporate Conference', '1) Venue: Conference center or hotel ballroom designed for networking and professional development.\r\n2) Seating & Furniture: Modular seating for various session types (panel discussions, workshops, and keynotes).\r\n3) Audiovisual Equipment: State-of-the-art projection system, microphones for Q&A, and virtual conferencing tools for hybrid formats.\r\n4) Lighting: Soft ambient lighting for networking and clear focus lighting for keynote speakers.\r\n5) Wi-Fi & Internet: High-speed Wi-Fi with dedicated tech support and network options for attendees.\r\n6) Parking & Transportation: Convenient parking with valet services and shuttle buses from major hotels.\r\n7) Catering Services: Corporate lunch catering with high-end options; coffee breaks with refreshments available.', '50-100', 'Jaipur', '12000', 'cor12.jpg'),
(47, 'Birthday', 'luxry birthday', 'make a fabul;as decoaration and treat all your relatuive', '500-1000', 'Pune  ', '500000', 'i1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `event_bookings`
--

CREATE TABLE `event_bookings` (
  `booking_id` int(11) NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `event_date` date NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `booking_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_bookings`
--

INSERT INTO `event_bookings` (`booking_id`, `uid`, `eid`, `event_date`, `card_number`, `total_price`, `booking_date`) VALUES
(1, '3', 6, '2025-03-28', '9011-2225-5544-7', 10000.00, '2025-03-25 15:39:51'),
(2, '3', 6, '2025-03-28', '9011-2225-5544-7', 10000.00, '2025-03-25 15:42:38'),
(3, '1', 2, '2025-04-09', '9011-2225-5544-7', 200000.00, '2025-03-31 14:50:26'),
(4, '1', 3, '2025-04-02', '9011-2225-5544-7', 300000.00, '2025-03-31 15:08:39'),
(5, '2', 4, '2025-04-01', '5555-5555-5555-5', 300000.00, '2025-03-31 16:17:19'),
(6, '1', 17, '2025-04-23', '9011-2225-5544-7', 500000.00, '2025-04-19 09:40:47'),
(7, '1', 3, '2025-04-23', '9011-2225-5544-7', 300000.00, '2025-04-19 09:55:08'),
(8, '1', 5, '2025-04-30', '5555-5555-5555-5', 5000.00, '2025-04-19 09:57:51'),
(9, '2', 14, '2025-05-12', '5555-5555-5555-5', 20000.00, '2025-04-19 10:04:58'),
(10, '2', 12, '2025-04-27', '9011-2225-5544-7', 10000.00, '2025-04-19 10:10:28'),
(11, '2', 5, '2025-04-30', '9011-2225-5544-7', 5000.00, '2025-04-19 10:20:28'),
(12, '2', 18, '2025-08-26', '9011-2225-5544-7', 1500000.00, '2025-04-19 10:55:16'),
(13, '1', 10, '2025-04-28', '3445-6445-4575-6', 3000.00, '2025-04-19 11:18:25'),
(14, '1', 37, '2025-04-30', '9011-2225-5544-7', 10000.00, '2025-04-21 11:58:05'),
(15, '4', 47, '2025-05-01', '1232-3456-7865-4', 500000.00, '2025-04-21 14:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Trno` int(50) NOT NULL,
  `Trdate` datetime NOT NULL,
  `Uid` varchar(50) NOT NULL,
  `sename` varchar(100) NOT NULL,
  `noofp` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Trno`, `Trdate`, `Uid`, `sename`, `noofp`, `location`) VALUES
(145, '2025-04-19 10:55:16', 'n@gmail.com', 'Beach Wedding', '1000-2000', 'Mumbai'),
(147, '2025-04-19 11:18:25', 'p@gmail.com', 'Seminar and Workshop', '50-100', 'Pune  '),
(149, '2025-04-21 14:00:01', 'sk@gmail.com', 'luxry birthday', '500-1000', 'Pune  ');

-- --------------------------------------------------------

--
-- Table structure for table `usermast`
--

CREATE TABLE `usermast` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usermast`
--

INSERT INTO `usermast` (`uid`, `uname`, `uemail`, `upass`, `mobile`) VALUES
(1, 'pranjal', 'p@gmail.com', '1234', 2147483647),
(2, 'neha', 'n@gmail.com', '12', 2147483647),
(3, 'ruhi', 'r@gmail.com', '123', 894836476),
(4, 'shakil shaih', 'sk@gmail.com', '12345', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Trno`);

--
-- Indexes for table `usermast`
--
ALTER TABLE `usermast`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `event_bookings`
--
ALTER TABLE `event_bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `Trno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `usermast`
--
ALTER TABLE `usermast`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD CONSTRAINT `event_bookings_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `event` (`eid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
