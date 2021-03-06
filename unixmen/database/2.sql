CREATE TABLE IF NOT EXISTS `o_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `o_categories`
--

INSERT INTO `o_categories` (`id`, `title`, `description`, `position`) VALUES
(1, 'Main_category', 'the most important category eva', ''),
(2, 'the_category', 'this is just a category', ''),
(3, 'middle_category', 'Siarednija kacegorija', ''),
(4, 'news', 'Novasci, hujovasci, i pro4ij pizdiosh', ''),
(5, 'about animals', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `o_comments`
--

CREATE TABLE IF NOT EXISTS `o_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `text` text NOT NULL,
  `created` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `guest` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o_page`
--

CREATE TABLE IF NOT EXISTS `o_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `created` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=501 ;

--
-- Dumping data for table `o_page`
--

INSERT INTO `o_page` (`id`, `category_id`, `title`, `content`, `created`, `status`) VALUES
(1, 1, 'ниибацца какая первая запись', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 0),
(2, 2, 'падвох', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 0),
(3, 3, 'Vaka maka fo', 'To make sure everything is working you''ll now SSH to GitHub. When you do this, you will be asked to authenticate this action using your password, which for this purpose is the passphrase you created earlier. Don''t change the git@github.com part. That''s supposed to be there.', '', 0),
(4, 1, 'Treci padzel', 'Параза паўстання 1794 прывяла да поўнай ліквідацыі Рэчы Паспалітай. 3 студзеня 1795 была падпісаная канвенцыя аб трэцім падзеле Рэчы Паспалітай паміж Расіяй і Аўстрыяй, а 24 кастрычніка падобная жа канвенцыя была падпісаная паміж Прусіяй і Расіяй. Да Расіі адышлі Заходняя Валынь, а таксама рэшткі ВКЛ і Курляндыя. Аўстрыя атрымала малапольскія землі з Любліным і Кракавым, Прусія – частку Падляшша і Мазавецкіх земляў з Варшавай, а таксама частка Жамойці.\r\nУ 1795 адбылося поўнае паглынанне Расійскай імперыяй тэрыторыі Беларусі.', '', 0),
(5, 2, 'dxdfsdcd', 'sdcsdcsНекоторое время назад мы довольно подробно начали рассказывать об одной из базовых облачных технологий Яндекса — Elliptics. Сегодня настала очередь поговорить о другой — той самой, под которой работают «эльфы» и которая делает мечту о своем облаке чуть ближе к реальности. Речь пойдет о Cocaine.\r\n\r\nCocaine (Configurable Omnipotent Custom Applications Integrated Network Engine) — это PaaS-система (Platform-as-a-Service) с открытым исходным кодом, являющаяся по сути app engine и позволяющая создавать собственные облачные хостинги приложений — такие, как Google AppEngine, OpenShift, CloudFoundry или Heroku.', '', 0),
(6, 3, 'Несколько бесплатных книг по программированию на русском языке', 'Представляю вашему вниманию небольшую подборку бесплатных книг по программированию, думаю они могут многим оказаться полезными.\r\n\r\n\r\nАлександр Круглов — Ruby — Эту книгу можно использовать как справочник и как отдельный учебник по Ruby. Для изучающих Rails считаю исчерпывающим руководством по языку. Версия языка изучаемая в этой книге — 2.0.0p247.\r\n\r\nСлова автора: Не думайте, что прочитав эту книгу вы сразу станете писать высоконагруженные приложения. Максимум чему вы научились — это программирование небольших скриптов, способных немного облегчить вашу повседневную работу. Еще множество необходимых знаний о стиле кода, тестировании и отладке, архитектуре и оптимизации (и т.д.) отделяет вас от гордого звания программиста. Могу лишь надеяться, что удовольствия от работы с Ruby поможет преодолеть все эти препятствия и сообщество получит еще одного единомышленника. Github репозиторий', '', 0),
(7, 1, 'Пару слов о распознавании образов ', 'Какие-то статьи по Optical Recodnition я пишу давненько, так что пару раз в месяц мне пишут различные люди с вопросами по этой тематике. Иногда создаётся ощущение, что живёшь с ними в разных мирах. С одной стороны понимаешь, что человек скорее всего профессионал в смежной теме, но в методах оптического распознавания знает очень мало. И самое обидное, что он пытается применить метод из близрасположенной области знаний, который логичен, но в Image Recognition полностью не работает, но не понимает этого и сильно обижается, если ему начать рассказывать что-нибудь с самых основ. А учитывая, что рассказывать с основ — много времени, которого часто нет, становится всё ещё печальнее.', '', 0),
(8, 2, 'Главное — доверие', 'Сегодня утром в курилке я слышал очередной спор о биткоине. Ну, знаете, как обычно: \r\n— Это деньги! \r\n— Нет, фикция!\r\n— Экономика будущего!\r\n— Пирамида! \r\n— Посмотри на курс!\r\n— Ничего не стоят! \r\nи т.д. Сам уже не вмешивался, просто слушал. Рассуждают люди, спорят. Ну, ок.', '', 0),
(9, 4, 'Vialan4el', 'Chitajce svezhye novosti ob is4eznuvshej violon4ele Jonatana Swifta', '', 0),
(10, 3, 'Create test pageeta tajtal', 'dvazhdy dva  rovno chetyre', '', 0),
(500, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `o_users`
--

CREATE TABLE IF NOT EXISTS `o_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `ban` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;