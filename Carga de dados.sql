-- -----------------------------------------------------
-- tblTypeGenre
-- -----------------------------------------------------
INSERT INTO tblTypeGenre(dsDescriptionEN,dsDescriptionPT) VALUES
('Action and Aventure','A��o e Aventura'),
('Simulation and Sports','Simula��o e Esportes'),
('Puzzlers and Party games','Quebra-cabe�as e Jogos de festa');
SELECT * FROM tblTypeGenre;


-- -----------------------------------------------------
-- tblTypePlatform
-- -----------------------------------------------------
INSERT INTO tblTypePlatform(dsDescription) VALUES
('Nintendo Switch'),
('Playstation 4'),
('Playstation 5'),
('Xbox One');
SELECT * FROM tblTypePlatform;


-- -----------------------------------------------------
-- tblPublisher
-- -----------------------------------------------------
INSERT INTO tblPublisher(dsDescription,dsWikipediaLink) VALUES
('Activision','https://en.wikipedia.org/wiki/Activision_Blizzard'),
('Atlus','https://en.wikipedia.org/wiki/Atlus'),
('Bandai Namco Entertainment','https://en.wikipedia.org/wiki/Bandai_Namco_Holdings'),
('Bethesda Softworks','https://en.wikipedia.org/wiki/Bethesda_Softworks'),
('Capcom','https://en.wikipedia.org/wiki/Capcom'),
('CD Projekt','https://en.wikipedia.org/wiki/CD_Projekt'),
('Devolver Digital','https://en.wikipedia.org/wiki/Devolver_Digital'),
('Electronic Arts','https://en.wikipedia.org/wiki/Electronic_Arts'),
('Forever Entertainment',NULL),
('Innersloth','https://en.wikipedia.org/wiki/Among_Us'),
('Koei Tecmo','https://en.wikipedia.org/wiki/Koei_Tecmo'),
('Konami','https://en.wikipedia.org/wiki/Konami'),
('Square Enix','https://en.wikipedia.org/wiki/Square_Enix'),
('Krafton','https://en.wikipedia.org/wiki/Krafton'),
('Microsoft Studios','https://en.wikipedia.org/wiki/Microsoft'),
('Nintendo','https://en.wikipedia.org/wiki/Nintendo'),
('Rockstar','https://en.wikipedia.org/wiki/Rockstar_Games'),
('Sony','https://en.wikipedia.org/wiki/Sony_Interactive_Entertainment'),
('Studio Wildcard','https://en.wikipedia.org/wiki/Studio_Wildcard'),
('StudioMDHR',NULL),
('Ubisoft','https://en.wikipedia.org/wiki/Ubisoft'),
('Xseed Games','https://en.wikipedia.org/wiki/Xseed_Games');
SELECT * FROM tblPublisher;



-- -----------------------------------------------------
-- tblGame
-- -----------------------------------------------------
INSERT INTO tblGame(dsName,dsReleaseDate,idTypeGenre,idPublisher,dsCover) VALUES
('1-2-Switch','2017-03-03',3,15,'https://upload.wikimedia.org/wikipedia/en/2/21/1-2-Switch.jpg'),
('Among Us','2020-12-15',3,10,'https://upload.wikimedia.org/wikipedia/en/9/9a/Among_Us_cover_art.jpg'),
('Animal Crossing: New Horizons','2020-03-20',3,15,'https://upload.wikimedia.org/wikipedia/en/1/1f/Animal_Crossing_New_Horizons.jpg'),
('Ark: Survival Evolved','2017-08-29',1,19,'https://upload.wikimedia.org/wikipedia/en/2/2b/ArkSurvivalEvolved.png'),
('Arms','2017-06-16',1,15,'https://upload.wikimedia.org/wikipedia/en/c/cc/Arms_%28video_game%29.jpg'),
('Assassin�s Creed Unity','2014-11-17',1,21,'https://upload.wikimedia.org/wikipedia/en/4/41/Assassin%27s_Creed_Unity_cover.jpg'),
('Astral Chain','2019-08-30',1,15,'https://upload.wikimedia.org/wikipedia/en/6/67/Astral_Chain.jpg'),
('Battlefield 1','2016-10-21',1,8,'https://upload.wikimedia.org/wikipedia/en/f/fc/Battlefield_1_cover_art.jpg'),
('Big Brain Academy: Brain vs. Brain','2021-12-03',3,15,'https://upload.wikimedia.org/wikipedia/commons/c/cb/Big_Brain_Academy_Logo.png'),
('Bloodborne','2015-03-24',1,17,'https://upload.wikimedia.org/wikipedia/en/6/68/Bloodborne_Cover_Wallpaper.jpg'),
('Call of Duty: Advanced Warfare','2014-11-04',1,1,'https://upload.wikimedia.org/wikipedia/en/3/3b/Advanced_Warfare.jpg'),
('Call of Duty: Black Ops III','2015-11-06',1,1,'https://upload.wikimedia.org/wikipedia/en/b/b1/Black_Ops_3.jpg'),
('Call of Duty: Infinite Warfare','2016-11-04',1,1,'https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg'),
('Call of Duty: WWII','2017-11-03',1,1,'https://upload.wikimedia.org/wikipedia/en/1/18/Call_of_Duty_WWII_Cover_Art.jpg'),
('Captain Toad: Treasure Tracker','2018-07-13',1,15,'https://upload.wikimedia.org/wikipedia/en/9/90/CaptainToadtreasuretracker.png'),
('Clubhouse Games: 51 Worldwide Classics','2020-06-05',3,15,'https://upload.wikimedia.org/wikipedia/en/7/72/Clubhouse_Games_51_Worldwide_Classics.jpg'),
('Crash Bandicoot N. Sane Trilogy','2017-06-30',1,1,'https://upload.wikimedia.org/wikipedia/en/d/de/Crash_Bandicoot_N._Sane_Trilogy_cover_art.jpg'),
('Crash Team Racing Nitro-Fueled','2019-06-21',2,1,'https://upload.wikimedia.org/wikipedia/en/3/36/Crash_Team_Racing_Nitro-Fueled_cover_art.jpg'),
('Cuphead','2017-09-29',1,20,'https://upload.wikimedia.org/wikipedia/en/b/be/Cuphead_%28artwork%29.jpg'),
('Cyberpunk 2077','2020-12-10',1,6,'https://upload.wikimedia.org/wikipedia/en/9/9f/Cyberpunk_2077_box_art.jpg'),
('Dead Rising 3','2013-11-22',1,14,'https://upload.wikimedia.org/wikipedia/en/0/00/Dead_Rising_3_Cover_Art.jpg'),
('Demon�s Souls','2020-11-12',1,17,'https://upload.wikimedia.org/wikipedia/en/9/91/Demon%27s_Souls_Cover.jpg'),
('Destiny','2014-09-09',1,1,'https://upload.wikimedia.org/wikipedia/en/0/06/Destiny_XBO.jpg'),
('Detroit: Become Human','2018-05-25',1,17,'https://upload.wikimedia.org/wikipedia/en/e/ee/Detroit_Become_Human.jpg'),
('Donkey Kong Country: Tropical Freeze','2018-05-04',1,15,'https://upload.wikimedia.org/wikipedia/en/f/fb/DKC5_box_art.jpg'),
('Dragon Quest XI: Echoes of an Elusive Age','2017-07-29',3,18,'https://upload.wikimedia.org/wikipedia/en/4/4c/Dragon_Quest_XI_cover_art.jpg'),
('Driveclub','2014-10-07',3,17,'https://upload.wikimedia.org/wikipedia/en/6/6f/Driveclub_box_art.jpg'),
('Enter the Gungeon','2017-12-14',1,7,'https://upload.wikimedia.org/wikipedia/en/e/ef/Enter_the_Gungeon_logo.png'),
('Fallout 4','2015-11-10',1,4,'https://upload.wikimedia.org/wikipedia/en/7/70/Fallout_4_cover_art.jpg'),
('FIFA 16','2015-09-22',2,8,'https://upload.wikimedia.org/wikipedia/en/2/27/FIFA_16_cover.jpg'),
('FIFA 17','2016-09-27',2,8,'https://upload.wikimedia.org/wikipedia/en/0/08/FIFA_17_cover.jpeg'),
('FIFA 18','2016-09-27',2,8,'https://upload.wikimedia.org/wikipedia/en/d/d4/FIFA18cover.png'),
('Final Fantasy VII Remake','2020-04-10',1,18,'https://upload.wikimedia.org/wikipedia/en/c/ce/FFVIIRemake.png'),
('Final Fantasy XII: The Zodiac Age','2017-07-11',3,18,'https://upload.wikimedia.org/wikipedia/en/2/27/Final_Fantasy_XII_Box_Art.png'),
('Final Fantasy XV','2016-11-29',1,18,'https://upload.wikimedia.org/wikipedia/en/5/5a/FF_XV_cover_art.jpg'),
('Fire Emblem: Three Houses','2019-07-26',3,15,'https://upload.wikimedia.org/wikipedia/en/1/16/Fire_Emblem_Three_Houses.jpg'),
('Fitness Boxing','2018-12-20',2,15,'https://upload.wikimedia.org/wikipedia/en/8/8a/Fitness_Boxing.jpg'),
('Fitness Boxing 2: Rhythm and Exercise','2020-12-04',2,15,'https://upload.wikimedia.org/wikipedia/en/8/8a/Fitness_Boxing.jpg'),
('Forza Horizon 3','2016-09-27',3,14,'https://upload.wikimedia.org/wikipedia/en/5/54/Forza_horizon_3_cover_art.jpg'),
('Forza Motorsport 5','2013-11-22',3,14,'https://upload.wikimedia.org/wikipedia/en/d/d7/Forza_5_box_art.jpg'),
('Forza Motorsport 6','2015-09-15',3,14,'https://upload.wikimedia.org/wikipedia/en/4/44/Forza_Motorsport_6_Cover.jpg'),
('Game Builder Garage','2021-06-11',3,15,'https://upload.wikimedia.org/wikipedia/en/d/de/Game_Builder_Garage_Icon.png'),
('Gears 5','2019-09-06',1,14,'https://upload.wikimedia.org/wikipedia/en/e/e4/Gears_5_cover_art.png'),
('Gears of War 4','2016-10-11',1,14,'https://upload.wikimedia.org/wikipedia/en/f/ff/Gears_of_War_4.jpg'),
('Gears of War: Ultimate Edition','2015-08-25',1,14,'https://upload.wikimedia.org/wikipedia/en/8/8f/GOWUE.jpeg'),
('Ghost of Tsushima','2020-07-17',1,17,'https://upload.wikimedia.org/wikipedia/en/b/b6/Ghost_of_Tsushima.jpg'),
('God of War','2018-04-20',1,17,'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg'),
('Gran Turismo Sport','2017-10-17',3,17,'https://upload.wikimedia.org/wikipedia/en/9/96/GT_Sport_cover_art.jpg'),
('Grand Theft Auto V','2014-11-18',1,16,'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png'),
('Halo 5: Guardians','2015-10-27',1,14,'https://upload.wikimedia.org/wikipedia/en/6/68/Halo_Guardians.png'),
('Halo: The Master Chief Collection','2015-08-25',1,14,'https://upload.wikimedia.org/wikipedia/en/a/a3/Halo_TMCC_KeyArt_Vert_2019.png'),
('Horizon Zero Dawn','2017-02-28',1,17,'https://upload.wikimedia.org/wikipedia/en/9/93/Horizon_Zero_Dawn.jpg'),
('Hyrule Warriors: Age of Calamity','2020-11-20',1,11,'https://upload.wikimedia.org/wikipedia/en/e/e1/Hyrule_Warriors_Age_Of_Calamity.jpg'),
('Infamous Second Son','2014-03-21',1,17,'https://upload.wikimedia.org/wikipedia/en/3/34/Infamous_second_son_boxart.jpg'),
('Killzone: Shadow Fall','2013-11-15',1,17,'https://upload.wikimedia.org/wikipedia/en/1/1e/Killzone_Shadow_Fall_Box.jpg'),
('Kingdom Hearts III','2019-01-25',1,18,'https://upload.wikimedia.org/wikipedia/en/5/5c/Kingdom_Hearts_III_box_art.jpg'),
('Kirby Star Allies','2018-03-16',1,15,'https://upload.wikimedia.org/wikipedia/en/6/65/Kirby_Star_Allies.jpg'),
('Knack','2013-11-15',1,17,'https://upload.wikimedia.org/wikipedia/en/f/f2/Knack_%28game_box_art%29.jpg'),
('Luigi�s Mansion 3','2019-10-31',1,15,'https://upload.wikimedia.org/wikipedia/en/3/38/Luigi%27s_Mansion_3.jpg'),
('Madden NFL 17','2016-08-23',2,8,'https://upload.wikimedia.org/wikipedia/en/6/61/Madden_NFL_17_cover.jpeg'),
('Mario + Rabbids Kingdom Battle','2017-08-29',3,21,'https://upload.wikimedia.org/wikipedia/en/f/f5/Mario_%2B_Rabbids_Kingdom_Battle.jpg'),
('Mario Golf: Super Rush','2021-06-25',2,15,'https://upload.wikimedia.org/wikipedia/en/0/03/Mario_Golf_Super_Rush_Pre-Release_Logo.jpeg'),
('Mario Kart 8 Deluxe','2017-04-28',2,15,'https://upload.wikimedia.org/wikipedia/en/b/b5/MarioKart8Boxart.jpg'),
('Mario Kart Live: Home Circuit','2020-10-16',2,15,'https://upload.wikimedia.org/wikipedia/en/f/f5/Mario_Kart_Live_Home_Circuit.jpeg'),
('Mario Party Superstars','2021-10-29',3,15,'https://upload.wikimedia.org/wikipedia/en/1/1a/Mario_Party_Superstars_cover_art.jpg'),
('Mario Tennis Aces','2018-06-22',2,15,'https://upload.wikimedia.org/wikipedia/en/1/13/Mario_Tennis_Aces.jpg'),
('Marvel Ultimate Alliance 3: The Black Order','2019-07-19',1,15,'https://upload.wikimedia.org/wikipedia/en/6/6c/Marvelultimate3.jpg'),
('Marvel�s Spider-Man','2018-09-07',1,17,'https://upload.wikimedia.org/wikipedia/en/e/e1/Spider-Man_PS4_cover.jpg'),
('Metal Gear Solid V: The Phantom Pain','2015-09-01',1,12,'https://upload.wikimedia.org/wikipedia/en/8/8f/Metal_Gear_Solid_V_The_Phantom_Pain_cover.png'),
('Metroid Dread','2021-10-08',1,15,'https://upload.wikimedia.org/wikipedia/en/f/f7/Metroid_Dread_Banner.png'),
('Miitopia','2021-05-21',3,15,'https://upload.wikimedia.org/wikipedia/en/7/77/Miitopia_3DS.jpg'),
('Minecraft','2011-11-18',2,14,'https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png'),
('MLB The Show 21','2021-04-20',2,17,'https://upload.wikimedia.org/wikipedia/en/7/75/MLBTheShow21Cover.jpg'),
('Momotaro Dentetsu: Showa, Heisei, Reiwa Mo Teiban!','2020-11-19',3,12,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Nintendo-Switch-Cartridge.jpg/640px-Nintendo-Switch-Cartridge.jpg'),
('Monster Hunter Rise','2021-03-26',1,5,'https://upload.wikimedia.org/wikipedia/en/4/41/Monster_hunter_rise_cover.jpg'),
('Monster Hunter: World','2018-01-26',1,5,'https://upload.wikimedia.org/wikipedia/en/1/1b/Monster_Hunter_World_cover_art.jpg'),
('New Pok�mon Snap','2021-04-30',3,15,'https://upload.wikimedia.org/wikipedia/en/f/f1/Newpokemonsnap.png'),
('New Super Mario Bros. U Deluxe','2019-01-11',1,15,'https://upload.wikimedia.org/wikipedia/en/0/03/New_Super_Mario_Bros._U_box_art.png'),
('Nier: Automata','2017-02-23',1,18,'https://upload.wikimedia.org/wikipedia/en/2/21/Nier_Automata_cover_art.jpg'),
('Nintendo Labo Toy-Con 01: Variety Kit','2018-04-20',2,15,'https://upload.wikimedia.org/wikipedia/commons/4/43/Labo-logo-make-play.svg'),
('Nioh','2017-02-07',1,17,'https://upload.wikimedia.org/wikipedia/en/f/fd/Nioh_cover_art.jpg'),
('Nioh 2','2020-03-12',1,17,'https://upload.wikimedia.org/wikipedia/en/9/91/Nioh_2_cover_art.jpg'),
('Octopath Traveler','2018-07-13',3,18,'https://upload.wikimedia.org/wikipedia/en/3/34/Octopath_Traveler.jpg'),
('Paper Mario: The Origami King','2020-07-17',3,15,'https://upload.wikimedia.org/wikipedia/en/5/59/Paper_Mario_The_Origami_King.jpg'),
('Persona 5 Royal','2019-10-31',3,2,'https://upload.wikimedia.org/wikipedia/en/b/b0/Persona_5_cover_art.jpg'),
('Pikmin 3 Deluxe','2020-10-30',3,15,'https://upload.wikimedia.org/wikipedia/en/5/53/Pikmin_3_box_artwork.png'),
('PlayerUnknown�s Battlegrounds','2018-09-04',1,13,'https://upload.wikimedia.org/wikipedia/en/9/9f/Pubgbattlegrounds.png'),
('Pok�mon Brilliant Diamond�and�Shining Pearl','2021-11-19',3,15,'https://upload.wikimedia.org/wikipedia/en/3/3e/Pokemon_Brilliant_Diamond_Shining_Pearl.png'),
('Pok�mon Legends: Arceus','2022-01-28',1,15,'https://upload.wikimedia.org/wikipedia/en/9/9c/Pokemon_Legends_Arceus_cover.jpg'),
('Pok�mon Mystery Dungeon: Rescue Team DX','2020-03-06',2,15,'https://upload.wikimedia.org/wikipedia/en/9/9e/Pok%C3%A9mon_Mystery_Dungeon_Rescue_Team_DX.jpg'),
('Pok�mon Sword�and�Shield','2019-11-15',3,15,'https://upload.wikimedia.org/wikipedia/en/f/fa/Pok%C3%A9mon_Sword_and_Shield.jpg'),
('Pok�mon: Let�s Go, Pikachu!�and�Let�s Go, Eevee!','2018-11-16',3,15,'https://upload.wikimedia.org/wikipedia/en/4/47/Pok%C3%A9mon_Let%27s_Go%2C_Pikachu%21_and_Let%27s_Go%2C_Eevee%21.jpg'),
('Pokk�n Tournament DX','2017-09-22',1,15,'https://upload.wikimedia.org/wikipedia/en/9/99/PokkenTournamentBoxart.png'),
('Ratchet & Clank: Rift Apart','2021-06-11',1,17,'https://upload.wikimedia.org/wikipedia/en/a/a3/Ratchet_%26_Clank_-_Rift_Apart.png'),
('Red Dead Redemption 2','2018-10-26',1,16,'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg'),
('Ring Fit Adventure','2019-10-18',2,15,'https://upload.wikimedia.org/wikipedia/en/0/0e/Ringfitadventure.jpg'),
('Rise of the Tomb Raider','2015-11-10',1,14,'https://upload.wikimedia.org/wikipedia/en/2/29/Rise_of_the_Tomb_Raider.jpg'),
('Ryse: Son of Rome','2013-11-22',1,14,'https://upload.wikimedia.org/wikipedia/en/c/c5/Ryse_box_art.jpg'),
('Sea of Thieves','2018-03-20',1,14,'https://education.oracle.com/oracle-certification-path/pFamily_48'),
('Spider-Man: Miles Morales','2020-11-12',1,17,'https://upload.wikimedia.org/wikipedia/en/a/a3/Spider-Man_Miles_Morales.jpeg'),
('Splatoon 2','2017-07-21',1,15,'https://upload.wikimedia.org/wikipedia/en/4/49/Splatoon_2.jpg'),
('Spyro Reignited Trilogy','2018-11-13',1,1,'https://upload.wikimedia.org/wikipedia/en/5/54/Spyro_Reignited_Trilogy.png'),
('Star Wars Battlefront','2015-11-17',1,8,'https://upload.wikimedia.org/wikipedia/en/2/23/SWBF2_box.jpeg'),
('Story of Seasons: Pioneers of Olive Town','2021-02-25',3,22,'https://upload.wikimedia.org/wikipedia/en/f/f2/Story_of_Seasons_logo.png'),
('Sunset Overdrive','2014-10-28',1,14,'https://upload.wikimedia.org/wikipedia/en/4/46/Sunset_Overdrive_cover.jpg'),
('Super Mario 3D All-Stars','2020-09-18',1,15,'https://upload.wikimedia.org/wikipedia/en/0/01/Super_Mario_3D_All_Stars.jpg'),
('Super Mario 3D World + Bowser�s Fury','2021-02-12',1,15,'https://upload.wikimedia.org/wikipedia/en/8/89/Bowser%27s_Fury_cover.jpg'),
('Super Mario Maker 2','2019-06-28',1,15,'https://upload.wikimedia.org/wikipedia/en/c/c7/Super_Mario_Maker_2.jpg'),
('Super Mario Odyssey','2017-10-27',1,15,'https://upload.wikimedia.org/wikipedia/en/8/8d/Super_Mario_Odyssey.jpg'),
('Super Mario Party','2018-10-05',3,15,'https://upload.wikimedia.org/wikipedia/en/6/6c/Super_Mario_Party.jpg'),
('Super Smash Bros. Ultimate','2018-12-07',1,15,'https://upload.wikimedia.org/wikipedia/en/5/50/Super_Smash_Bros._Ultimate.jpg'),
('Taiko no Tatsujin: Drum �n� Fun!','2018-07-19',2,3,'https://upload.wikimedia.org/wikipedia/en/c/cc/Taiko_no_Tatsujin_Switch.jpg'),
('The Last of Us Part II','2020-06-19',1,17,'https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png'),
('The Last of Us Remastered','2014-07-29',1,17,'https://upload.wikimedia.org/wikipedia/en/4/46/Video_Game_Cover_-_The_Last_of_Us.jpg'),
('The Legend of Zelda: Breath of the Wild','2017-03-03',1,15,'https://upload.wikimedia.org/wikipedia/en/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg'),
('The Legend of Zelda: Link�s Awakening','2019-09-20',1,15,'https://upload.wikimedia.org/wikipedia/en/7/74/The_Legend_of_Zelda_Link%27s_Awakening_%282019_video_game%29.jpg'),
('The Legend of Zelda: Skyward Sword HD','2021-07-16',1,15,'https://upload.wikimedia.org/wikipedia/en/9/99/Legend_of_Zelda_Skyward_Sword_boxart.png'),
('The Witcher 3: Wild Hunt','2015-05-18',1,6,'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg'),
('Thief Simulator','2019-05-19',1,9,'https://upload.wikimedia.org/wikipedia/en/5/56/Thief_Simulator_cover.jpg'),
('Titanfall','2014-09-22',1,8,'https://upload.wikimedia.org/wikipedia/commons/8/8e/Titanfall-logo.jpg'),
('Tom Clancy�s The Division','2016-03-08',1,21,'https://upload.wikimedia.org/wikipedia/en/0/03/The_Division_box.jpg'),
('Uncharted 4: A Thief�s End','2016-05-10',1,17,'https://upload.wikimedia.org/wikipedia/en/1/1a/Uncharted_4_box_artwork.jpg'),
('WarioWare: Get It Together!','2021-09-10',3,15,'https://upload.wikimedia.org/wikipedia/en/6/6a/Get_It_Together_cover_art.jpg'),
('Xenoblade Chronicles 2','2017-12-01',1,15,'https://upload.wikimedia.org/wikipedia/en/4/4a/Xenoblade_Chronicles_2.jpg'),
('Xenoblade Chronicles: Definitive Edition','2020-05-29',1,15,'https://upload.wikimedia.org/wikipedia/en/d/d9/Xenoblade_box_artwork.png'),
('Yoshi�s Crafted World','2019-03-29',1,15,'https://upload.wikimedia.org/wikipedia/en/3/38/Yoshi%27s_Crafted_World.jpg');
SELECT * FROM tblGame;


-- -----------------------------------------------------
-- tblGamePlataform
-- -----------------------------------------------------
INSERT INTO tblGamePlataform(idGame,idTypePlatform) VALUES
(1,1),
(2,1),
(3,1),
(4,4),
(5,1),
(6,4),
(7,1),
(8,2),
(8,4),
(9,1),
(10,2),
(11,4),
(12,4),
(13,4),
(14,4),
(15,1),
(16,1),
(17,2),
(18,2),
(19,4),
(20,2),
(20,4),
(21,4),
(22,3),
(23,4),
(24,2),
(25,1),
(26,2),
(27,2),
(28,1),
(29,4),
(30,4),
(31,2),
(31,4),
(32,4),
(33,2),
(34,2),
(35,2),
(36,1),
(37,1),
(38,1),
(39,4),
(40,4),
(41,4),
(42,1),
(43,4),
(44,4),
(45,4),
(46,2),
(47,2),
(48,2),
(49,2),
(49,4),
(50,4),
(51,4),
(52,2),
(53,1),
(54,2),
(55,2),
(56,2),
(57,1),
(58,2),
(59,1),
(60,4),
(61,1),
(62,1),
(63,1),
(64,1),
(65,1),
(66,1),
(67,1),
(68,2),
(69,2),
(70,1),
(71,1),
(72,1),
(72,4),
(73,3),
(74,1),
(75,1),
(76,4),
(76,2),
(77,1),
(78,1),
(79,2),
(80,1),
(81,2),
(82,2),
(83,1),
(84,1),
(85,2),
(86,1),
(87,4),
(88,1),
(89,1),
(90,1),
(91,1),
(92,1),
(93,1),
(94,3),
(95,4),
(96,1),
(97,4),
(98,4),
(99,4),
(100,3),
(101,1),
(102,2),
(103,2),
(103,4),
(104,1),
(105,4),
(106,1),
(107,1),
(108,1),
(109,1),
(110,1),
(111,1),
(112,1),
(113,2),
(114,2),
(115,1),
(116,1),
(117,1),
(118,2),
(118,4),
(119,1),
(120,4),
(121,4),
(122,2),
(123,1),
(124,1),
(125,1),
(126,1);
SELECT * FROM tblGamePlataform;


-- -----------------------------------------------------
-- tblMedia
-- -----------------------------------------------------
INSERT INTO tblMedia(idGame,isVideo,dsUrl) VALUES
(2,0,'https://upload.wikimedia.org/wikipedia/en/1/1f/Animal_Crossing_New_Horizons.jpg'),
(3,0,'https://upload.wikimedia.org/wikipedia/en/1/1f/Animal_Crossing_New_Horizons.jpg'),
(5,0,'https://upload.wikimedia.org/wikipedia/en/e/ea/Arms_Gameplay_Match.jpg'),
(6,0,'https://upload.wikimedia.org/wikipedia/en/1/1f/Assassin%27s_Creed_Unity_screenshot.jpg'),
(7,0,'https://upload.wikimedia.org/wikipedia/en/0/00/Astral_Chain_Gameplay.jpg'),
(10,0,'https://upload.wikimedia.org/wikipedia/en/3/36/Bloodborne_Alpha_PlayStation_4_gameplay_screenshot.png'),
(11,0,'https://upload.wikimedia.org/wikipedia/en/8/86/Call_of_Duty_Advanced_Warfare_screenshot.jpg'),
(13,0,'https://upload.wikimedia.org/wikipedia/en/8/88/Call_of_Duty_Infinite_Warfare_screenshot.png'),
(15,0,'https://upload.wikimedia.org/wikipedia/en/7/7f/Captain_Toad_-_Treasure_Tracker_E3_2014.jpg'),
(17,0,'https://upload.wikimedia.org/wikipedia/en/e/ec/Crash_Bandicoot_N_Sane_Trilogy_comparison.jpg'),
(18,0,'https://upload.wikimedia.org/wikipedia/en/9/9b/CTR_and_CTR-NitroFueled.png'),
(19,0,'https://upload.wikimedia.org/wikipedia/en/6/6a/Cuphead_gameplay%2C_Captain_Brineybeard.png'),
(20,0,'https://upload.wikimedia.org/wikipedia/en/8/88/Cyberpunk_2077_gameplay.png'),
(22,0,'https://upload.wikimedia.org/wikipedia/en/d/d6/Demon_Souls_Screenshot.jpg'),
(23,0,'https://upload.wikimedia.org/wikipedia/en/8/88/Destiny_gameplay.jpeg'),
(24,0,'https://upload.wikimedia.org/wikipedia/en/c/c5/Detroit_Become_Human_gameplay.png'),
(25,0,'https://upload.wikimedia.org/wikipedia/en/5/52/Donkey_Kong_Country_Tropical_Freeze_screenshot.png'),
(26,0,'https://upload.wikimedia.org/wikipedia/en/b/b3/DRAGONQUEST11.png'),
(26,0,'https://upload.wikimedia.org/wikipedia/en/d/dc/Dragonquest11_2d.jpg'),
(29,0,'https://upload.wikimedia.org/wikipedia/en/a/a5/Fallout_4_V.A.T.S._Screen.jpg'),
(33,0,'https://upload.wikimedia.org/wikipedia/en/0/00/Final_Fantasy_VII_Remake_gameplay_screenshot.png'),
(34,0,'https://upload.wikimedia.org/wikipedia/en/3/3c/FFXII_License_Board.png'),
(34,0,'https://upload.wikimedia.org/wikipedia/en/5/51/Final_Fantasy_XII_JAP_FF12.jpg'),
(35,0,'https://upload.wikimedia.org/wikipedia/en/0/03/FFXV_Cast.jpg'),
(35,0,'https://upload.wikimedia.org/wikipedia/en/b/b9/Final_Fantasy_XV_gameplay.jpg'),
(36,0,'https://upload.wikimedia.org/wikipedia/en/3/3c/FE_Three_Houses_gameplay.jpg'),
(39,0,'https://upload.wikimedia.org/wikipedia/en/1/15/Forza_horizon_3_gameplay.jpg'),
(40,0,'https://upload.wikimedia.org/wikipedia/en/0/02/Forza_motorsport_5_gameplay.jpg'),
(41,0,'https://upload.wikimedia.org/wikipedia/en/d/d6/Forza_Motorsport_6_screenshot.png'),
(43,0,'https://upload.wikimedia.org/wikipedia/en/9/97/Gears_5_screenshot.png'),
(46,0,'https://upload.wikimedia.org/wikipedia/en/0/0e/Ghost_of_Tsushima_pre-release_gameplay_screenshot.png'),
(48,0,'https://upload.wikimedia.org/wikipedia/en/d/db/Gran_Turismo_Sport_Gameplay.png'),
(49,0,'https://upload.wikimedia.org/wikipedia/en/5/5c/Grand_Theft_Auto_V_combat.jpg'),
(49,0,'https://upload.wikimedia.org/wikipedia/en/f/f4/Grand_Theft_Auto_V_Los_Santos.jpg'),
(50,0,'https://upload.wikimedia.org/wikipedia/en/7/71/Halo_5_Guardians_gameplay.png'),
(52,0,'https://upload.wikimedia.org/wikipedia/en/1/12/Horizon_Zero_Dawn_gameplay.jpg'),
(53,0,'https://upload.wikimedia.org/wikipedia/en/8/85/Age_of_Calamity_screenshot.jpg'),
(54,0,'https://upload.wikimedia.org/wikipedia/en/e/e7/Infamous_Second_Son_gameplay.jpg'),
(56,0,'https://upload.wikimedia.org/wikipedia/en/c/c7/Kingdom_Hearts_III_Summons_Gameplay.jpg'),
(57,0,'https://upload.wikimedia.org/wikipedia/en/2/23/Kirby_Star_Allies_Gameplay.jpg'),
(58,0,'https://upload.wikimedia.org/wikipedia/en/5/59/Knack_PlayStation_4_gameplay_screenshot.jpg'),
(61,0,'https://upload.wikimedia.org/wikipedia/en/2/21/Mario-Rabbids_game_screenshot.jpg'),
(62,0,'https://upload.wikimedia.org/wikipedia/en/4/43/Mario_Golf_Pre-Release_Gameplay.jpeg'),
(63,0,'https://upload.wikimedia.org/wikipedia/en/8/80/MK8_Mario_Circuit.jpg'),
(69,0,'https://upload.wikimedia.org/wikipedia/en/0/0e/Metal_Gear_Solid_V_Phantom_Pain_screenshot.jpg'),
(71,0,'https://upload.wikimedia.org/wikipedia/en/2/2d/Miitopia_3DS_battle_screenshot.png'),
(72,0,'https://upload.wikimedia.org/wikipedia/commons/b/b5/Tinkers_Construct_smeltery.png'),
(72,0,'https://upload.wikimedia.org/wikipedia/en/1/17/Minecraft_explore_landscape.png'),
(72,0,'https://upload.wikimedia.org/wikipedia/en/7/74/Minecraft_city_hall.png'),
(72,0,'https://upload.wikimedia.org/wikipedia/en/c/c9/Minecraft_Mobs.png'),
(75,0,'https://upload.wikimedia.org/wikipedia/en/7/7c/Monster_Hunter_Rise_gameplay.jpg'),
(76,0,'https://upload.wikimedia.org/wikipedia/en/b/b4/Monster_Hunter_World_gameplay_screenshot.jpg'),
(77,0,'https://upload.wikimedia.org/wikipedia/en/4/4f/New_Pok%C3%A9mon_Snap_gameplay.png'),
(79,0,'https://upload.wikimedia.org/wikipedia/en/0/0d/Nier_Automata_gameplay.jpg'),
(81,0,'https://upload.wikimedia.org/wikipedia/en/e/e3/Nioh_gameplay_screenshot.jpg'),
(83,0,'https://upload.wikimedia.org/wikipedia/en/f/f1/Project_Octopath_Traveler_gameplay_screenshot.jpg'),
(84,0,'https://upload.wikimedia.org/wikipedia/en/2/2f/Ring_Style_Combat.jpg'),
(85,0,'https://upload.wikimedia.org/wikipedia/en/a/a5/Persona_5_Palace_Combat.jpg'),
(88,0,'https://upload.wikimedia.org/wikipedia/en/a/a5/Brilliant_Diamond_Pok%C3%A9mon_Battle.jpg'),
(93,0,'https://upload.wikimedia.org/wikipedia/en/c/c7/PokkenTournamentDXBurstAttackPikachu.jpg'),
(95,0,'https://upload.wikimedia.org/wikipedia/en/0/02/Red_Dead_Redemption_2_gameplay.jpg'),
(95,0,'https://upload.wikimedia.org/wikipedia/en/b/b5/Red_Dead_Redemption_2_open_world.jpg'),
(96,0,'https://upload.wikimedia.org/wikipedia/en/d/dc/Ring_Fit_Adventure_Screenshot.jpg'),
(97,0,'https://upload.wikimedia.org/wikipedia/en/f/fe/Rise_of_the_Tomb_Raider_Challenge_Tomb.jpg'),
(98,0,'https://upload.wikimedia.org/wikipedia/en/1/1e/Ryse_Son_of_Rome_first_person.jpg'),
(98,0,'https://upload.wikimedia.org/wikipedia/en/e/ef/Ryse_Son_of_Rome_screenshot.jpg'),
(99,0,'https://upload.wikimedia.org/wikipedia/en/5/50/Sea_of_Thieves_gameplay_screenshot.jpg'),
(100,0,'https://upload.wikimedia.org/wikipedia/en/8/8c/Spider-Man_Miles_Morales_Gameplay_Screenshot.png'),
(102,0,'https://upload.wikimedia.org/wikipedia/en/8/80/SpyroReignitedTrilogy_Comparison.jpg'),
(105,0,'https://upload.wikimedia.org/wikipedia/en/8/8e/Sunset_Overdrive_Xbox_One_gameplay_screenshot.png'),
(109,0,'https://upload.wikimedia.org/wikipedia/en/7/79/Super_Mario_Odyssey%2C_Seaside_Kingdom.png'),
(109,0,'https://upload.wikimedia.org/wikipedia/en/a/a9/Super_Mario_Odyssey%2C_Cascade_Kingdom.png'),
(110,0,'https://upload.wikimedia.org/wikipedia/en/2/2f/Super_Mario_Party_tricycle_race_2018.png'),
(110,0,'https://upload.wikimedia.org/wikipedia/en/f/fe/Super_Mario_Party_board.png'),
(111,0,'https://upload.wikimedia.org/wikipedia/en/9/95/Super_Smash_Bros._Ultimate_gameplay.jpg'),
(114,0,'https://upload.wikimedia.org/wikipedia/en/5/56/The_Last_of_Us_visuals.jpg'),
(115,0,'https://upload.wikimedia.org/wikipedia/en/b/b3/Breath_of_the_Wild_paraglide.jpg'),
(115,0,'https://upload.wikimedia.org/wikipedia/en/c/ce/Climbing_in_BotW.jpg'),
(116,0,'https://upload.wikimedia.org/wikipedia/en/f/f5/Links_awakening_switch.jpg'),
(117,0,'https://upload.wikimedia.org/wikipedia/en/4/44/LoZ_Skyward_Sword_gameplay.jpg'),
(118,0,'https://upload.wikimedia.org/wikipedia/en/f/ff/Witcher3Gameplay.png'),
(121,0,'https://upload.wikimedia.org/wikipedia/en/a/a2/Tom_Clancy%27s_The_Division_gameplay_screenshot.jpg'),
(122,0,'https://upload.wikimedia.org/wikipedia/en/a/a9/Uncharted_4_open_world_visuals.jpg'),
(125,0,'https://upload.wikimedia.org/wikipedia/en/c/c3/Xenoblade-Landscape.jpg'),
(125,0,'https://upload.wikimedia.org/wikipedia/en/d/d7/Xenoblade_-_Battle_System_%28without_Monado%29.png'),
(126,0,'https://upload.wikimedia.org/wikipedia/en/6/6c/Yoshi_pre-release_gameplay_screenshot_2.jpg'),
(126,0,'https://upload.wikimedia.org/wikipedia/en/8/81/Yoshi_pre-release_gameplay_screenshot_1.jpg');
SELECT * FROM tblMedia;

-- -----------------------------------------------------
-- tblHighlight
-- -----------------------------------------------------
INSERT INTO tblHighlight(idGame,dsPublicationDate) VALUES
(126,'2022-03-06'),
(125,'2022-03-07'),
(115,'2022-03-08'),
(110,'2022-03-09'),
(109,'2022-03-10'),
(98,'2022-03-11'),
(95,'2022-03-12'),
(49,'2022-03-13'),
(35,'2022-03-14'),
(34,'2022-03-15'),
(26,'2022-03-16'),
(72,'2022-03-17');
SELECT * FROM tblHighlight;



-- -----------------------------------------------------
-- tblTypeState
-- -----------------------------------------------------
INSERT INTO tblTypeState(dsAbbreviation,dsName) VALUES
('AC','Acre'),
('AL','Alagoas'),
('AP','Amap�'),
('AM','Amazonas'),
('BA','Bahia'),
('CE','Cear�'),
('DF','Distrito Federal'),
('ES','Esp�rito Santo'),
('GO','Goi�s'),
('MA','Maranh�o'),
('MT','Mato Grosso'),
('MS','Mato Grosso do Sul'),
('MG','Minas Gerais'),
('PA','Par�'),
('PB','Para�ba'),
('PR','Paran�'),
('PE','Pernambuco'),
('PI','Piau�'),
('RJ','Rio de Janeiro'),
('RN','Rio Grande do Norte'),
('RS','Rio Grande do Sul'),
('RO','Rond�nia'),
('RR','Roraima'),
('SC','Santa Catarina'),
('SP','S�o Paulo'),
('SE','Sergipe'),
('TO','Tocantins');
SELECT * FROM tblTypeState;


-- -----------------------------------------------------
-- tblWarehouseEntrance
-- -----------------------------------------------------
INSERT INTO tblWarehouseEntrance(idGamePlataform,dsQuantity) VALUES
(15,16),
(113,25),
(11,13),
(6,25),
(62,8),
(107,14),
(17,3),
(71,13),
(112,7),
(97,25),
(79,21),
(5,23),
(38,18),
(30,17),
(127,19),
(18,3),
(46,2),
(123,10),
(31,14),
(125,3),
(63,16),
(129,19),
(16,21),
(61,14),
(13,25),
(77,14),
(44,14),
(59,21),
(33,5),
(41,12),
(22,4),
(94,24),
(1,23),
(42,3),
(78,16),
(24,11),
(54,23),
(109,11),
(28,19),
(108,15),
(19,24),
(51,8),
(8,24),
(26,23),
(36,18),
(4,16),
(120,15),
(128,17),
(111,13),
(110,20),
(100,7),
(66,24),
(131,10),
(45,13),
(81,18),
(103,17),
(87,25),
(124,25),
(76,17),
(60,9),
(47,25),
(69,6),
(9,10),
(23,11),
(119,22),
(40,20),
(14,15),
(2,21),
(52,17),
(84,2),
(32,7),
(67,21),
(99,25),
(116,18),
(53,4),
(49,22),
(93,8),
(21,2),
(132,22),
(37,14),
(121,4),
(55,22),
(92,4),
(73,6),
(12,11),
(82,17),
(20,13),
(106,12),
(130,22),
(83,23),
(104,10),
(57,13),
(10,15),
(101,8),
(80,11),
(98,25),
(122,12),
(126,4),
(117,17),
(85,20);
SELECT * FROM tblWarehouseEntrance;


-- -----------------------------------------------------
-- tblPrice
-- -----------------------------------------------------
INSERT INTO tblPrice(idGamePlataform, dsValue) VALUES
(15,510.29),
(113,493.91),
(11,467.09),
(6,508.7),
(62,492.8),
(107,469.5),
(17,512.64),
(71,470.37),
(112,475.13),
(97,505.28),
(79,502.54),
(5,542.74),
(38,491.82),
(30,491.57),
(127,494.63),
(18,478.08),
(46,486.77),
(123,510.51),
(31,528.11),
(125,533.26),
(63,531.21),
(129,498.24),
(16,529.94),
(61,476.77),
(13,490.42),
(77,471.26),
(44,424.76),
(59,492.89),
(33,438.51),
(41,503.65),
(22,462.54),
(94,483.04),
(1,522.62),
(42,521.72),
(78,488.21),
(24,545),
(54,487.11),
(109,537.45),
(28,478.34),
(108,472.1),
(19,489.82),
(51,480.48),
(8,449.35),
(26,481.13),
(36,482.04),
(4,478.64),
(120,494.73),
(128,451.42),
(111,487.15),
(110,457.12),
(100,492.95),
(66,469.48),
(131,507.48),
(45,492.84),
(81,470.72),
(103,546.87),
(87,483.37),
(124,515.13),
(76,460.02),
(60,523.93),
(47,525.3),
(69,525.03),
(9,509.93),
(23,492.93),
(119,567.99),
(40,472.63),
(14,466.88),
(2,503.96),
(52,480.32),
(84,503.52),
(32,489.96),
(67,476.21),
(99,500.8),
(116,451.94),
(53,531.52),
(49,462.45),
(93,476.18),
(21,431.84),
(132,501.15),
(37,461.27),
(121,491.86),
(55,496.12),
(92,529.8),
(73,513.43),
(12,480.62),
(82,551.38),
(20,439.42),
(106,489),
(130,511.49),
(83,496.8),
(104,517.65),
(57,522.17),
(10,469.8),
(101,526.26),
(80,548.54),
(98,517.82),
(122,503.88),
(126,524.76),
(117,500.24),
(85,543.4);
SELECT * FROM tblPrice;

-- -----------------------------------------------------
-- tblTypeStatusOrder
-- -----------------------------------------------------
INSERT INTO tblTypeStatusOrder(dsDescriptionEN,dsDescriptionPT) VALUES
('Awaiting payment','Aguardando pagamento'),
('Payment accept','Pagamento aprovado'),
('Shipped','Enviado'),
('Recived','Recebido'),
('Finished','Finalizado');
SELECT * FROM tblTypeStatusOrder;

-- -----------------------------------------------------
-- tblCustomer
-- -----------------------------------------------------
INSERT INTO tblCustomer(dsUsername,dsFirstName,dsLastName,dsEmail,dsBirthDate,dsCPF,dsStreet,dsNumber,dsCity,idTypeState,dsZip) VALUES
('arthur.santos','Arthur','Santos','arthur.santos@email.com','2000-09-29','11 A','Rua A','111','S�o Paulo',25,'1001001'),
('heloisa.oliveira','Helo�sa','Oliveira','heloisa.oliveira@email.com','1990-12-10','22','Rua B','222','Sorocaba',25,'18013900'),
('bernardo.rodrigues','Bernardo','Rodrigues','bernardo.rodrigues@email.com','1995-11-22','33','Rua C',NULL,'Bras�lia',7,'70910900');
SELECT * FROM tblCustomer;

-- -----------------------------------------------------
-- tblOrder
-- -----------------------------------------------------
INSERT INTO tblOrder(idPrice,idCustomer,idTypeStatusOrder,dsQuantity,dsTrackingCode) VALUES
(10,1,1,1,'ABC010203'),
(20,2,2,1,'ABC040506'),
(40,3,3,1,'ABC777999');
SELECT * FROM tblOrder;

