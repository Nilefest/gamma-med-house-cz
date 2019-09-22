-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2018 at 01:30 PM
-- Server version: 5.6.41
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mocentre`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `article`, `lang`) VALUES
(1, 'about', 'Gamma MedHouse is a sales representative of Swiss and Chinese manufacturers of medical supplies and medical devices in the Czech Republic, Ukraine and Russia <br><br> We represent the Czech Republic in the Gamma MedHouse group based in Switzerland, which has three own factories with modern technologies and distribution subsidiaries around the world <br><br> Gamma Med House provides production, development and innovation, global distribution and marketing of a wide range of health, vitamin and protective products <br><br> Gamma Med Professional Team House offers years of experience in healthy lifestyle. Their philosophy is to provide customers with creative, innovative products and services in an excellent price / quality ratio. It offers a wide range of products for health, beauty care, health care, both for home use and sports or healthcare facilities. <br><br> Gamma Med House Manufacturing plants meet the requirements of ISO 9001 and ISO 13485 Quality Management System Requirements and Production Requirements of European Directive 93/42 the process is controlled according to ISO 4074. <br><br> Your MedHouse Team', 'eng'),
(2, 'about', 'Společnost Gamma MedHouse je obchodním zástupcem švýcarských a a čínských výrobců zdravotnických potřeb a zdravotnických prostředků v České republice, na Ukrajině a v Rusku.<br><br>Reprezentujeme Českou republiku ve skupině Gamma MedHouse se sídlem ve Švýcarsku, která disponuje třemi vlastními továrnami s moderními technologiemi a distribučními dceřinými společnostmi po celém světě.<br><br> Společnost Gamma Med House zajišťuje výrobu, vývoj a inovace, globální distribuci a marketing široké škály zdravotnických, vitamínových a ochranných produktů.<br><br> Profesionální tým společností Gamma Med House nabízí dlouholeté zkušenosti v oblasti zdravého životního stylu. Jejich filozofií je poskytovat zákazníkovi kreativní, inovativní produkty a služby ve výborném poměru ceny a  nejvyšší kvality. Nabízí široký sortiment výrobků pro zdraví, péči o krásu, zdravotní péěči, a to pro domácí použití i sportovní nebo zdravotnická zařízení. Na odpovídajících segmentech trhu úspěšně obsazujeme vedoucí pozice.<br><br> Výrobní závody společností Gamma Med House splňují požadavky systému řízení jakosti podle norem  ISO 9001 a ISO 13485 a výrobní požadavky evropské směrnice 93/42 / EEC Příloha II čl. 3. Výrobní proces je kontrolován  podle normy ISO 4074.<br><br> Váš MedHouse tým', 'cze'),
(3, 'contact', 'If you are interested in something, or if you have any questions - you can contact us using this information', 'eng'),
(4, 'contact', 'Pokud vás něco zajímá nebo pokud máte nějaké dotazy - můžete nás kontaktovat pomocí těchto informací', 'cze'),
(5, 'production', 'Here you can insert the text describing the product as a whole. Quite a bit of text', 'eng'),
(6, 'production', 'Zde můžete vložit text popisující produkt jako celek. Docela trochu textu', 'cze');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `contact`) VALUES
(1, 'mail', 'gammamedhouse@gmail.com'),
(2, 'phone', '+420 225 992 202'),
(3, 'phone', '+420 225 992 200'),
(5, 'address', '<a href = \"https://www.google.com/maps/place/Pankr%C3%A1c+Business+Center/@50.0510173,14.4381394,17z/data=!4m5!3m4!1s0x470b9475f41d037b:0x10a6e8284819ed81!8m2!3d50.0510311!4d14.4408967\">sídlo firmy</a>:<br><b>Gamma MedHouse s.r.o.</b><br>Na Pankrácí 1724/129 ; Nusle , Praha-4 ; 140 00');

-- --------------------------------------------------------

--
-- Table structure for table `notes_lang`
--

CREATE TABLE `notes_lang` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eng` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cze` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes_lang`
--

INSERT INTO `notes_lang` (`id`, `title`, `type`, `eng`, `cze`) VALUES
(1, 'about', 'main', 'About', 'O nás'),
(2, 'production', 'main', 'Production', 'Produkce'),
(3, 'contact', 'main', 'Contact', 'Kontakt'),
(4, 'links', 'main', 'Useful links', 'Užitečné odkazy'),
(5, 'about_company', 'main', 'About the company', 'O společnosti'),
(11, 'medical_devices', 'main', 'Medical devices', 'Lékařské přístroje'),
(12, 'contact_us', 'main', 'Connect with us', 'Spojit se s námi'),
(13, 'to_map', 'main', 'Here we are', 'Tady jsme'),
(22, 'our_contact', 'contact', 'Our contacts', 'Naše kontakty'),
(23, 'phone', 'contact', 'Phones', 'Telefony'),
(24, 'mail', 'contact', 'E-mails', 'E-maily'),
(25, 'address', 'contact', 'Address', 'Adresa'),
(28, 'our_production', 'productions', 'Our production', 'Naše produkce'),
(30, 'more', 'productions', 'More', 'Více'),
(31, 'instructions', 'productions', 'Instructions', 'Instrukce'),
(32, 'source', 'productions', 'A source', 'Zdroj'),
(33, 'official', 'main', 'Official site', 'Oficiální stránka');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provider` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `title`, `info`, `content`, `type`, `provider`, `lang`) VALUES
(3, 'Kompresorový nebulizátor', 'Gamma Effect New\r\nKompresorový nebulizátor', 'Gamma Effect New<br>Kompresorový nebulizátor\r\n<br><br>- efektivní a spolehlivý<br>- inhalační terapie pro celou rodinu<br>- léčba astmatu a onemocnění dýchacího ústrojí<br>- kompaktní model ', 'nebulizers', 'Gamma', 'cze'),
(4, 'Kompresorový nebulizátor', 'Gamma Effect New - Kompresorový nebulizátor', 'Gamma Effect New<br><br>- Kompresorový nebulizátor<br><br>- efektivní a spolehlivý<br>- inhalační terapie pro celou rodinu<br>- léčba astmatu a onemocnění dýchacího ústrojí<br><br> kompaktní model ', 'nebulizers', 'Gamma', 'cze'),
(5, 'Digitální teploměr', 'Gamma Thermo Base\r\nDigitální teploměr', 'Gamma Thermo Base<br>Digitální teploměr<br><br><br>- bez rtuti a skla<br>- vysoká přesnost<br>- paměť posledního měření<br>- doba měření do 60 sekund ', 'digital_thermometers', 'Gamma', 'cze'),
(6, 'Digitální teploměr s flexibilním koncem', 'Gamma Thermo Base\r\nDigitální teploměr', 'Gamma Trermo Soft<br>Digitální teploměr s flexibilní špičkou<br><br>- bezpečné měření<br>- vysoká přesnost<br>- flexibilní vodotěsná špička<br>- doba měření 60 sekund', 'digital_thermometers', 'Gamma', 'cze'),
(7, 'Gamma Control', 'Gamma Control\r\nDigitální monitor krevního tlaku s velkým displejem a pamětí posledního měření', 'Gamma Control<br>Digitální monitor krevního tlaku s velkým displejem a pamětí posledního měření<br><br>- kvalitní <br>utomatický přístroj za příznivou cenu\r\n- detekce srdeční aritmie<br>- systém měření pomocí pouze jednoho tlačítka<br>- extra velký displej ', 'pressure_measuring_devices', 'Gamma', 'cze'),
(8, 'Digitální monitor krevního tlaku s velkým displejem a pamětí 90-ti měření pro dvě osoby', 'Gamma SMART\r\nDigitální monitor krevního tlaku s velkým displejem a pamětí 90-ti měření pro dvě osoby.', 'Gamma SMART<br>Digitální monitor krevního tlaku s velkým displejem a pamětí 90-ti měření pro dvě osoby.<br><br>- snadné použití<br>- přesné měření<br>- velký displej ', 'pressure_measuring_devices', 'Gamma', 'cze'),
(9, 'Gamma Semi Plus', 'Gamma Semi Plus\r\nPoloautomatický monitor krevního tlaku s velkým displejem a pamětí 90-ti měření ', 'Gamma Semi Plus<br>Poloautomatický monitor krevního tlaku s velkým displejem a pamětí 90-ti měření<br><br>- mnoho funkcí<br>- detekce srdečních aritmií<br>- univerzální komfortní manžeta 22-42cm  \r\n- digitální zobrazení úrovněkrevního tlaku', 'pressure_measuring_devices', 'Gamma', 'cze'),
(10, 'Poloautomatický monitor krevního tlaku s velkým displejem a pamětí posledního měření', 'Gamma Semi\r\nPoloautomatický monitor krevního tlaku s velkým displejem a pamětí posledního měření ', 'Gamma Semi<br>Poloautomatický monitor krevního tlaku s velkým displejem a pamětí posledního měření<br><br>- spolehlivý a jednoduchý<br>- detekce srdečních aritmií<br>- paměť posledního měření\r\n- extra velký displej', 'pressure_measuring_devices', 'Gamma', 'cze'),
(11, 'Gamma Plus', 'Gamma Plus\r\nDigitální monitor krevního tlaku s pamětí 90-ti měření ', 'Gamma Plus<br>Digitální monitor krevního tlaku s pamětí 90-ti měření<br><br>- přesnosný a spolehlivý<br>- detekce srdečních aritmií<br>- zobrazení hladiny krevního tlaku <br>- paměť až 90-ti měření', 'pressure_measuring_devices', 'Gamma', 'cze'),
(12, 'Gamma Active', 'Gamma Active\r\nAutomatický monitor krevního tlaku na zápěstí ', '<b>Gamma Active<br>Automatický monitor krevního tlaku na zápěstí</b><br><br>- kompaktní a snadno přenosný<br>- detekce srdečních aritmií<br>- indikátor hladiny krevního tlaku<br>- paměť až 90 měření ', 'pressure_measuring_devices', 'Gamma', 'cze'),
(13, 'Aneroidní tonometr', 'Gamma 700k\r\nAneroidní tonometr ', 'Gamma 700k<br>Aneroidní tonometr<br><br>- stetoskop součástí setu<br>- snadné použití<br>- vysoká přesnost ', 'pressure_measuring_devices', 'Gamma', 'cze'),
(14, 'Dr. Frei Turbo Car', 'Výkonný kompresorový inhalátor pro vysoké zatížení v dětském provedení', 'Výkonný kompresorový inhalátor pro vysoké zatížení v dětském provedení, je vybaven nosní sprchou.<br><br>Inhalátor Dr.Frei Turbo Car je určen k léčbě a péči o horní i dolní cesty dýchací. Konstrukce inhalátoru předpokládá použití především u dětí. Je vhodný k vyššímu zatížení i při profesionálním použití. Provoz, ovládání a používání je velmi jednoduché. Pro inhalaci lze použity všechny běžné tekuté léky, Vincentku, minerální vody, bylinné odvary. O vhodnosti použitého léčiva se vždy poraďte se svým lékařem.\r\nNebulizační ventil s nastavitelnou velikostí částic v rozmezí 3 – 6 µm umožňuje cílenou léčbu konkrétní části dýchací soustavy.Inhalátor pracuje především jako výkonný profesionální kompresorový inhalátor.\r\nZároveň je však možné ho použít k výplachu nosních dutin jako tzv. nosní sprchu.<br><br>Inhalační terapie\r\nje velice účinná metoda podání léčiva. Výhodou je velmi rychlé vstřebání a nižší dávkování v porovnání s perorálním užitím, je šetrnější vůči vnitřním orgánům díky přesnému cílení, má vysokou využitelnost léčiva. Ventilační systém optimálně přizpůsobuje tok léčiva v průběhu inhalace i při výdechu.\r\nPoužití inhalátoru je velmi jednoduché. Je možné používat libovolné léčivo v tekuté formě dle doporučení lékaře. V případě preventivního použití inhalátoru se obvykle používá fyziologický roztok, Vincentka, solné roztoky, bylinné odvary apod.<br><br>Nosní sprcha<br><br>Přístroj je vybaven nosní sprchou pro celkovou, rychlou a efektivní léčbu horních cest dýchacích (alergická i nealergická rýma, zánět dutin, nosní polypy). Výplach nosních dutin se doporučuje provádět dle doporučení lékaře např. solným roztokem, Vincentkou „Nasalis“ apod. Výplach nosu je vhodný při rýmě (z nachlazení i alergické), při práci v prašném prostředí i jako součást běžné prevence a hygieny nosních dutin.\r\nSoučástí balení je bohaté příslušenství k inhalci a sada pro použití jako nosní sprcha.', 'nebulizers', 'DRFREI', 'cze'),
(15, 'Dr. Frei Turbo Train', 'Kompresorový inhalátor pro léčbu astma, alergií a dalších respiračních onemocnění především u dětí', 'Dětský kompresorový inhalátor v provedení vláček.<br><br>Preventivní inhalování posiluje odolnost dýchacích cest.<br>Kompresorový inhalátor Dr.Frei Turbo Train je určen pro cílenou inhalační léčbu i preventivní použití u dětských pacientů v domácnosti.<br>Výkonný pístový kompresor vytváří konzistentní jemný aerosol pro účinnou léčbu respiračních onemocnění. Je určen do domácností pro preventivní a léčebnou inhalaci, pro léčbu dýchacích nemocí a potíží. Použít lze všechna běžně používaná léčiva (Vincentku, micerální vody, léčiva určená k inhalaci).<br>Součástí balení je kompletní příslušenství pro inhalaci.<br><br>Inhalační terapie<br>je velice účinná metoda podání léčiva. Výhodou je velmi rychlé vstřebání a nižší dávkování v porovnání s perorálním užitím, je šetrnější vůči vnitřním orgánům díky přesnému cílení, má vysokou využitelnost léčiva. Ventilační systém optimálně přizpůsobuje tok léčiva v průběhu inhalace i při výdechu.<br>Použití inhalátoru je velmi jednoduché. Je možné používat libovolné léčivo v tekuté formě dle doporučení lékaře. V případě preventivního použití inhalátoru se obvykle používá fyziologický roztok, Vincentka, solné roztoky, bylinné odvary apod.', 'nebulizers', 'DRFREI', 'cze'),
(16, 'Dr. Frei Turbo Mini', 'Kompresorový inhalátor pro léčbu astma, alergií a dalších respiračních onemocnění především v domácnostech', 'Kompresorový inhalátor Dr.Frei Turbo Mini je určen pro léčbu astma, alergií a dalších respiračních onemocnění především v domácnostech.<br><br>Kompresorový inhalátor Dr.Frei Turbo Mini je určen pro cílenou inhalační léčbu i preventivní použití u dětských pacientů v domácnosti.<br><br>Výkonný pístový kompresor vytváří konzistentní jemný aerosol pro účinnou léčbu respiračních onemocnění. Je určen do domácností pro preventivní a léčebnou inhalaci, pro léčbu dýchacích nemocí a potíží. Použít lze všechna běžně používaná léčiva (Vincentku, micerální vody, léčiva určená k inhalaci).<br><br>Součástí balení je kompletní příslušenství pro inhalaci.<br><br>Inhalační terapie<br><br>je velice účinná metoda podání léčiva. Výhodou je velmi rychlé vstřebání a nižší dávkování v porovnání s perorálním užitím, je šetrnější vůči vnitřním orgánům díky přesnému cílení, má vysokou využitelnost léčiva. Ventilační systém optimálně přizpůsobuje tok léčiva v průběhu inhalace i při výdechu.<br><br>Použití inhalátoru je velmi jednoduché. Je možné používat libovolné léčivo v tekuté formě dle doporučení lékaře. V případě preventivního použití inhalátoru se obvykle používá fyziologický roztok, Vincentka, solné roztoky, bylinné odvary apod.<br><br>', 'nebulizers', 'DRFREI', 'cze'),
(17, 'Dr. Frei Turbo Flow', 'Kompresorový inhalátor k pravidelnému používání v domácnostech s možností regulace velikosti částic', 'Kompresorový inhalátor určený k pravidelnému používání v domácnostech s možností regulace velikosti částic.<br><br>Inhalátor Dr.Frei Turbo Flow je určen k léčbě a péči o horní i dolní cesty dýchací. Konstrukce inhalátoru je provedena jako univerzální, především pro domácí užití s ohledem na jednoduchost. Provoz, ovládání a používání je velmi jednoduché. Pro inhalaci lze použity všechny běžné tekuté léky, Vincentku, minerální vody, bylinné odvary. O vhodnosti použitého léčiva se vždy poraďte se svým lékařem.<br>Nebulizační ventil s nastavitelnou velikostí částic v rozmezí 3 – 6 µm umožňuje cílenou léčbu konkrétní části dýchací soustavy.<br><br>Inhalační terapie<br><br>je velice účinná metoda podání léčiva. Výhodou je velmi rychlé vstřebání a nižší dávkování v porovnání s perorálním užitím, je šetrnější vůči vnitřním orgánům díky přesnému cílení, má vysokou využitelnost léčiva. Ventilační systém optimálně přizpůsobuje tok léčiva v průběhu inhalace i při výdechu.<br>Použití inhalátoru je velmi jednoduché. Je možné používat libovolné léčivo v tekuté formě dle doporučení lékaře. V případě preventivního použití inhalátoru se obvykle používá fyziologický roztok, Vincentka, solné roztoky, bylinné odvary apod.<br>', 'nebulizers', 'DRFREI', 'cze'),
(18, 'Digitální teploměr v dětském provedení ve tvaru medvídka Dr. Frei T-30', 'Digitální teploměr v dětském provedení ve tvaru medvídka', 'Digitální teploměr v dětském provedení ve tvaru medvídka.<br><br>Teploměr patří do základní výbavy v péči o miminko. Horečka je projevem různých onemocnění, a abychom ji odhalili, potřebujeme spolehlivý teploměr.<br>Digitální teploměr Dr.Frei je moderní rychloběžka s ohebným hrotem v dětském provedení. Je spolehlivý, při měření pod jazykem nebo rektálně se výsledek zobrazí již za 10 vteřin. Měření v podpaží trvá 1 minutu.<br>Díky ohebnému hrotu snadno změříme dětem teplotu v konečníku. Teploměr je plně vodotěsný, což zaručuje bezproblémovou údržbu.<br>Automatické vypnutí teploměru cca po 9 minutách nečinnosti.<br><br>Obsah balení:<br><br>  -  Teploměr, ochranné plastové pouzdro, návod', 'digital_thermometers', 'DRFREI', 'cze'),
(19, 'Bezkontaktní teploměr pro rychlé a přesné měření tělesné teploty Dr. Frei MI-100', 'Bezkontaktní teploměr pro rychlé a přesné měření tělesné teploty', 'Bezkontaktní teploměr pro rychlé a přesné měření tělesné teploty.<br><br>Využívá moderní technologii vyhodnocení infračerveného vyzařování. Je testovaný podle mezinárodních norem. Díky své konstrukci není měření ovlivněno teplotou okolí (za předpokladu dodržení provozní teploty). Teploměr provede samočinný test při každém zapnutí, který zaručuje vysokou přesnos měření. Teploměr Dr.Frei MI-100 je určen k měření a sledování teploty lidského těla v domácnosti. Je určen pro osoby všech věkových skupin, především dětí. Teploměr byl klinicky testován a bylo prokázáno, že při použití v souladu s návodem k použití je přesný a bezpečný.<br><br>Vlastnosti teploměru:<br><br>Rychlé použití, díky technologii snímání infračerveného vyzařování zaručuje bezpečné a hygienické měření během několika sekund bezkontaktní metodou.<br><br>Multifunkční užití (široký rozsah měření) povrchové teploty předmětů od 0 °C do 100.0 °C; Přístroj lze použít k měření tělesné teploty na čele, ale také k měření povrchové teploty následujících předmětů:<br> - Povrchová teplota mléka v dětské lahvi<br> - Povrchová teplota vody na koupání<br> - Povrchová teplota předmětů<br><br>Přesný a spolehlivý díky konstrukci sestavy sondy.<br><br>Šetrný a snadno použitelný<br> - Jednoduché a snadné použití teploměru.<br> - Použití je možné i u spícího dítěte, které není třeba budit.<br> - Měří rychle, takže se u dětí snadno používá.<br><br>Uživatel může v režimu paměť vyvolat 20 naposledy změřených hodnot.<br><br>Bezpečný a hygienický<br> - Teploměr nemá přímý kontakt s pokožkou.<br> - Nehrozí rozbití skla nebo spolknutí rtuti.<br> - Naprosto bezpečný při používání u dětí.<br> - Sondu lze čistit bavlněným tamponem navlhčeným v alkoholu, takže je tento teploměr zcela hygienický i pokud jej používá celá rodina.<br><br>Alarm horečky 10 krátkých pípnutí a červené prosvětlení na displeji varuje pacienta, že naměřená teplota je vyšší než 37.5 °C.', 'digital_thermometers', 'DRFREI', 'cze'),
(20, 'Elektrická odsávačka mateřského mléka Dr. Frei GM-30', 'Elektrická odsávačka mateřského mléka', 'Elektrická odsávačka mateřského mléka<br><br>Mateřské mléko je tím nejlepším, co můžete dopřát svému miminku v prvním půlroce života. Švýcarská kvalita značky dr. Frei zaručuje bezbolestné odsávání a díky novorozeneckému dudlíku může být dítě nakrmeno i v nepřítomnosti maminky. Dopřejte svému miminku to nejlepší.<br><br>Elektrická odsávačka značky dr. Frei je ideálním pomocníkem pro maminky, které odsávají často, třeba i několikrát denně. Skvěle slouží pro pohodlné odsátí mateřského mléka přímo z prsu do zásobníku. Sami si můžete regulovat intenzitu sání pomocí otočného kolečka, aby byl proces příjemný a bezbolestný.<br><br>Pohon je zajištěn buď přímo ze sítě, nebo pomocí dvou baterií AA 1,5V.<br><br>Díky malým rozměrům a hmotnosti ji lze snadno přepravovat. Malý počet dílů usnadňuje čištění i montáž. Všechny části (kromě motoru) se můžou vyvářet.<br><br>Je ideálním pomocníkem pro matky, které nemohou dítě nakrmit a zároveň nechtějí zavádět umělou výživu.<br><br>Neobsahuje škodlivý BPA, je zdravotně nezávadná. Balení dále obsahuje silikonový dudlík a adaptér na široké láhve.<br>Kojení je přirozený způsob výživy novorozence a kojence. Existuje mnoho důvodů, proč se matky rozhodnou pro používání odsávačky mateřského mléka, nebo kdy je potřeba použít odsávačky, např.:<br><br> - matka se chce vrátit do práce<br> - pohyb matky s dítětem někde, kde není vhodné kojit<br> - matka musí brát léky, které se přenáší do mateřského mléka<br> - kojení je bolestivé<br> - nadměrná tvorba mateřského mléka, které dítě nespotřebuje<br><br>Další příklady kdy používat odsávačku:<br><br> - při malé tvorbě mléka – stimuluje činnost mléčných žláz<br> - po kojení, pokud není prs prázdný a chcete předejít bolestivým zánětům<br> - v případě tzv. mléčných návalů – náhlého přeplnění mlékem<br> - pokud máte vpáčené bradavky<br> - pokud mezi krmením cítíte náhlé přeplnění prsu a nechcete budit dítě<br> - pokud nastoupíte do zaměstnání a nechcete přerušit kojení<br><br>Obsah balení:<br><br> - elektrická odsávačka<br> - síťový adaptér<br> - láhev 120 ml se šroubovacím uzávěrem<br> - novorozenecký dudlík<br> - adaptér pro láhve se širokým hrdlem<br> - stojánek<br><br>Země původu:<br><br> - Švýcarsko<br><br>Kompatibilita:<br><br> - odsávačka je kompatibilní se značkou Medela<br><br>Elektrická odsávačka mateřského mléka je určena pro kojící matky pro odsátí a případné uchování mateřského mléka. Má měkkou pohodlnou přísavku a ergonomický tvar. Simuluje přirozené sání novorozeněte. Provoz možný na 2 tužkové baterie nebo na síťový adaptér. Neobsahuje Bisphenol A (vyhovuje direktivě EU 321/2011).', 'breast_milk_suckers', 'DRFREI', 'cze'),
(21, 'Manuální dvojčinná odsávačka mateřského mléka Dr. Frei GM-20', 'Dvoufázová manuální odsávačka mateřského mléka', 'Dvoufázová manuální odsávačka mateřského mléka<br><br>Mateřské mléko je tím nejlepším, co můžete dopřát svému miminku v prvním půlroce života. Švýcarská kvalita značky dr. Frei zaručuje bezbolestné odsávání a díky novorozeneckému dudlíku může být dítě nakrmeno i v nepřítomnosti maminky. Dopřejte svému miminku to nejlepší.<br><br>Oblíbená dvoufázová manuální odsávačka značky dr. Frei s příjemným designem a ergonomickou rukojetí, díky které je odsávání pohodlné a snadné. Může být obsluhována pouze jednou rukou. Technologie dvoufázového sání věrně napodobuje sací rytmus miminka. V první fázi tak napodobí rychlé sání, což stimuluje vyloučení mléka z mléčné žlázy. Ve druhé fázi pak simuluje hlubší sání miminka, kdy dochází k samotnému vylučování mléka a jeho odsávání do lahvičky.<br><br>Sami si můžete regulovat intenzitu sacího výkonu a nastavení na masážní nebo sací funkci. Díky malým rozměrům a hmotnosti ji lze snadno přepravovat. Malý počet dílů usnadňuje čištění i montáž. Všechny části se můžou vyvářet.<br><br>Je ideálním pomocníkem pro matky, které nemohou dítě nakrmit a zároveň nechtějí zavádět umělou výživu.<br><br>Je vhodná spíše pro příležitostné odsávání, ale bude skvělým pomocníkem na cestách, kde není možnost připojení k elektrické zásuvce.<br><br>Neobsahuje škodlivý BPA, je zdravotně nezávadná. Balení dále obsahuje silikonový dudlík a adaptér na široké láhve.<br>Kojení je přirozený způsob výživy novorozence a kojence. Existuje mnoho důvodů, proč se matky rozhodnou pro používání odsávačky mateřského mléka, nebo kdy je potřeba použít odsávačky, např.:<br><br> - matka se chce vrátit do práce<br> - pohyb matky s dítětem někde, kde není vhodné kojit<br> - matka musí brát léky, které se přenáší do mateřského mléka<br> - kojení je bolestivé<br> - nadměrná tvorba mateřského mléka, které dítě nespotřebuje<br><br>Další důvody kdy používat odsávačku:<br><br> - při malé tvorbě mléka – stimuluje činnost mléčných žláz<br> - po kojení, pokud není prs prázdný a chcete předejít bolestivým zánětům<br> - v případě tzv. mléčných návalů – náhlého přeplnění mlékem<br> - pokud máte vpáčené bradavky<br> - pokud mezi krmením cítíte náhlé přeplnění prsu a nechcete budit dítě<br> - pokud nastoupíte do zaměstnání a nechcete přerušit kojení<br><br>Obsah balení:<br><br> - manuální odsávačka<br> - ochranné plastové víčko prsní přísavky<br> - láhev 120 ml se šroubovacím uzávěrem<br> - novorozenecký dudlík<br> - náhradní membrána<br> - adaptér pro láhve se širokým hrdlem<br> - stojánek<br><br>Země původu:<br><br> - Švýcarsko<br><br>Kompatibilita:<br><br> - odsávačka je kompatibilní se značkou Medela<br><br>Kdy používat odsávačku?<br><br> - při malé tvorbě mléka – stimuluje činnost mléčných žláz<br> - po kojení, pokud není prs prázdný a chcete předejít bolestivým zánětům<br> - v případě tzv. mléčných návalů – náhlého přeplnění mlékem<br> - pokud máte vpáčené bradavky<br> - pokud mezi krmením cítíte náhlé přeplnění prsu a nechcete budit dítě<br> - pokud nastoupíte do zaměstnání a nechcete přerušit kojení<br><br>Manuální dvojčinná odsávačka mateřského mléka je určena pro kojící matky pro odsátí a případné uchování mateřského mléka. Má měkkou pohodlnou přísavku a ergonomický tvar. Simuluje přirozené sání novorozeněte. Možnost regulace intenzity sání, nastavení na masážní funkci nebo sací funkci. Neobsahuje Bisphenol A (vyhovuje direktivě EU 321/2011).', 'breast_milk_suckers', 'DRFREI', 'cze'),
(22, 'Manuální odsávačka mateřského mléka Dr. Frei GM-10', 'Manuální odsávačka mateřského mléka', 'Manuální odsávačka mateřského mléka<br><br>Mateřské mléko je tím nejlepším, co můžete dopřát svému miminku v prvním půlroce života. Švýcarská kvalita značky dr. Frei zaručuje bezbolestné odsávání a díky novorozeneckému dudlíku může být dítě nakrmeno i v nepřítomnosti maminky. Dopřejte svému miminku to nejlepší.<br><br>Tato komfortní odsávačka má moderní design a umožňuje rychlé a bezbolestné odsávání mléka. Díky ergonomické rukojeti je odsávání pohodlné a snadné. Může být obsluhována pouze jednou rukou. Měkká prsní přísavka napodobuje sání miminka a tím stimuluje tok mléka. Díky malým rozměrům a hmotnosti ji lze snadno přepravovat. Malý počet dílů usnadňuje čištění i montáž. Všechny části se můžou vyvářet.<br><br>Je ideálním pomocníkem pro matky, které nemohou dítě nakrmit a zároveň nechtějí zavádět umělou výživu.<br><br>Je vhodná spíše pro příležitostné odsávání, ale bude skvělým pomocníkem na cestách, kde není možnost připojení k elektrické zásuvce.<br><br>Neobsahuje škodlivý BPA, je zdravotně nezávadná. Balení dále obsahuje silikonový dudlík a adaptér na široké láhve.<br>Kojení je přirozený způsob výživy novorozence a kojence. Existuje mnoho důvodů, proč se matky rozhodnou pro používání odsávačky mateřského mléka, nebo kdy je potřeba použít odsávačky, např.:<br><br> - matka se chce vrátit do práce<br> - pohyb matky s dítětem někde, kde není vhodné kojit<br> - matka musí brát léky, které se přenáší do mateřského mléka<br> - kojení je bolestivé<br> - nadměrná tvorba mateřského mléka, které dítě nespotřebuje<br><br>Další možné důvody kdy používat odsávačku:<br><br> - při malé tvorbě mléka – stimuluje činnost mléčných žláz<br> - po kojení, pokud není prs prázdný a chcete předejít bolestivým zánětům<br> - v případě tzv. mléčných návalů – náhlého přeplnění mlékem<br> - pokud máte vpáčené bradavky<br> - pokud mezi krmením cítíte náhlé přeplnění prsu a nechcete budit dítě<br> - pokud nastoupíte do zaměstnání a nechcete přerušit kojení<br><br>Obsah balení:<br><br> - manuální odsávačka<br> - ochranné plastové víčko prsní přísavky<br> - láhev 120 ml se šroubovacím uzávěrem<br> - novorozenecký dudlík<br> - náhradní membrána<br> - adaptér pro láhve se širokým hrdlem<br> - stojánek<br><br>Země původu:<br><br> - Švýcarsko<br><br>Kompatibilita:<br><br> - odsávačka je kompatibilní se značkou Medela<br><br> Manuální odsávačka mateřského mléka je určena pro kojící matky pro odsátí a případné uchování mateřského mléka. Má měkkou pohodlnou přísavku a ergonomický tvar. Simuluje přirozené sání novorozeněte. Neobsahuje Bisfenol A (vyhovuje direktivě EU 321/2011).', 'breast_milk_suckers', 'DRFREI', 'cze'),
(23, 'Kvalitní tlakoměr pro pravidelnou kontrolu krevního tlaku Dr. Frei M-300A', 'Digitální tonometr Dr.Frei M-300A je kvalitní tlakoměr pro měření krevního tlaku, pulsu a srdeční arytmie. Ideální do domácností.', 'Digitální tonometr Dr.Frei M-300A je kvalitní tlakoměr pro měření krevního tlaku, pulsu a srdeční arytmie. Ideální do domácností.<br><br>Vlastnosti tlakoměru:<br><br> - Vysoká přesnost měření potvrzená dle protokolu ESH<br> - Detekce srdeční arytmie, tzv. IHB Technology (Irregular Heartbaet technology)<br> - Indikátor úrovně krevního tlaku graficky na displeji zobrazí úroveň dle klasifikace ESH (Evropské společnosti pro hypertenzi)<br> - Snadná obsluha, přehledný displej<br> - Variabilita napájení, v balení přístroje jsou baterie, je možné napájení USB kabelem z počítače nebo USB zdroje<br> - Univerzální manžeta pro obvod paže 22 – 38 cm, inteligentní tlakování manžety zaručuje vyšší přesnost a komfort pro pacienta v průběhu měření<br> - Paměť na 90 posledních výsledků měření včetně data a času, zobrazení průměrné naměřené hodnoty\r\n', 'pressure_measuring_devices', 'DRFREI', 'cze'),
(24, 'Profesionální fonendoskop Dr. Frei S-30', 'Profesionální fonendoskop Dr.Frei S-30', 'Profesionální fonendoskop Dr.Frei S-30<br><br>Víceúčelový duální stetoskop „Rappaport“ s vysokou citlivostí.<br><br> - 2 velikosti membrány pro veškerá audiovyšetření<br> - 3 typy olivek<br> - masivní hlava s mechanickým přepínáním mezi membránami a  aretací<br> - 3 nástavce pro přesnější a dětailnějš vyšetření<br> - silnostěnné hadičky zvukovodu, kovový chromovaný binaurál<br> - v příslušenství sada náhradních membrán<br> - \r\n', 'pressure_measuring_devices', 'DRFREI', 'cze'),
(25, 'Dr. Frei A-20', 'Aneroidní tonometr Dr.Frei A-20 je jednoduchý tlakoměr pro měření krevního tlaku auskultační metodou.', 'Aneroidní tonometr Dr.Frei A-20 je jednoduchý tlakoměr pro měření krevního tlaku auskultační metodou.<br><br>Aneroidní (mechanický) tlakoměr Dr.Frei A-20 je model určený k měření krevního tlaku auskultační metodou (vyhodnocení tzv. Korotkovových ozev). Cenově výhodný model.<br>Balení obsahuje tlakoměr, manžetu 22 – 36 cm s kovovou sponou, která usnadňuje nasazení, stetoskop a ochranné pouzdro.<br>Měření auskultační metodou doporučujeme provádět pouze osobám se zkušenostmi s měřením krevního tlaku touto metodou.\r\n', 'pressure_measuring_devices', 'DRFREI', 'cze'),
(26, 'Stetoskop Dr. Frei S-20', 'Stetoskop Dr. Frei S-20 je oboustranný stetoskop s dobrou akustickou odezvou', 'Stetoskop Dr. Frei S-20 je oboustranný stetoskop s dobrou akustickou odezvou.<br>Stetoskop Dr. Frei S-20 je stetoskop s dvoustrannou hlavou a malou a velkou membránou. Má dobrou akustickou odezvu. Je určen pro poslech srdce, plic a dalších orgánů. Jednoduché použití a elegantní vzhled – má pochromované mosazné sluchátka, odlehčený hrudní konec s dvojčinnou membránou a masivnější konstrukcí. Pohodlné ušní koncovky – olivy pro příjemný poslech.', 'pressure_measuring_devices', 'DRFREI', 'cze'),
(27, 'Dr. Frei M-500A', 'Luxusní tlakoměr s detekcí arytmií a fibrilací, dotykový ovládáním a připojením k PC', 'Luxusní tlakoměr s detekcí arytmií a fibrilací, dotykový ovládáním a připojením k PC.<br><br>Tlakoměr určený pro prevenci mozkové mrtvice. Detekuje nejčastější příčiny cévních mozkových příhod už v raném stadiu.<br>Digitální tonometr Dr.Frei M-500A je špičkový tlakoměr pro měření krevního tlaku, pulsu, srdeční arytmie a dalších specifické arytmie a srdečních nepravidelností (např. fibrilací). Velmi vhodný model pro rizikové skupiny (osoby nad 50 let, s nadváhou, cukrovkou, vysokým cholesterolem). Tlakoměr je vybaven dotykovým ovládáním, připojením k PC a pamětí pro 2 uživatele.<br><br> - Vysoká přesnost měření potvrzená dle protokolu ESH<br> - Detekce srdeční arytmie a dalších srdečních nepravidelností, tzv. IHB Advanced Technology (Irregular Heartbaet technology), upozorňující na běžné arytmie i specifické arytmie. Zvyšuje pravděpodobnost včasného odhalení vážného onemocnění (mozkové mrtvice)<br> - CAM technologie (Clinically Accurate measurement) zvyšující přesnost měření (dvě po sobě provedená měření, tento systém vylučuje náhodná ovlivnění výsledku momentálním rozrušením)<br> - Indikátor úrovně krevního tlaku graficky na displeji zobrazí úroveň dle klasifikace ESH (Evropské společnosti pro hypertenzi)<br> - Snadná obsluha, přehledný displej, dotykové ovládání<br> - Variabilita napájení, v balení přístroje jsou baterie, je možné napájení USB kabelem z počítače nebo USB zdroje (není součástí balení)<br> - Univerzální manžeta pro obvod paže 22 – 38 cm, inteligentní tlakování manžety zaručuje vyšší přesnost a komfort pro pacienta v průběhu měření<br> - Paměť na 90 posledních výsledků pro 2 uživatele, měření včetně data a času, zobrazení průměrné naměřené hodnoty, zobrazení dopolední a odpolední průměrné hodnoty<br> - Možnost nastavení alarmu (připomínka např. užití léků apod.)', 'pressure_measuring_devices', 'DRFREI', 'cze'),
(28, 'Dr. Frei M-400A', 'Kvalitní tlakoměr pro pravidelnou kontrolu krevního tlaku a prevenci mozkové mrtvice', 'Kvalitní tlakoměr pro pravidelnou kontrolu krevního tlaku a prevenci mozkové mrtvice.<br><br>Tlakoměr určený pro prevenci mozkové mrtvice. Detekuje nejčastější příčiny cévních mozkových příhod už v raném stadiu.<br>Digitální tonometr Dr.Frei M-400A je špičkový tlakoměr pro měření krevního tlaku, pulsu, srdeční arytmie a dalších specifických arytmií a srdečních nepravidelností (např. fibrilací). Velmi vhodný model pro rizikové skupiny (osoby nad 50 let, s nadváhou, cukrovkou, vysokým cholesterolem).<br><br> - Vysoká přesnost měření potvrzená dle protokolu ESH<br> - Detekce srdeční arytmie a dalších srdečních nepravidelností, tzv. IHB Advanced Technology (Irregular Heartbaet technology), upozorňující na běžné arytmie i specifické arytmie. Zvyšuje pravděpodobnost včasného odhalení vážného onemocnění (mozkové mrtvice)<br> - CAM technologie (Clinically Accurate measurement) zvyšující přesnost měření (dvě po sobě provedená měření, tento systém vylučuje náhodná ovlivnění výsledku momentálním rozrušením)<br> - Indikátor úrovně krevního tlaku graficky na displeji zobrazí úroveň dle klasifikace ESH (Evropské společnosti pro hypertenzi)<br> - Snadná obsluha, přehledný displej<br> - Variabilita napájení, v balení přístroje jsou baterie, je možné napájení USB kabelem z počítače nebo USB zdroje<br> - Univerzální manžeta pro obvod paže 22 – 38 cm, inteligentní tlakování manžety zaručuje vyšší přesnost a komfort pro pacienta v průběhu měření<br> - Paměť na 90 posledních výsledků měření včetně data a času, zobrazení průměrné naměřené hodnoty, zobrazení dopolední a odpolední průměrné hodnoty<br> - Možnost nastavení alarmu (připomínka např. užití léků apod.)', 'pressure_measuring_devices', 'DRFREI', 'cze'),
(29, 'Compressor nebulizer', 'Gamma Effect New Compressor nebulizer', 'Gamma Effect New <br> Compressor nebulizer <br> - Effective and Reliable <br> - Compact model', 'nebulizers', 'Gamma', 'eng'),
(30, 'Compressor nebulizer', 'Gamma Effect New - Compressor nebulizer', 'Gamma Effect New <br> - Compressor nebulizer <br> Compact model', 'nebulizers', 'Gamma', 'eng'),
(31, 'Digital Thermometer', 'Gamma Thermo Base <br>Digital Thermometer', 'Gamma Thermo Base <br> Digital Thermometer <br> - Mercury and Glass <br> - High Accuracy <br> - Last Measurement Memory <br> - Measuring Time Up to 60 Seconds', 'digital_thermometers', 'Gamma', 'eng'),
(32, 'Digital Thermometer with Flexible End', 'Gamma Thermo Base <br>Digital Thermometer', 'Gamma Trermo Soft <br> Digital Thermometer with Flexible Tip <br> - Safe Measurement <br> - High Accuracy <br> - Flexible Watertight Tip <br> - Measurement Time 60 Seconds', 'digital_thermometers', 'Gamma', 'eng'),
(33, 'Gamma Control', 'Gamma Control <br>Digital Blood Pressure Monitor with Large Display and Last Measurement Memory', 'Gamma Control <br> Digital blood pressure monitor with large display and memory of the last measurement <br> - <br> - Extra large display', 'pressure_measuring_devices', 'Gamma', 'eng'),
(34, 'Digital Blood Pressure Monitor with Large Display and Memory 90 Meters for Two People', 'Gamma SMART<br>Digitální monitor krevního tlaku s velkým displejem a pamětí 90-ti měření pro dvě osoby.', 'Gamma SMART digital blood pressure monitor with large display and memory 90 measurements for two people <br> - easy use <br> - accurate measurement <br> - large display', 'pressure_measuring_devices', 'Gamma', 'eng'),
(35, 'Gamma Semi Plus', 'Gamma Semi Plus <br>A semi-automatic blood pressure monitor with large display and 90-megapixel memory', 'Gamma Semi Plus <br> Semi-automatic blood pressure monitor with large display and 90-megapixel memory <br> - many functions <br> - heart arrhythmia detection <br> - universal comfort cuff 22-42cm - digital display of blood pressure level', 'pressure_measuring_devices', 'Gamma', 'eng'),
(36, 'Semi-automatic blood pressure monitor with large display and last measurement memory', 'Gamma Semi<br>Poloautomatický monitor krevního tlaku s velkým displejem a pamětí posledního měření ', 'Gamma Semi Semi-automatic blood pressure monitor with large display and last measurement memory <br> Gamma Semi Semi-automatic blood pressure monitor with large display and last measurement memory <br> - reliable and simple <br> - detection cardiac arrhythmias - memory of the last measurement - extra large display', 'pressure_measuring_devices', 'Gamma', 'eng'),
(37, 'Gamma Plus', 'Gamma Plus <br>Digital blood pressure monitor with 90-count memory', 'Gamma Plus <br> Digital blood pressure monitor with 90-count measurement <br> - Accuracy and Reliability <br> - Cardiac arrhythmia detection - - Blood pressure display <br> - Memory up to 90 measurements', 'pressure_measuring_devices', 'Gamma', 'eng'),
(38, 'Gamma Active', 'Gamma Active <br>Automatic Wrist Blood Pressure Monitor', '<b> Gamma Active <br> Automatic Wrist Blood Pressure Monitor </b> <br> - Compact and easy to carry <br> - Heart Arrhythmia Detection <br> - Blood Pressure Indicator <br> - Memory Up 90 measurements', 'pressure_measuring_devices', 'Gamma', 'eng'),
(39, 'Aneroid tonometer', 'Gamma 700k <br>Aneroid tonometer', 'Gamma 700k <br> Aneroid Tonometer <br>', 'pressure_measuring_devices', 'Gamma', 'eng'),
(40, 'Dr. Frei Turbo Car ', ' Powerful high-performance compressor inhaler for children ', 'Powerful high-performance compressor inhaler for children is equipped with a nasal shower. <br> Dr.Frei Turbo Car is intended for the treatment and care of the upper and lower respiratory tract. The design of the inhaler is intended primarily for use in children. It is suitable for higher loads even in professional use. Operation, operation and use is very simple. For inhalation all common liquid medications, Vincent, mineral water, herbal remedies can be used. Always consult your doctor about the suitability of your medicine. A nebulizer valve with adjustable particle size ranging from 3 to 6 μm allows targeted treatment of a specific part of the respiratory system. The inhaler works primarily as a powerful professional compressor inhaler. At the same time, it can be used to rinse nasal cavities as a nasal shower. <br> Inhalation therapy is a very effective method of drug delivery. The advantage is very rapid absorption and lower dosing compared to oral use, it is more gentle towards the internal organs due to precise targeting, it has a high usability of the drug. The ventilation system optimally adapts the flow of the drug during inhalation and exhalation. The use of the inhaler is very simple. It is possible to use any drug in liquid form according to the doctor`s advice. In case of preventive use of the inhaler, physiological saline, Vincentka, saline solutions, herbal remedies, etc. are used. <br> Nasal shower <br> The device is equipped with a nasal shower for total, rapid and effective treatment of the upper respiratory tract allergic and non-allergic rhinitis, sinusitis, nasal polyps). Nose rinsing is recommended to be done according to the physician`s recommendation, eg saline solution, Vincentka Nasalis, etc. Nose rinse is suitable for cold (cold and allergic), dusty and as a part of normal nasal cavity prevention and hygiene. The package includes rich inhalation accessories and a set for use as a nasal shower.', 'nebulizers', 'DRFREI', 'eng'),
(41, 'Dr. Frei Turbo Train ', ' Compressor inhaler for the treatment of asthma, allergies and other respiratory diseases, especially in children ', 'Children`s compressor inhaler in train design <br> Powerful piston the compressor creates a consistent fine aerosol for the effective treatment of respiratory diseases. It is intended for use in homes for preventive and therapeutic inhalation, for the treatment of respiratory diseases and disorders. All commonly used medications (Vincent, micellar water, inhalation drugs) can be used. <br> Inhalation therapy <br> Inhalation therapy <br> Inhalation therapy <br> The advantage is very rapid absorption and lower dosing compared to oral use, it is more gentle towards the internal organs due to precise targeting, it has a high usability of the drug. The ventilation system optimally adapts the flow of the drug during inhalation and exhalation. The use of the inhaler is very simple. It is possible to use any drug in liquid form according to the doctor`s advice. In case of preventive use of the inhaler, physiological saline, Vincentka, saline solutions, herbal odor, etc. are usually used.', 'nebulizers', 'DRFREI', 'eng'),
(42, 'Dr. Frei Turbo Mini ', ' Compressor inhaler for the treatment of asthma, allergies and other respiratory diseases, particularly in households', 'Dr.Frei Turbo Mini Compressor Inhaler is designed for the treatment of asthma, allergies and other respiratory diseases, mainly in households. <br> Dr.Frei Turbo Mini Compressor Inhaler is designed for targeted inhalation and preventive use in pediatric patients. <br> The powerful piston compressor produces a consistent gentle aerosol for effective treatment of respiratory diseases. It is intended for use in homes for preventive and therapeutic inhalation, for the treatment of respiratory diseases and disorders. You can use all commonly used medicines (Vincent, micellar water, inhalants). <br> Inhalation therapy <br> Inhalation therapy <br> Inhalation therapy <br> administration of the drug. The advantage is very rapid absorption and lower dosing compared to oral use, it is more gentle towards the internal organs due to precise targeting, it has a high usability of the drug. The ventilation system optimally adapts the flow of the drug during inhalation and exhalation. <br> The use of the inhaler is very simple. It is possible to use any drug in liquid form according to the doctor`s advice. In cases of preventive use of the inhaler, physiological saline, Vincentka, saline solutions, herbal remedies, etc. are usually used. <br>', 'nebulizers', 'DRFREI', 'eng'),
(43, 'Dr. Frei Turbo Flow ', ' Compressor inhaler for regular household use with particle size control ', 'Compressor inhaler designed for regular use in homes with particle size control. <br> Dr.Frei Turbo Flow inhaler is designed to treat and care for the upper and lower respiratory tract. The design of the inhaler is made as universal, especially for home use with respect to simplicity. Operation, operation and use is very simple. For inhalation all common liquid medications, Vincent, mineral water, herbal remedies can be used. About the fitness of the drug you should always talk to your doctor.- Nebulizer valve with an adjustable particle size in the range of 3 - 6 μm allows targeted treatment of a particular part of the respiratory system.- <br> Inhalation therapy <br> is very an effective method of administering the drug. The advantage is very rapid absorption and lower dosing compared to oral use, it is more gentle towards the internal organs due to precise targeting, it has a high usability of the drug. The ventilation system optimally adapts the flow of the drug during inhalation and exhalation. The use of the inhaler is very simple. It is possible to use any drug in liquid form according to the doctor`s advice. In cases of preventive use of the inhaler, physiological saline, Vincentka, saline solutions, herbal remedies, etc. are usually used.', 'nebulizers', 'DRFREI', 'eng'),
(44, 'Digital baby thermometer in the shape of a teddy bear Dr. Frei T-30 ', ' Teddy bear digital baby thermometer ', 'Digital baby thermometer in the shape of a teddy bear. <br> The thermometer is a basic baby care device. Fever is a manifestation of a variety of diseases, and we need a reliable thermometer to reveal it. <br> Dr.Frei Digital Thermometer is a modern high-speed baby with a child-shaped tip. It is reliable, when measuring under the language or rectally, the result is displayed in just 10 seconds. Measurement in the armpits lasts 1 minute. <br> Thanks to the flexible tip, we can easily measure the temperature in the rectum for children. The thermometer is fully waterproof, which ensures trouble-free maintenance <br> Automatic thermometer shutdown after approx. 9 minutes of inactivity <br> Thermometer, protective plastic case,', 'digital_thermometers', 'DRFREI', 'eng'),
(45, 'Non-contact thermometer for rapid and accurate body temperature measurement Frei MI-100 ', ' Non-contact thermometer for rapid and accurate body temperature measurement ', 'Non-contact thermometer for fast and accurate body temperature measurement. <br> Uses advanced infrared radiation technology. It is tested according to international standards. Due to its construction, the measurement is not influenced by the ambient temperature (provided the operating temperature is maintained). The thermometer performs a self-test every time it is turned on, ensuring high measurement accuracy. The Dr.Frei MI-100 thermometer is designed to measure and monitor the temperature of the human body in the home. It is designed for people of all ages, especially children. The thermometer has been clinically tested and proven to be accurate and safe when used in accordance with the instruction manual. <br> Thermometer properties: <br> Quick use, thanks to infrared emission technology, guarantees safe and hygienic measurement in a few seconds by contactless method <br> Multifunctional use (wide range of measurements) Surface temperature of objects from 0 ° C to 100 ° C; The device can be used to measure the body temperature at the forehead, but also to measure the surface temperature of the following items: <br> - Surface temperature of the milk in the baby bottle <br> - Surface temperature of the bathing water <br> - Surface temperature of the objects > Precise and Reliable by Designing the Probe Assembly   <br> fast and easy to use in children <br> The user can recall the 20 most recently measured values ​​in memory mode <br> - There is no danger of glass breakage or swallowing of mercury <br> - Alarm of fever 10 short beeps and red illumination on the display warns the patient that the measured temperature is higher than 37.5 ° C.', 'digital_thermometers', 'DRFREI', 'eng'),
(46, 'Electric Breast Pump Frei GM-30 ', ' Electric Breast Pump ', 'Electric milk breast milk <br> Breast milk is the best you can afford your baby in the first half of your life. Swiss quality brand dr. Frei guarantees painless suction, and thanks to the neonatal pacifier the baby can be fed even in the absence of a mother. Give your baby the best. <br> Electric breast pump dr. Frei is an ideal helper for mothers who suck out often, even several times a day. It is great for comfortable sucking of breast milk directly from the breast to the reservoir. You can regulate the suction intensity by means of a rotary wheel to make the process pleasant and painless. <br> Drive is provided either directly from the grid or by using two 1.5V AA batteries. weight can be easily transported. A small number of parts make cleaning and assembly easier. All parts (except the engine) can be cooked. <br> It is an ideal helper for mothers who can not feed the baby and do not want to feed artificial food. <br> Does not contain harmful BPA, it is harmless. The pack also contains a silicone pacifier and a wide bottle adapter. Breastfeeding is a natural way to nourish a newborn and infant. There are many reasons why mothers decide to use a breast milk breast pump or when to use suction pads, for example: <br> - Mother wants to go back to work <br> Mother and baby move somewhere where it is not appropriate breastfeeding <br> - mother must take medication to be transferred to breast milk - breastfeeding is painful <br> - excessive breast milk production that the baby does not consume <br> Other examples of when to use suction cup: <br> - with low milk production - stimulates the activity of the milk glands <br> - after breastfeeding if your breast is empty and you want to prevent painful inflammation <br> - in the case of so called milk flush - sudden overfilling with milk - - if you have ingested nipples <br> - network ad aptér <br> - 120 ml bottle with screw cap <br> - neonatal pacifier <br> - wide neck bottle adapter <br> - stand <br> Country of origin: <br> - Switzerland < br> <br> Compatibility: <br> - Suction cup compatible with Medela brand <br> It has a soft, comfortable suction cup and an ergonomic shape. It simulates the natural sucking of the newborn. Operation possible on 2 pencils or AC adapter. Does not contain Bisphenol A (complies with EU Directive 321/2011).', 'breast_milk_suckers', 'DRFREI', 'eng'),
(47, 'Manual Maternal Dual Breast Pump Frei GM-20 ', ' Two-Phase Manual Breast Pump ', 'Two-phase manual breast milk breast milk <br> Breast milk is the best you can afford your baby in the first half of your life. Swiss quality brand dr. Frei guarantees painless suction, and thanks to the neonatal pacifier the baby can be fed even in the absence of a mother. Give your baby the best. <br> Favorite two-phase manual breast pump by dr. Frei with a nice design and an ergonomic handle that makes the extraction comfortable and easy. It can be operated with only one hand. Two-stage suction technology faithfully mimics the suction rhythm of babies. In the first stage, it imitates rapid suction, which stimulates the secretion of milk from the mammary gland. In the second phase, it simulates a deeper sucking baby when the milk itself is excreted and sucked into a bottle. <br> You can regulate your suction power and massage or suction settings yourself. Thanks to its small dimensions and weight it can be easily transported. A small number of parts make cleaning and assembly easier. All parts can be cooked <br> - it is not possible to connect to an electrical outlet. <br> Does not contain harmful BPA, it is harmless. The pack also contains a silicone pacifier and a wide bottle adapter. Breastfeeding is a natural way to nourish a newborn and infant. There are many reasons why mothers decide to use a breast milk breast pump or when to use suction pads, for example: <br> - Mother wants to go back to work <br> Mother and baby move somewhere where it is not appropriate nursing mother <br> <br> Mothers must take medication to be transferred to breast milk <br> - with low milk production - stimulates the activity of the milk glands <br> - after breastfeeding if your breast is empty and you want to prevent painful inflammation <br> - in the case of so called milk flush - sudden overfilling with milk - - if you have ingested nipples <br> <br> - protective plastic <br> bottle 120 ml with screw cap <br> Country of origin: <br> Switzerland <br> Compatibility: <br> - - stimulates the activity of the mammary glands <br> after breastfeeding if your breast is empty and you want to prevent painful inflammation - in the case of so called milk flushing - sudden overload of milk <br> - if you have ingested nipples <br> - if between feeding you feel a sudden overcrowding of the breast and you do not want to wake a baby <br>> It has a soft, comfortable suction cup and an ergonomic shape. It simulates the natural sucking of the newborn. Suction intensity control, massage setting or suction function. Does not contain Bisphenol A (complies with EU Directive 321/2011).', 'breast_milk_suckers', 'DRFREI', 'eng'),
(48, 'Manual breast milk breast pump Dr. Frei GM-10 ', ' Manual Breast Pump ', 'Manual Breast Pump <br> Breast milk is the best you can afford your baby in the first half of your life. Swiss quality brand dr. Frei guarantees painless suction, and thanks to the neonatal pacifier the baby can be fed even in the absence of a mother. Give your baby the best. <br> This comfortable suction cup has a modern design and allows quick and painless milk extraction. Thanks to the ergonomic handle, suction is convenient and easy. It can be operated with only one hand. The soft breast sucker imitates the sucking baby and thus stimulates the flow of milk. Thanks to its small dimensions and weight it can be easily transported. A small number of parts make cleaning and assembly easier. All parts can be cooked <br>- it is not possible to connect to an electrical outlet. <br> Does not contain harmful BPA, it is harmless. The pack also contains a silicone pacifier and a wide bottle adapter. Breastfeeding is a natural way to nourish a newborn and infant. There are many reasons why mothers decide to use a breast milk breast pump or when to use suction pads, for example: <br> - Mother wants to go back to work <br> Mother and baby move somewhere where it is not appropriate breastfeeding <br> - mother has to take medication to be transferred to breast milk - breastfeeding is painful <br> - excessive breast milk production that the baby does not consume <br> Other possible reasons to use suction cup: > <br> - Inverted nipples <br> <br> - - protective Plastic Bottle Suction Cap <br> - Bottle 120 ml with Screw Cap <br> Neonatal Soother <br> - Replacement Diaphragm <br> - Wide Bottle Adapter <br> - Stand <br> Country of Origin: <br> Switzerland <br> Compatibility: <br> - Breastpumps compatible with Medela brand <br> Manual suction breast milk is intended for nursing mothers for aspiration and eventual preservation of maternal milk. It has a soft, comfortable suction cup and an ergonomic shape. It simulates the natural sucking of the newborn. Does not contain Bisphenol A (complies with EU Directive 321/2011).', 'breast_milk_suckers', 'DRFREI', 'eng'),
(49, 'Quality Pressure Gauge for Regular Control of Blood Pressure Frei M-300A ', 'The Dr.Frei M-300A digital tonometer is a high-quality pressure gauge for measuring blood pressure, pulse and cardiac arrhythmia.', 'The Dr.Frei M-300A digital tonometer is a high-quality pressure gauge for measuring blood pressure, pulse and cardiac arrhythmia. High accuracy of measurement confirmed by ESH protocol - blood pressure graphically displays on the display according to ESH (European Society of Hypertension) <br><br> - Universal arm cuff 22 - 38 cm, intelligent cuff pressure ensures greater accuracy and comfort for the patient during measurement <br> - Memory for 90 last measurement results including date and time, display of the average measured value', 'pressure_measuring_devices', 'DRFREI', 'eng'),
(50, 'Professional Phonendoscope Dr. Frei S-30 ', ' Professional Phonendoscope Dr.Frei S-30 ', 'Dr.Frei S-30 Professional Phonendoscope <br><br> Massive Head with mechanical switching between membranes and arrest <br> - 3 extensions for more accurate and more detailed examination <br> - thick-walled hose tubes, metal chrome-plated binaural <br> <br> accessories set of replacement membranes <br> -', 'pressure_measuring_devices', 'DRFREI', 'eng');
INSERT INTO `productions` (`id`, `title`, `info`, `content`, `type`, `provider`, `lang`) VALUES
(51, 'Dr. Frei A-20 ', ' Dr.Frei A-20 Aneroid Tonometer is a simple blood pressure gauge with auscultation method. ', 'Dr.Frei A-20 aneroid tonometer is a simple pressure gauge for measuring blood pressure by an auscultation method. <br> <br> Aneroid (mechanical) pressure gauge Dr.Frei A-20 is a model designed to measure blood pressure by an auscultation method (evaluation of Korotkov`s eye ). Cost-effective model. <br> Package includes a pressure gauge, a 22 - 36 cm cuff with a metal buckle to facilitate deployment, a stethoscope and a protective sleeve. <br> We recommend the measurement of the auscultation method only to people with experience with blood pressure measurement by this method.', 'pressure_measuring_devices', 'DRFREI', 'eng'),
(52, 'Stethoscope Dr. Frei S-20 ', ' Stethoscope Dr. Frei S-20 is a double-sided stethoscope with a good acoustic response ', 'Stethoscope Dr. The Frei S-20 is a double-sided stethoscope with a good acoustic response. Frei S-20 is a double-sided stethoscope and a small and large membrane. It has a good acoustic response. It is designed for listening to the heart, lungs and other organs. Simple to use and elegant looks - chrome-plated brass headphones, lightweight chest end with double-action membrane and massive design. Comfortable ear plugs - olives for pleasant listening.', 'pressure_measuring_devices', 'DRFREI', 'eng'),
(53, 'Dr. Frei M-500A ', ' Luxury pressure gauge with arrhythmia and fibrillation detection, touch control and PC connection ', 'Luxury pressure gauge with arrhythmia and fibrillation detection, touch control and PC connection. <br> <br> Pressure gauge for stroke prevention. Detects the most common causes of cerebrovascular events at an early stage <br> <br> Dr.Frei M-500A Digital Tonometer is a top-of-the-line pressure gauge for measuring blood pressure, pulse, cardiac arrhythmia and other specific arrhythmias and cardiac irregularities (eg fibrillation). Very suitable model for risk groups (over 50s, overweight, diabetes, high cholesterol). The pressure gauge is equipped with touch control, PC connection and memory for 2 users. <br> <br> - High accuracy of measurement confirmed by ESH protocol <br> - Detection of cardiac arrhythmia and other cardiac irregularities, the so-called IHB Advanced Technology (Irregular Heartbaet technology ), indicating common arrhythmias and specific arrhythmias. Increases the likelihood of timely detection of a serious illness (stroke) <br> - CAM technology (Clinical Accurate measurement) increasing measurement accuracy (two consecutive measurements, ESH (European Society for Hypertension) <br> - <br> - measured values, morning and day views Average Average Values ​​<br> - Alarm Setting Option (Reminder eg use of medication, etc.)', 'pressure_measuring_devices', 'DRFREI', 'eng'),
(54, 'Dr. Frei M-400A ', ' Quality Pressure Gauge for Regular Blood Pressure Control and Stroke Prevention ', 'High-quality pressure gauge for regular blood pressure control and stroke prevention. <br> <br> Pressure gauge for stroke prevention. Detects the most common causes of cerebrovascular events at an early stage. <br> Dr.Frei M-400A Digital Tonometer is a top pressure gauge for measuring blood pressure, pulse, cardiac arrhythmias and other specific arrhythmias and cardiac irregularities (eg fibrillation). Very suitable model for risk groups (over 50s, overweight, diabetes, high cholesterol). <br> <br> - High precision of measurement confirmed by ESH protocol <br> - Detection of cardiac arrhythmia and other cardiac irregularities, called IHB Advanced Technology (Irregular Heartbaet technology), highlighting common arrhythmias and specific arrhythmias. Increases the likelihood of timely detection of a serious illness (stroke) <br> - CAM technology (Clinical Accurate measurement) increasing measurement accuracy (two consecutive measurements, ESH (European Society of Hypertension) <br> - for arm circumference 22 - 38 cm, intelligent cuff pressure ensures higher accuracy and comfort for patient during measurement <br> - Memory for the 90 most recent measurement results including date and time, average value display, morning and afternoon average values ​​<br> - Option to set alarm (reminds such as the use of drugs, etc.)', 'pressure_measuring_devices', 'DRFREI', 'eng');

-- --------------------------------------------------------

--
-- Table structure for table `prod_notes`
--

CREATE TABLE `prod_notes` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prod_notes`
--

INSERT INTO `prod_notes` (`id`, `prod_id`, `title`, `content`) VALUES
(6, 3, 'Typ', 'nebulizátor kompresorový'),
(7, 3, 'Hladina hluku', 'cca 55 dB'),
(8, 3, 'Velikost částic (MMDA)', '2,44 mikrometru'),
(9, 3, 'Nebulizační výkon', '0,4 ml/min'),
(10, 3, 'Kapacita zásobníku léčiva', '8 ml'),
(11, 3, 'Hmotnost', '1550 g'),
(12, 3, 'Rozměry (dxšxv)', '205*155*113 mm'),
(13, 3, 'Standardní příslušenství', 'dospělá a dětská maska, náustek, 5x filtr, vzduchová hadička'),
(14, 3, 'Záruka', '2 roky'),
(15, 3, 'Kód', '6956937000573'),
(16, 4, 'Typ', 'nebulizátor kompresorový'),
(17, 4, 'Hladina hluku', 'cca 55 dB'),
(18, 4, 'Velikost částic (MMDA)', '2,44 mikrometru'),
(19, 4, 'Nebulizační výkon', '0,4 ml/min'),
(20, 4, 'Kapacita zásobníku léčiva', '8 ml'),
(21, 4, 'Hmotnost', '1650 g'),
(22, 4, 'Rozměry (dxšxv)', '265*135*185 mm'),
(23, 4, 'Standardní příslušenství', 'dospělá a dětská maska, náustek, 5x filtr, vzduchová hadička'),
(24, 4, 'Záruka', '2 roky'),
(25, 4, 'Kód', '6956937000580'),
(26, 6, 'Typ', 'digitální teploměr'),
(27, 6, 'Doba měření', 'orálně nebo rektálně 60 +/- 10 sekund, v podpažďí 100 +/- 20 sekund'),
(28, 6, 'Přesnost', 'vysoká +/- 0,1° C'),
(29, 6, 'Flexibilní špička', 'ano'),
(30, 6, 'Vodotěsný', 'ano'),
(31, 6, 'Paměť', 'poslední měření'),
(32, 6, 'Funkce pípnutí při ukončení měření', 'ano'),
(33, 6, 'Stupnice', 'po 0,1° C'),
(34, 6, 'Automatické vypnutí', 'ano'),
(35, 6, 'Záruka', '3 roky'),
(36, 6, 'Kód', '6928916400049'),
(37, 5, 'Typ', 'digitální teploměr'),
(38, 5, 'Doba měření', 'orálně nebo rektálně 60 +/- 10 sekund, v podpažďí 100 +/- 20 sekund'),
(39, 5, 'Přesnost', 'vysoká +/- 0,1° C'),
(40, 5, 'Flexibilní špička', 'ano'),
(41, 5, 'Vodotěsný', 'ano'),
(42, 5, 'Paměť', 'poslední měření'),
(43, 5, 'Funkce pípnutí při ukončení měření', 'ano'),
(44, 5, 'Stupnice', 'po 0,1° C'),
(45, 5, 'Automatické vypnutí', 'ano'),
(46, 5, 'Záruka', '3 roky'),
(47, 5, 'Kód', '6928916400018'),
(48, 7, 'Typ', 'automatický, nadloketní'),
(49, 7, 'Detekce aritmie', 'ano, technologie IHD'),
(50, 7, 'Automatické měření', 'ano, oscilometrickou metodou - FUZZY LOGIC technologií'),
(51, 7, 'Digitální zobrazení úrovně krevního tlaku', 'ne'),
(52, 7, 'Displej', 'extra velký i pro uživatele se slabým zrakem'),
(53, 7, 'Velikost manžety', '22 - 32 cm'),
(54, 7, 'Paměť', 'poslední měření'),
(55, 7, 'Datum', 'ne'),
(56, 7, 'Měkký obal', 'ne'),
(57, 7, 'Zdroj', 'bateriový'),
(58, 7, 'Záruka', '5 let'),
(81, 8, 'Typ', 'automatický, nadloketní'),
(82, 8, 'Detekce aritmie', 'ano, technologie IHD'),
(83, 8, 'Automatické měření', 'ano, oscilometrickou metodou - FUZZY LOGIC technologií'),
(84, 8, 'Digitální zobrazení úrovně krevního tlaku', 'ano'),
(85, 8, 'Displej', 'extra velký, podsvícený, i pro uživatele se slabým zrakem'),
(86, 8, 'Velikost manžety', 'univerzální komfortní 22 - 42 cm'),
(87, 8, 'Paměť', '2x90 měření'),
(88, 8, 'Datum', 'ano'),
(89, 8, 'Měkký obal', 'ano'),
(90, 8, 'Zdroj', 'bateriový, síťový adaptér'),
(91, 8, 'Záruka', '3 roky'),
(92, 9, 'Typ', 'automatický, nadloketní'),
(93, 9, 'Detekce aritmie', 'ano, technologie IHD'),
(94, 9, 'Automatické měření', 'ano, oscilometrickou metodou - FUZZY LOGIC technologií'),
(95, 9, 'Digitální zobrazení hladiny krevního tlaku', 'ano'),
(96, 9, 'Displej', 'velký'),
(97, 9, 'Velikost manžety', 'univerzální komfortní 22 - 42 cm'),
(98, 9, 'Paměť', '90 měření'),
(99, 9, 'Datum', 'ano'),
(100, 9, 'Měkký přepravní obal', 'ano'),
(101, 9, 'Zdroj', 'bateriový'),
(102, 9, 'Záruka', '5 let'),
(125, 12, 'Typ', 'automatický, na zápěstí'),
(126, 12, 'Detekce aritmie', 'ano, technologie IHD'),
(127, 12, 'Automatické měření', 'ano, oscilometrickou metodou - FUZZY LOGIC technologií'),
(128, 12, 'Digitální zobrazení úrovně krevního tlaku', 'ano'),
(129, 12, 'Displej', 'velký'),
(130, 12, 'Velikost manžety', '13,5 - 19,5 cm'),
(131, 12, 'Paměť', '90 měření'),
(132, 12, 'Datum', 'ano'),
(133, 12, 'Přepravní box', 'ano'),
(134, 12, 'Zdroj', 'bateriový'),
(135, 12, 'Záruka', '5 let'),
(136, 13, 'Typ', 'aneriodní tlakoměr v setu'),
(137, 13, 'Tlakoměr', 'kovový, vyšší stupeň přesnosti'),
(138, 13, 'Manžeta', 's kovovým fixačním kroužkem'),
(139, 13, 'Velikost manžety', '22 - 40 cm'),
(140, 13, 'Stetoskop', 'ano'),
(141, 13, 'Měkký obal', 'ano'),
(142, 13, 'Záruka', '18 měsíců'),
(143, 11, 'Typ', 'automatický, nadloketní'),
(144, 11, 'Detekce aritmie', 'ano, technologie IHD'),
(145, 11, 'Automatické měření', 'ano, oscilometrickou metodou - FUZZY LOGIC technologií'),
(146, 11, 'Digitální zobrazení úrovně krevního tlaku', 'ano'),
(147, 11, 'Displej', 'extra velký i pro uživatele se slabým zrakem'),
(148, 11, 'Velikost manžety', '22 - 32 cm'),
(149, 11, 'Paměť', '90 měření'),
(150, 11, 'Datum', 'ano'),
(151, 11, 'Měkký obal', 'ano'),
(152, 11, 'Zdroj', 'bareriový, síťový adaptér'),
(153, 11, 'Záruka', '5 let'),
(154, 10, 'Typ', 'automatický, nadloketní'),
(155, 10, 'Detekce aritmie', 'ano, technologie IHD'),
(156, 10, 'Automatické měření', 'ano, oscilometrickou metodou - FUZZY LOGIC technologií'),
(157, 10, 'Digitální zobrazení hladiny krevního tlaku', 'ne'),
(158, 10, 'Displej', 'velký'),
(159, 10, 'Velikost manžety', '22 - 32 cm'),
(160, 10, 'Paměť', 'poslední měření'),
(161, 10, 'Datum', 'ano'),
(162, 10, 'Měkký přepravní obal', 'ne'),
(163, 10, 'Zdroj', 'bateriový'),
(164, 10, 'Záruka', '5 let'),
(165, 14, 'hlučnost', '? 55 dB(A)'),
(166, 14, 'hmotnost', '1,4 kg'),
(167, 14, 'napájení', '230 V / 50 Hz'),
(168, 14, 'nebulizační výkon', '0,2 až 0,4 ml/min'),
(169, 14, 'objem zásobníku léčiva', '2 - 12 ml'),
(170, 14, 'pracovní podmínky', 'Pracovní teplota 5 °C - 40 °C'),
(171, 14, 'rozměry (d×š×v)', '23 × 16,5 × 14 cm'),
(172, 14, 'střední velikost částic (MMAD)', '3 - 6 µm'),
(173, 14, 'třída ZP', 'IIa'),
(174, 14, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(175, 14, 'kód', 'Turbo Car'),
(176, 15, 'hlučnost', '? 55 dB(A)'),
(177, 15, 'hmotnost', '1,5 kg'),
(178, 15, 'napájení', '230 V / 50 Hz'),
(179, 15, 'napětí', '230 V / 50 Hz'),
(180, 15, 'nebulizační výkon', '0,3 ml/min'),
(181, 15, 'objem zásobníku léčiva', '2 - 10 ml'),
(182, 15, 'pracovní podmínky', 'Pracovní teplota 5 °C - 40 °C'),
(183, 15, 'rozměry (d×š×v)', '23,5 × 11 × 16,5 cm'),
(184, 15, 'střední velikost částic (MMAD)', '3 µm'),
(185, 15, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(186, 15, 'kód', 'Turbo Train'),
(187, 16, 'hlučnost', '? 55 dB(A)'),
(188, 16, 'hmotnost', '1,3 kg'),
(189, 16, 'napájení', '230 V / 50 Hz'),
(190, 16, 'nebulizační výkon', '0,3 ml/min'),
(191, 16, 'objem zásobníku léčiva', '2 - 10 ml'),
(192, 16, 'pracovní podmínky', 'Pracovní teplota 5 °C - 40 °C'),
(193, 16, 'rozměry (d×š×v)', '16,7 × 10,6 × 16,4'),
(194, 16, 'střední velikost částic (MMAD)', '3 µm'),
(195, 16, 'třída ZP', 'IIa'),
(196, 16, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(197, 16, 'kód', 'Turbo Mini'),
(198, 17, 'hlučnost', '? 55 dB(A)'),
(199, 17, 'hmotnost', '1,3 kg'),
(200, 17, 'napájení', '230 V / 50 Hz'),
(201, 17, 'nebulizační výkon', '0,2 až 0,4 ml/min'),
(202, 17, 'objem zásobníku léčiva', '2 - 12 ml'),
(203, 17, 'pracovní podmínky', 'Pracovní teplota 5 °C - 40 °C'),
(204, 17, 'rozměry (d×š×v)', '20,4 × 14,5 × 13,2 cm'),
(205, 17, 'střední velikost částic (MMAD)', '3 - 6 µm'),
(206, 17, 'třída ZP', 'IIa'),
(207, 17, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(208, 17, 'kód', 'Turbo Flow'),
(209, 18, 'napájení', '1 × baterie SR41, 1,55 V'),
(210, 18, 'přesnost měření', '± 0,1 °C (v rozsahu 35,0 – 39,0 °C), mimo tento rozsah ± 0,2 °C'),
(211, 18, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(212, 18, 'kód', 'T-30'),
(213, 19, 'hmotnost', '38 g včetně baterie'),
(214, 19, 'napájení', '1× Baterie CR2032, 3V'),
(215, 19, 'pracovní podmínky', '16 °C - 40 °C'),
(216, 19, 'přesnost měření', '± 0,2 °C v rozsahu 36,0 – 39,0 °C, ± 0,3 °C mimo tento rozsah'),
(217, 19, 'rozměry (d×š×v)', '10 × 3 × 1,8 cm'),
(218, 19, 'rozsah měření', 'Tělesná teplota 32 až 43 °C, povrchová teplota předmětů 0 - 100 °C'),
(219, 19, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(220, 19, 'kód', 'MI-100'),
(221, 20, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(222, 20, 'kód', 'GM-30'),
(223, 21, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(224, 21, 'kód', 'GM-20'),
(225, 22, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(226, 22, 'kód', 'GM-10'),
(227, 23, 'hmotnost', '280 g včetně baterií'),
(228, 23, 'napájení', '4× baterie AAA 1,5 V (mikrotužková baterie), USB kabel nebo USB adaptér 5 V / 600 mA'),
(229, 23, 'přesnost měření', 'Tlak: ± 3 mmHg, puls: ± 4% z měřené hodnoty'),
(230, 23, 'rozměry (d×š×v)', '13,8 × 9,4 × 3,3 cm'),
(231, 23, 'rozsah měření', 'Krevní tlak: 20 - 280 mmHg, puls: 40 - 200 pulsů/minutu'),
(232, 23, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(233, 23, 'kód', 'M-300A'),
(234, 24, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(235, 24, 'kód', 'S-30'),
(236, 25, 'hmotnost', '300 g'),
(237, 25, 'pracovní podmínky', 'Pracovní teplota 5 °C - 40 °C'),
(238, 25, 'přesnost měření', '± 3 mmHg'),
(239, 25, 'rozsah měření', '20 - 300 mmHg'),
(240, 25, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(241, 25, 'kód', 'A-20'),
(242, 26, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(243, 26, 'kód', 'S-20'),
(244, 27, 'Kód', 'M-500A'),
(245, 28, 'hmotnost', '280 g včetně baterií'),
(246, 28, 'napájení', '4× baterie AAA 1,5 V (mikrotužková baterie), USB kabel nebo USB adaptér 5 V / 600 mA'),
(247, 28, 'přesnost měření', 'Tlak: ± 3 mmHg, puls: ± 4% z měřené hodnoty'),
(248, 28, 'rozměry (d×š×v)', '13,8 × 9,4 × 3,3 cm'),
(249, 28, 'rozsah měření', 'Krevní tlak: 20 - 280 mmHg, puls: 40 - 200 pulsů/minutu'),
(250, 28, 'výrobce', 'Dr.Frei (Švýcarsko)'),
(251, 28, 'kód', 'M-400A'),
(252, 29, 'Typ', 'Nobulizer compressor'),
(253, 29, 'Noise level', 'approx. 55 dB'),
(254, 29, 'Particle Size (MMDA)', '2.44 microns'),
(255, 29, 'Nobulizing performance', '0.4 ml / min'),
(256, 29, 'Drug reservoir capacity', '8 ml'),
(257, 29, 'weight', '1550 g'),
(258, 29, 'Dimensions (LxWxH)', '205*155*113 mm'),
(259, 29, 'Standard accessories', 'adult and baby mask, mouthpiece, 5x filter, air hose'),
(260, 29, 'Guarantee', '2 years'),
(261, 29, 'Code', '6956937000573'),
(262, 30, 'Typ', 'Nobulizer compressor'),
(263, 30, 'Noise level', 'approx. 55 dB'),
(264, 30, 'Particle Size (MMDA)', '2.44 microns'),
(265, 30, 'Nobulizing performance', '0.4 ml / min'),
(266, 30, 'Drug reservoir capacity', '8 ml'),
(267, 30, 'weight', '1650 g'),
(268, 30, 'Dimensions (LxWxH)', '265*135*185 mm'),
(269, 30, 'Standard accessories', 'adult and baby mask, mouthpiece, 5x filter, air hose'),
(270, 30, 'Guarantee', '2 years'),
(271, 30, 'Code', '6956937000580'),
(272, 31, 'Typ', 'Digital Thermometer'),
(273, 31, 'Measurement time', 'orally or rectally 60 +/- 10 seconds, in the back 100 +/- 20 seconds'),
(274, 31, 'Accuracy', 'high +/- 0.1 ° C'),
(275, 31, 'Flexible tip', 'Yes'),
(276, 31, 'Watertight', 'Yes'),
(277, 31, 'Memory', 'last measurement'),
(278, 31, 'Beep function when measurement is completed', 'Yes'),
(279, 31, 'Scale', 'at 0.1 ° C'),
(280, 31, 'Automatické vypnutí', 'Yes'),
(281, 31, 'Guarantee', '3 years'),
(282, 31, 'Code', '6928916400049'),
(283, 32, 'Typ', 'Digital Thermometer'),
(284, 32, 'Measurement time', 'orally or rectally 60 +/- 10 seconds, in the back 100 +/- 20 seconds'),
(285, 32, 'Accuracy', 'high +/- 0.1 ° C'),
(286, 32, 'Flexible tip', 'Yes'),
(287, 32, 'Watertight', 'Yes'),
(288, 32, 'Memory', 'last measurement'),
(289, 32, 'Beep function when measurement is completed', 'Yes'),
(290, 32, 'Scale', 'at 0.1 ° C'),
(291, 32, 'Automatické vypnutí', 'Yes'),
(292, 32, 'Guarantee', '3 years'),
(293, 32, 'Code', '6928916400018'),
(294, 33, 'Typ', 'automatic, ventral'),
(295, 33, 'Detection of arrhythmia', 'yes, IHD technology'),
(296, 33, 'Automatic Measurement', 'yes, the oscillometric method - FUZZY LOGIC technology'),
(297, 33, 'Digital display of blood pressure', 'No'),
(298, 33, 'Display', 'extra large for visually impaired users'),
(299, 33, 'Cuff size', '22 - 32 cm'),
(300, 33, 'Memory', 'last measurement'),
(301, 33, 'Date', 'No'),
(302, 33, 'Soft Cover ', 'No'),
(303, 33, 'Source', 'battery'),
(304, 33, 'Guarantee', '5 years'),
(305, 34, 'Typ', 'automatic, ventral'),
(306, 34, 'Detection of arrhythmia', 'yes, IHD technology'),
(307, 34, 'Automatic Measurement', 'yes, the oscillometric method - FUZZY LOGIC technology'),
(308, 34, 'Digital display of blood pressure', 'Yes'),
(309, 34, 'Display', 'extra large, backlit, even for visually impaired users'),
(310, 34, 'Cuff size', 'universal comfort 22 - 42 cm'),
(311, 34, 'Memory', '2x90 measurements'),
(312, 34, 'Date', 'Yes'),
(313, 34, 'Soft Cover ', 'Yes'),
(314, 34, 'Source', 'battery, AC adapter'),
(315, 34, 'Guarantee', '3 years'),
(316, 35, 'Typ', 'automatic, ventral'),
(317, 35, 'Detection of arrhythmia', 'yes, IHD technology'),
(318, 35, 'Automatic Measurement', 'yes, the oscillometric method - FUZZY LOGIC technology'),
(319, 35, 'Digital display of blood pressure', 'Yes'),
(320, 35, 'Display', 'large'),
(321, 35, 'Cuff size', 'universal comfort 22 - 42 cm'),
(322, 35, 'Memory', '90 measurements'),
(323, 35, 'Date', 'Yes'),
(324, 35, 'Soft transport packaging', 'Yes'),
(325, 35, 'Source', 'battery'),
(326, 35, 'Guarantee', '5 years'),
(327, 36, 'Typ', 'automatic, on the wrist'),
(328, 36, 'Detection of arrhythmia', 'yes, IHD technology'),
(329, 36, 'Automatic Measurement', 'yes, the oscillometric method - FUZZY LOGIC technology'),
(330, 36, 'Digital display of blood pressure', 'Yes'),
(331, 36, 'Display', 'large'),
(332, 36, 'Cuff size', '13,5 - 19,5 cm'),
(333, 36, 'Memory', '90 measurements'),
(334, 36, 'Date', 'Yes'),
(335, 36, 'Přepravní box', 'Yes'),
(336, 36, 'Source', 'battery'),
(337, 36, 'Guarantee', '5 years'),
(338, 37, 'Typ', 'aNormal pressure gauge in set'),
(339, 37, 'Tlakoměr', 'metal, higher degree of accuracy'),
(340, 37, 'Cuff', 'with a metal fastening ring'),
(341, 37, 'Cuff size', '22 - 40 cm'),
(342, 37, 'Stetoskop', 'Yes'),
(343, 37, 'Soft Cover ', 'Yes'),
(344, 37, 'Guarantee', '18 months'),
(345, 38, 'Typ', 'automatic, ventral'),
(346, 38, 'Detection of arrhythmia', 'yes, IHD technology'),
(347, 38, 'Automatic Measurement', 'yes, the oscillometric method - FUZZY LOGIC technology'),
(348, 38, 'Digital display of blood pressure', 'Yes'),
(349, 38, 'Display', 'extra large for visually impaired users'),
(350, 38, 'Cuff size', '22 - 32 cm'),
(351, 38, 'Memory', '90 measurements'),
(352, 38, 'Date', 'Yes'),
(353, 38, 'Soft Cover ', 'Yes'),
(354, 38, 'Source', 'barrier, AC adapter'),
(355, 38, 'Guarantee', '5 years'),
(356, 39, 'Typ', 'automatic, ventral'),
(357, 39, 'Detection of arrhythmia', 'yes, IHD technology'),
(358, 39, 'Automatic Measurement', 'yes, the oscillometric method - FUZZY LOGIC technology'),
(359, 39, 'Digital display of blood pressure', 'No'),
(360, 39, 'Display', 'large'),
(361, 39, 'Cuff size', '22 - 32 cm'),
(362, 39, 'Memory', 'last measurement'),
(363, 39, 'Date', 'Yes'),
(364, 39, 'Soft transport packaging', 'No'),
(365, 39, 'Source', 'battery'),
(366, 39, 'Guarantee', '5 years'),
(367, 40, 'noise', '? 55 dB(A)'),
(368, 40, 'weight', '1,4 kg'),
(369, 40, 'power supply', '230 V / 50 Hz'),
(370, 40, 'Nobulizing performance', '0.2 to 0.4 ml / min'),
(371, 40, 'drug reservoir volume', '2 - 12 ml'),
(372, 40, 'working conditions', 'Operating temperature 5 ° C - 40 ° C'),
(373, 40, 'Dimensions (L × W × H)', '23 × 16,5 × 14 cm'),
(374, 40, 'Medium particle size (MMAD)', '3 - 6 µm'),
(375, 40, 'class ZP', 'IIa'),
(376, 40, 'producer', 'Dr.Frei (Switzerland)'),
(377, 40, 'Code', 'Turbo Car'),
(378, 41, 'noise', '? 55 dB(A)'),
(379, 41, 'weight', '1,5 kg'),
(380, 41, 'power supply', '230 V / 50 Hz'),
(381, 41, 'napětí', '230 V / 50 Hz'),
(382, 41, 'Nobulizing performance', '0,3 ml/min'),
(383, 41, 'drug reservoir volume', '2 - 10 ml'),
(384, 41, 'working conditions', 'Operating temperature 5 ° C - 40 ° C'),
(385, 41, 'Dimensions (L × W × H)', '23,5 × 11 × 16,5 cm'),
(386, 41, 'Medium particle size (MMAD)', '3 µm'),
(387, 41, 'producer', 'Dr.Frei (Switzerland)'),
(388, 41, 'Code', 'Turbo Train'),
(389, 42, 'noise', '? 55 dB(A)'),
(390, 42, 'weight', '1,3 kg'),
(391, 42, 'power supply', '230 V / 50 Hz'),
(392, 42, 'Nobulizing performance', '0,3 ml/min'),
(393, 42, 'drug reservoir volume', '2 - 10 ml'),
(394, 42, 'working conditions', 'Operating temperature 5 ° C - 40 ° C'),
(395, 42, 'Dimensions (L × W × H)', '16,7 × 10,6 × 16,4'),
(396, 42, 'Medium particle size (MMAD)', '3 µm'),
(397, 42, 'class ZP', 'IIa'),
(398, 42, 'producer', 'Dr.Frei (Switzerland)'),
(399, 42, 'Code', 'Turbo Mini'),
(400, 43, 'noise', '? 55 dB(A)'),
(401, 43, 'weight', '1,3 kg'),
(402, 43, 'power supply', '230 V / 50 Hz'),
(403, 43, 'Nobulizing performance', '0.2 to 0.4 ml / min'),
(404, 43, 'drug reservoir volume', '2 - 12 ml'),
(405, 43, 'working conditions', 'Operating temperature 5 ° C - 40 ° C'),
(406, 43, 'Dimensions (L × W × H)', '20,4 × 14,5 × 13,2 cm'),
(407, 43, 'Medium particle size (MMAD)', '3 - 6 µm'),
(408, 43, 'class ZP', 'IIa'),
(409, 43, 'producer', 'Dr.Frei (Switzerland)'),
(410, 43, 'Code', 'Turbo Flow'),
(411, 44, 'power supply', '1 × baterie SR41, 1,55 V'),
(412, 44, 'measurement accuracy', '± 0.1 ° C (in the range of 35.0 - 39.0 ° C), this range is ± 0.2 ° C'),
(413, 44, 'producer', 'Dr.Frei (Switzerland)'),
(414, 44, 'Code', 'T-30'),
(415, 45, 'weight', '38 g including battery'),
(416, 45, 'power supply', '1 × Battery CR2032, 3V'),
(417, 45, 'working conditions', '16 °C - 40 °C'),
(418, 45, 'measurement accuracy', '± 0.2 ° C in the range of 36.0 - 39.0 ° C, ± 0.3 ° C outside this range'),
(419, 45, 'Dimensions (L × W × H)', '10 × 3 × 1,8 cm'),
(420, 45, 'measuring range', 'Body temperature 32 to 43 ° C, surface temperature of objects 0 - 100 ° C'),
(421, 45, 'producer', 'Dr.Frei (Switzerland)'),
(422, 45, 'Code', 'MI-100'),
(423, 46, 'producer', 'Dr.Frei (Switzerland)'),
(424, 46, 'Code', 'GM-30'),
(425, 47, 'producer', 'Dr.Frei (Switzerland)'),
(426, 47, 'Code', 'GM-20'),
(427, 48, 'producer', 'Dr.Frei (Switzerland)'),
(428, 48, 'Code', 'GM-10'),
(429, 49, 'weight', '280 g including batteries'),
(430, 49, 'power supply', '4 × AAA 1.5 V battery (microprocessor battery), Unullkabel Nobo USB Adapter 5 V / 600 mA'),
(431, 49, 'measurement accuracy', 'Pressure: ± 3 mmHg, pulse: ± 4% of the measured value'),
(432, 49, 'Dimensions (L × W × H)', '13,8 × 9,4 × 3,3 cm'),
(433, 49, 'measuring range', 'Blood pressure: 20-280 mmHg, pulse: 40 - 200 pulses / minute'),
(434, 49, 'producer', 'Dr.Frei (Switzerland)'),
(435, 49, 'Code', 'M-300A'),
(436, 50, 'producer', 'Dr.Frei (Switzerland)'),
(437, 50, 'Code', 'S-30'),
(438, 51, 'weight', '300 g'),
(439, 51, 'working conditions', 'Operating temperature 5 ° C - 40 ° C'),
(440, 51, 'measurement accuracy', '± 3 mmHg'),
(441, 51, 'measuring range', '20 - 300 mmHg'),
(442, 51, 'producer', 'Dr.Frei (Switzerland)'),
(443, 51, 'Code', 'A-20'),
(444, 52, 'producer', 'Dr.Frei (Switzerland)'),
(445, 52, 'Code', 'S-20'),
(446, 53, 'Code', 'M-500A'),
(447, 54, 'weight', '280 g including batteries'),
(448, 54, 'power supply', '4 × AAA 1.5 V battery (microprocessor battery), Unullkabel Nobo USB Adapter 5 V / 600 mA'),
(449, 54, 'measurement accuracy', 'Pressure: ± 3 mmHg, pulse: ± 4% of the measured value'),
(450, 54, 'Dimensions (L × W × H)', '13,8 × 9,4 × 3,3 cm'),
(451, 54, 'measuring range', 'Blood pressure: 20-280 mmHg, pulse: 40 - 200 pulses / minute'),
(452, 54, 'producer', 'Dr.Frei (Switzerland)'),
(453, 54, 'Code', 'M-400A');

-- --------------------------------------------------------

--
-- Table structure for table `prod_types`
--

CREATE TABLE `prod_types` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eng` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cze` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prod_types`
--

INSERT INTO `prod_types` (`id`, `title`, `eng`, `cze`) VALUES
(1, 'nebulizers', 'Nebulizers', 'Nebulizátory'),
(2, 'pressure_measuring_devices', 'Pressure measuring devices', 'Přístoje na měření tlaku'),
(3, 'digital_thermometers', 'Digital thermometers', 'Digitální teploměry'),
(4, 'breast_milk_suckers', 'Breast milk suckers', 'Odsávačky mateřského mléka');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `title` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `title`, `url`) VALUES
(1, 'Gamma', 'http://gamma-med.com.ua'),
(2, 'DRFREI', 'https://dr-frei.com/ru/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes_lang`
--
ALTER TABLE `notes_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_notes`
--
ALTER TABLE `prod_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_types`
--
ALTER TABLE `prod_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notes_lang`
--
ALTER TABLE `notes_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `prod_notes`
--
ALTER TABLE `prod_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `prod_types`
--
ALTER TABLE `prod_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
