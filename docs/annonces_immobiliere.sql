-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 20 oct. 2023 à 06:35
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `annonces_immobiliere`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
CREATE TABLE IF NOT EXISTS `annonces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surface_m2` int NOT NULL,
  `prix_total` int NOT NULL,
  `latitude` decimal(10,4) NOT NULL,
  `longitude` decimal(10,4) NOT NULL,
  `photos` text NOT NULL,
  `code_postal` varchar(8) NOT NULL,
  `ville` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `type` int NOT NULL,
  `typeName` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `surface_m2`, `prix_total`, `latitude`, `longitude`, `photos`, `code_postal`, `ville`, `description`, `type`, `typeName`) VALUES
(1, 150, 300000, '48.8566', '2.3522', 'https://www.maisons-pierre.com/wp-content/uploads/2020/08/Visuel5.jpg', '75001', 'Paris', 'Charmant appartement au cœur de Paris, idéalement situé pour profiter de la vie citadine.', 2, 'Maison'),
(2, 180, 350000, '43.6108', '3.8767', 'https://manager.groupe-bdl.com/web-content/img/modeles/2021/04/modele-de-maison-contemporaine-r1-125-facade-avant-5c01431-1200x820.jpg', '34000', 'Montpellier', 'Maison spacieuse à Montpellier avec vue imprenable sur la Méditerranée.', 2, 'Maison'),
(3, 160, 320000, '47.2184', '-1.5536', 'https://www.maisonsbatifrance.fr/images/maison/15-wonder-modele-maisons-bati-france.jpg', '44000', 'Nantes', 'Maison lumineuse à Nantes, parfaite pour une famille en quête de sérénité.', 2, 'Maison'),
(4, 200, 400000, '45.7578', '4.8328', 'https://prod-saint-gobain-fr.content.saint-gobain.io/sites/saint-gobain.fr/files/2022-04/maison-contemporaine-la-maison-saint-gobain01.jpg', '69001', 'Lyon', 'Espace de vie spacieux à Lyon, offrant une vue panoramique sur la ville.', 2, 'Maison'),
(5, 140, 280000, '48.5734', '7.7521', 'https://www.laconstructionlyonnaise.fr/wp-content/uploads/2022/11/belle-maison-archi-LCL.jpg', '67000', 'Strasbourg', "Charmante maison à Strasbourg, parfaite pour les amateurs d\'architecture traditionnelle.", 2, 'Maison'),
(6, 120, 250000, '43.2965', '5.3698', 'https://www.maisonsarchidesign.com/wp-content/uploads/2019/11/Modele-Manoir-1-R1-5.jpg', '13001', 'Marseille', 'Appartement moderne à Marseille, proche de la plage et des commodités.', 2, 'Maison'),
(7, 170, 360000, '48.3964', '-4.1535', 'https://www.igc-construction.fr/sites/default/files/2020-11/maison-design-avec-terrasse-en-bois.jpg', '29000', 'Brest', "Maison de caractère à Brest, offrant une vue magnifique sur l\'océan.", 2, 'Maison'),
(8, 130, 270000, '49.0069', '2.5479', 'https://manager.groupe-bdl.com/web-content/img/modeles/2022/02/maison-contemporaine-rcombles-gaya-5af4561-1200x879.jpg', '95000', 'Cergy', 'Appartement lumineux à Cergy, proche des transports en commun et des commerces.', 2, 'Maison'),
(11, 150, 300000, '47.9030', '1.9093', 'https://www.futuroscope.com/upload/media/maison-1.jpg', '45000', 'Orléans', "Charmante maison de campagne près d\'Orléans, entourée de verdure et de tranquillité.", 2, 'Maison'),
(12, 170, 360000, '50.6293', '3.0573', 'https://www.18h39.fr/wp-content/uploads/2022/03/HOME-MAISON-EN-A.jpg', '59000', 'Lille', 'Maison de ville élégante à Lille, avec une terrasse ensoleillée et une vue sur la citadelle.', 2, 'Maison'),
(13, 180, 350000, '48.1173', '-1.6778', 'https://media.istockphoto.com/id/471826199/fr/photo/fran%C3%A7ais-typique-maison-bretagne.jpg?s=612x612&w=0&k=20&c=fM8P2PnPKuy7fCnv46dueIoM94QlszFbP5MDNh0o7Dk=', '35000', 'Rennes', 'Spacieuse maison bretonne à Rennes, idéale pour une grande famille.', 2, 'Maison'),
(14, 160, 320000, '49.4432', '1.0999', 'https://vss.astrocenter.fr/habitatpresto/pictures/29717155-adobestock-427871396.jpg', '76000', 'Rouen', 'Maison de ville pittoresque à Rouen, proche de la vieille ville et de ses commerces.', 2, 'Maison'),
(15, 110, 180000, '47.6963', '2.6276', 'https://png.pngtree.com/element_pic/00/16/07/08577f369b99bed.jpg', '45500', 'Gien', 'Maison de ville à Gien avec jardin clos, proche des bords de Loire.', 2, 'Maison'),
(16, 120, 250000, '46.0543', '6.3921', 'https://joueclub-joueclub-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/0/0/e432d84c120fc536044224a6429b2e85d4e2287f_04046858.jpeg', '74800', 'Saint-Pierre-en-Faucigny', 'Agréable maison située dans le charmant village de Saint-Pierre-en-Faucigny, entourée de montagnes.', 2, 'Maison'),
(17, 140, 280000, '45.9097', '3.0669', 'https://cdn.futura-sciences.com/cdn-cgi/image/width=1024,quality=60,format=auto/sources/maison-argile.jpg', '63140', 'Châtel-Guyon', 'Belle maison de caractère à Châtel-Guyon, offrant une vue panoramique sur la vallée.', 2, 'Maison'),
(18, 130, 220000, '47.4918', '4.3326', 'https://imgsrc.cineserie.com/2022/02/2591559.jpg?ver=1', '21140', 'Semur-en-Auxois', 'Maison en pierre rénovée à Semur-en-Auxois, située dans le centre historique.', 2, 'Maison'),
(19, 115, 200000, '46.7839', '0.8121', 'https://media.playmobil.com/i/playmobil/70205_product_detail/Grande%20maison%20traditionnelle?locale=fr-FR,fr,en,*&$pdp_product_zoom_xl$&fmt=auto&strip=true&qlt=80&fmt.jpeg.chroma=1,1,1&unsharp=0,1,1,7&fmt.jpeg.interlaced=true', '86270', 'La Roche-Posay', 'Maison avec jardin à La Roche-Posay, station thermale réputée.', 2, 'Maison'),
(20, 150, 300000, '43.2951', '-0.3708', 'https://medias.villas-club.fr/files/media/villas-club/actualites/maison-cubique-en-z-yuzu-villas-club.jpg', '64000', 'Pau', 'Charmante maison à Pau, offrant une vue sur les Pyrénées.', 2, 'Maison'),
(21, 140, 280000, '43.6047', '1.4442', 'https://jardinage.lemonde.fr/images/dossiers/2018-03/maison-passive-081047.jpg', '31000', 'Toulouse', 'Maison lumineuse à Toulouse, proche des commodités et des transports.', 2, 'Maison'),
(22, 160, 350000, '44.8378', '-0.5792', 'https://www.maisonusinex.com/wp-content/uploads/2021/09/Belle-Epoque-1631125576-1500x1000.webp', '33000', 'Bordeaux', 'Maison élégante à Bordeaux, avec jardin et garage.', 2, 'Maison'),
(23, 130, 270000, '44.8506', '0.4839', 'https://actualite.seloger-construire.com/sites/default/files/styles/480x/public/edito_migrate/article/image/duree-construction-maison.jpg?itok=mvL3jkmy', '24100', 'Bergerac', 'Maison en pierre à Bergerac, entourée de vignes.', 2, 'Maison'),
(24, 100, 250000, '49.1000', '2.4000', 'https://www.shbarcelona.fr/blog/fr/wp-content/uploads/2016/03/appartement-photo.jpg', '75001', 'Paris', 'Appartement cosy au cœur de Paris, parfait pour les amoureux de la vie urbaine.', 1, 'Appartement'),
(25, 120, 280000, '43.6300', '3.8900', 'https://pichet.twic.pics/var/site/storage/images/_aliases/product_item/8/6/4/1/651468-3-fre-FR/69ae60754a97-Teasing_vignette_690x380.jpg', '34000', 'Montpellier', 'Bel appartement à Montpellier avec une vue imprenable sur la Méditerranée.', 1, 'Appartement'),
(26, 90, 230000, '47.2800', '-1.5800', 'https://plan-a.ca/wp-content/uploads/2022/12/4800_paul_pouliot_30207_web-scaled.jpg', '44000', 'Nantes', 'Appartement lumineux à Nantes, idéal pour un couple ou une personne seule.', 1, 'Appartement'),
(27, 80, 200000, '45.7800', '4.8800', 'https://www.travaux.com/images/cms/original/ebcd4d3c-6a00-47d2-8165-6d9e192082af.jpeg', '69001', 'Lyon', 'Coquet appartement à Lyon, offrant une vue panoramique sur la ville.', 1, 'Appartement'),
(28, 70, 180000, '48.6100', '7.8000', 'https://www.deco.fr/sites/default/files/styles/article_970x500/public/2019-11/0_1.jpg?itok=B8k1vqEd', '67000', 'Strasbourg', "Appartement plein de charme à Strasbourg, avec une touche d\'architecture traditionnelle.", 1, 'Appartement'),
(29, 60, 150000, '43.3300', '1.0000', 'https://www.maisonapart.com/images/auto/640-480-c/20180516_161721_01-castorama-001657648.eps15936324o.castp.jpg', '13001', 'Marseille', 'Appartement moderne à Marseille, idéalement situé entre la plage et les commodités.', 1, 'Appartement'),
(30, 110, 230000, '48.4500', '5.4000', 'https://resize.elle.fr/original/var/plain_site/storage/images/deco/reportages/visites-maisons/un-appartement-de-77-m2-astucieusement-optimise-pour-une-famille/96130343-1-fre-FR/Un-appartement-de-77-m2-astucieusement-optimise-pour-une-famille.jpg', '29000', 'Brest', "Appartement de caractère à Brest, avec une vue magnifique sur l\'océan.", 1, 'Appartement'),
(31, 100, 220000, '49.1000', '-4.2200', 'https://static.cotemaison.fr/medias_11456/w_2048,h_1146,c_crop,x_0,y_126/w_640,h_360,c_fill,g_north/v1492703324/salon-ambiance-retro-avec-fauteuil-eames-lampe-pipistrello_5865839.jpg', '95000', 'Cergy', 'Agréable appartement à Cergy, proche des transports en commun et des commerces.', 1, 'Appartement'),
(32, 120, 250000, '47.9900', '2.6000', 'https://welmo.fr/blog/wp-content/uploads/2017/02/1486117841376.jpg', '45000', 'Orléans', "Appartement de campagne près d\'Orléans, entouré de verdure et de tranquillité.", 1, 'Appartement'),
(33, 90, 210000, '50.7300', '1.9940', 'https://www.joliplace.com/wp-content/uploads/2021/09/appartement-haussmanien-deco-moderne-%C2%A9-10.jpg', '59000', 'Lille', 'Appartement de ville élégant à Lille, avec une terrasse ensoleillée.', 1, 'Appartement'),
(34, 100, 230000, '48.2174', '3.2574', 'https://jojo-app.fr/wp-content/uploads/2018/09/espace-optimise-appartement-meuble-paris.jpg', '35000', 'Rennes', 'Appartement spacieux à Rennes, parfait pour une grande famille.', 1, 'Appartement'),
(35, 110, 240000, '49.5433', '-1.7777', 'https://www.isolahotel.com/photo/diapo1/24/_isola__5920171017073503.jpg', '76000', 'Rouen', 'Appartement pittoresque à Rouen, proche de la vieille ville et de ses commerces.', 1, 'Appartement'),
(36, 80, 190000, '47.8164', '1.2500', 'https://media.lesechos.com/api/v1/images/view/5d147326d286c26d5708d4ea/1280x720/2161446-lappartement-de-la-semaine-un-90-m2-dans-le-10e-arrondissement-de-paris-web-tete-0301441717817.jpg', '45500', 'Gien', 'Appartement de ville à Gien avec jardin clos, proche des bords de Loire.', 1, 'Appartement'),
(37, 90, 200000, '46.2544', '6.4522', 'https://www.book-a-flat.com/magazine/wp-content/uploads/2018/04/relook-studio-appartement-paris.jpg', '74800', 'Saint-Pierre-en-Faucigny', 'Agréable appartement dans le charmant village de Saint-Pierre-en-Faucigny, entouré de montagnes.', 1, 'Appartement'),
(38, 100, 210000, '45.9998', '3.1670', 'https://www.immobiliere-pujol.fr/content/uploads/2017/02/location-meuble-wifi-castellane-1200x802.jpg', '63140', 'Châtel-Guyon', 'Bel appartement de caractère à Châtel-Guyon, offrant une vue panoramique sur la vallée.', 1, 'Appartement'),
(39, 80, 170000, '47.5619', '4.4027', 'https://media.admagazine.fr/photos/629f16b4f795d89c6bbcf890/16:9/w_2560%2Cc_limit/JacquesHervouet23371.jpg', '21140', 'Semur-en-Auxois', 'Appartement en pierre rénové à Semur-en-Auxois, situé dans le centre historique.', 1, 'Appartement'),
(40, 70, 160000, '46.9040', '0.9022', 'https://www.deco.fr/sites/default/files/styles/width_880/public/2019-11/appart%20en%20longeuur.jpg?itok=sh1rkFxA', '86270', 'La Roche-Posay', 'Appartement avec jardin à La Roche-Posay, station thermale réputée.', 1, 'Appartement'),
(41, 100, 250000, '43.4552', '-0.4807', 'https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/deco/reportages/visites-maisons/un-appartement-moderne-asymetrique-devenu-elegant-et-feminin/95893216-1-fre-FR/Un-appartement-moderne-asymetrique-devenu-elegant-et-feminin.jpg', '64000', 'Pau', 'Appartement plein de charme à Pau, offrant une vue sur les Pyrénées.', 1, 'Appartement'),
(42, 90, 240000, '43.8048', '1.5043', 'https://cdn.shopify.com/s/files/1/0621/9759/6383/files/decoration-petit-appartement.jpg?v=1663945716', '31000', 'Toulouse', 'Appartement lumineux à Toulouse, proche des commodités et des transports.', 1, 'Appartement'),
(43, 110, 260000, '44.9579', '-0.6091', 'https://media-cdn.tripadvisor.com/media/vr-splice-j/09/46/c2/88.jpg', '33000', 'Bordeaux', 'Appartement élégant à Bordeaux, avec jardin et garage.', 1, 'Appartement'),
(44, 100, 230000, '44.9007', '0.5540', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8mdNvspc1S_uObFKK700fqzo1lusNZ8d-3w&usqp=CAU', '24100', 'Bergerac', 'Appartement en pierre à Bergerac, entouré de vignes.', 1, 'Appartement');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
