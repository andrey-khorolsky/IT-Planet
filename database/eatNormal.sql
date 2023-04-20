-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 20 2023 г., 17:39
-- Версия сервера: 5.7.35-38
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cm86027_eatnorm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `birth` varchar(11) NOT NULL,
  `sex` char(1) NOT NULL,
  `goal` varchar(40) NOT NULL,
  `problem` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `about` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `birth`, `sex`, `goal`, `problem`, `email`, `password`, `height`, `weight`, `about`) VALUES
(31, 'Аделина', '08.07.2001', 'м', 'побороть рпп', 'анорексия', 'qqrexmpl@mail.ru', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL),
(32, 'Наима', '24.12.2002', 'Ж', 'Хочу много деняк не работая', 'мало деняк', 'naima1224@mail.ru', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '3д моделллер'),
(33, 'Жмышенко Валерий Альбертович', '27.07.2003', 'М', 'Хочу много деняк', 'мало деняк', 'bebraed@mail.ru', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL),
(34, 'Николай', '20.12.1994', 'м', 'поддержка', 'разное', 'qwertyui@qwemail.ru', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL),
(35, 'Григорьев Вячеслав Константинович', '47814', 'r', 'erv', 'evr', 'erv@mail.ru', 'f097bd097592cfb7304c4a495a84e5c1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `text` varchar(10000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `authorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `date`, `authorId`) VALUES
(14, 'Опыт прочтения книги', 'Не так давно я прочитала книгу \"Когда здоровое питание вредит: Орторексия\", написанную Рене Макгрегор. И сразу вспомнился весь мой путь. Я как нервный орторексик в прошлом на своем горьком опыте подтвержаю всё, что написано в этой книге. Были те же мысли, те же желания, как будто с меня списали. Сейчас будучи не в болезненном состоянии анализируешь прошлые поступки, издевательства над организмом и приходишь в шок, что вообще такое происходило, с состраданием относишься к себе прошлой и огромной благодарностью организму за то,что нашел в себе силы всё это пережить. Просто хочется обнять себя и дарить много любви, а в моменты, когда голос рпп вновь пытается взять контроль, только остается осознавать это, бороться и никак не подпитывать.', '2023-04-20 09:51:49', 31),
(15, 'Я гордилась собой, потому что ела все меньше: как я победила анорексию', 'Расстройство пищевого поведения (РПП) еле заметной ниточкой проходит сквозь всю мою жизнь, но в 2016 году я лицом к лицу столкнулась с анорексией во всей красе, в результате чего потеряла более 30 килограммов, а также подорвала свое психическое и соматическое здоровье. С годами у меня развивались депрессия, тревожность, фобии, невроз, проблемы взаимодействия с эмоциями. Конечно, тогда я не понимала всех взаимосвязей, которые понимаю теперь в результате психотерапии. Мое сознание менялось, а точнее, я сама меняла его, прививая себе те или иные установки. К большинству продуктов начало возникать отвращение, а к людям, которые едят их, — презрение. Я чувствовала себя на их фоне железной и волевой. Вес падал. Я гордилась собой все больше, потому что могла обходиться все меньшим количеством еды. Мне было плевать на сладости, жареное, мучное. Окружающие хвалили меня, некоторые говорили, что считают меня примером. Когда за меня начали бояться окружающие, я увидела заботу и внимание, которые мне были так нужны. Я ушла с работы и стала практически жить в больницах. Теперь хотя бы минимальный набор веса был равносилен кошмару, ведь это означало бы возвращение к прежней жизни. Эта история никогда не была про вес. Спустя примерно полтора года РПП я начала чувствовать сильное слюноотделение и тремор при виде еды. Затем непреодолимое желание съесть ее. Все мои мысли занимала только еда, как бы я ни противилась и к каким бы уловкам ни прибегала. Я начала съедать огромное количество пищи, а после вызывать рвоту и «отрабатывать» калории жесткими тренировками. Я не понимала, куда делась моя железная сила воли.  Примерно в это же время я стала посещать психотерапевта. Я рассказала ей, что не могу остановиться: съев один пряник, тут же поглощаю пачку. Она ответила: «Аня, пачка пряников для вас — это не про безволие. Это про выживание». Мой организм действительно стал меня спасать. Он хотел выжить и делал для этого все.  Так ко мне пришло понимание, что либо я возвращаюсь в свой естественный вес, либо все будет хуже и хуже. И я начала есть без ограничений, рвоты и отработок. Я ела действительно много. Это продолжалось примерно пять месяцев. Я испытывала постоянный страх за то, что будет с моим телом, за то, как я теперь снова буду жить, как я потеряю выстраданный результат. Я снова оказалась перед тем, от чего бежала. Мне было сложно морально, тревожность и невроз обострились, так как моя опора — худоба — уходила с каждым днем. Физически восстановление тоже оказалось тяжелым процессом. Я посещала психотерапевта каждую неделю и посещаю до сих пор. Также я каждый месяц хожу к психиатру и принимаю медикаменты. Ментальных проблем много, и работать мне предстоит долго. РПП — это всегда лишь верхушка айсберга. Проблема, как правило, находится глубоко в голове.   Что касается моего соматического здоровья, оно еще не совсем в порядке. Урон от недоедания приходится ликвидировать очень долго.', '2023-04-20 12:06:42', 31),
(16, 'Никогда не поздно обратиться к психологу', 'За последнее время со мной случилось много плохих событий. Из-за усугубления моей анорексии мне пришлось много времени прбыть в больнице. Поэтому меня попросили уйти с работы. Девушка бросила, так как \"не хочет встречаться с больным\". После такого я думал о всяком, но все-таки решил попытать счастье в поиске помощи у специалистов. Я ходил к одному психологу и тоот никак не мог понять, что делать двльше, не помог осознать что же нужно, чтобы встать на ноги. Но потом я записался к другому психологу. И тут уже мне помогли. Благодаря сеансам я разобрался в причинах своих проблем и перестал винить себя в них. С каждым новым сеансом я понимал, что следующий сеанс будет еще продуктивнее. Теперь я смог завести новые отношения, и устроиться на работу. Каждый день я надеюсь, что мое прошлое состояние не вернется, ведь сейчас все так хорошо. И мы вместе с психологом превращаем эту мечту в реальность', '2023-04-20 12:31:48', 34);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_types_dis`
--

CREATE TABLE IF NOT EXISTS `articles_types_dis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`,`id_type`),
  KEY `id_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `articles_types_dis`
--

INSERT INTO `articles_types_dis` (`id`, `id_article`, `id_type`) VALUES
(11, 14, 3),
(12, 15, 1),
(13, 16, 1),
(14, 16, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `follower_id` (`follower_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `author_id`, `follower_id`) VALUES
(29, 31, 34);

-- --------------------------------------------------------

--
-- Структура таблицы `types_disorder`
--

CREATE TABLE IF NOT EXISTS `types_disorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `types_disorder`
--

INSERT INTO `types_disorder` (`id`, `name`) VALUES
(1, 'Анорексия'),
(2, 'Булимия'),
(3, 'Орторексия'),
(4, 'Компульсивное переедание'),
(5, 'Другое');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `articles_types_dis`
--
ALTER TABLE `articles_types_dis`
  ADD CONSTRAINT `articles_types_dis_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `types_disorder` (`id`),
  ADD CONSTRAINT `articles_types_dis_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
