/*
 *  Название курсового проекта - книжный онлайн-магазин "labirint.ru".
 */


drop database if exists labirint;
create database labirint;
use labirint;


# таблицы из подраздела Билингуала
#---------------------------------
#1)
drop table if exists english_lang;
create table english_lang (
english_lang_id int primary key auto_increment,
name varchar (100),
author varchar (55),
price_rub int,
bilingual_id int unsigned,

key index_of_bilingual_id (bilingual_id)

) comment 'Билингвы (английский язык)';

insert into english_lang (name, author, price_rub, bilingual_id)
values 
('Хроники Нарнии. Конь и его мальчик = The Chronicle of Narnia. The Horse and His Boy', 'Льюис Клайв Стейплз', 691, 1),
('Вино из одуванчиков. The Dandelion Wine', 'Брэдбери Рэй', 383, 1),
('Убийство Роджера Экройда. The Murder of Roger Ackroyd', 'Кристи Агата', 391, 1),
('Как читать книгу. How to Read a Book', 'Бродский Иосиф Александров', 445, 1),
('Набережная неисцелимых. Watermark. Эссе', 'Бродский Иосиф Александров', 445, 1),
('Верь своей боли. Believe your pain. Избранные речи', 'Бродский Иосиф Александров', 445, 1),
('О тирании. On Tyranny', 'Бродский Иосиф Александров', 445, 1),
('Путеводитель по переменованному городу. A Guide to a Renamed City', 'Бродский Иосиф Александров', 445, 1),
('451 по Фаренгейту = Fahrenheit 451', 'Брэдбери Рэй', 125, 1),
('Джейн Эйр. Jane Eyre', 'Бронте Шарлотта', 258, 1);

#2)
drop table if exists other_lang;
create table other_lang (
other_lang_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
bilingual_id int unsigned,

key index_of_bilingual_id (bilingual_id)

) comment 'Билингвы (другие языки)';

insert into other_lang (name, author, price_rub, bilingual_id)
values 
('Антология новой грузинской поэзии', 'Бакурадзе Шалва, Бекишвили Теона', 323, 2),
('Не грусти, сердце. Стихотворения (на лезгинском и русском языках', 'Оруджева Теране', 355, 2),
('Krave sonety. Кровавые сонеты', 'Гвездослав Павол Орсаг', 967, 2),
('Стихи из неволи', 'Алиш Абдулла', 216, 2),
('Дэердменд', 'Хамидуллин Лирон Хайдарович', 735, 2),
('Моабитские тетради', 'Джалиль Муса', 635, 2),
('Звездное поле', 'Мирза Мухаммат', 176, 2),
('Книга о воспитании', 'Насыры Каюм', 216, 2),
('Жизнь человека', 'Кари Анас', 407, 2),
('Чаша яда', 'Ву Динь Лонг', 597, 2);

#3)
drop table if exists spanish_lang;
create table spanish_lang ( 
spanish_lang_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
bilingual_id int unsigned, 

key index_of_bilingual_id (bilingual_id)
) comment 'Билингвы (испанский язык)';

insert into spanish_lang (name, author, price_rub, bilingual_id)
values 
('Альтасор Высокол, или Путешествие с парашютом. Altazor, o El viaje en paracaidas', 'Уидобро Висенте', 551, 3),
('Схолии к имплицитному тексту', 'Гомес Давила Николас', 1825, 3),
('Пульс мира = El pulso del mundo', 'Рока де Пабло', 343, 3),
('Стихотворения', 'Гарсиа Лорка Федерико', 364, 3),
('Песня о Соколе / Песня о Буревестнике. На русском и других европейских языках', 'Горький Максим', 419, 3),
('Грустный Бог. Стихотворения на испанском и русском языках', 'Мистраль Габриэла', 456, 3),
('Двенадцать (на русском и других европейских языках)', 'Блок Александр Александрович', 1545, 3);

#4)
drop table if exists italian_lang;
create table italian_lang ( 
italian_lang_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
bilingual_id int unsigned,
key index_of_bilingual_id (bilingual_id)
) comment 'Билингвы (итальянский язык)';

insert into italian_lang (name, author, price_rub, bilingual_id)
values 
('Избранные сонеты и канцоны', 'Петрарка Франческо', 408, 4),
('Между Бари и Санкт-Петербургом. Писательские путешествия', null, 456, 4),
('Песня о Соколе / Песня о Буревестнике. На русском и других европейских языках', 'Горький Максим', 419, 4),
('Двенадцать (на русском и других европейских языках)', 'Блок Александр Александрович', 1545, 4),
('Календарь. Цикл миниатюр', 'Петросян Анна Карапетовна', 1731, 4),
('Наизусть', 'Аллева Аннелиза', 404, 4),
('Стихотворения', 'Леопарди Джакомо', 223, 4),
('"Служенье муз не терпит суеты..."', 'Пушкин Александр Сергеевич', 262, 4);

#5)
drop table if exists german_lang;
create table german_lang ( 
german_lang_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
bilingual_id int unsigned,

key index_of_bilingual_id (bilingual_id)
) comment 'Билингвы (немецкий язык)';

insert into german_lang (name, author, price_rub, bilingual_id)
values 
('Antike und Klassizismus. Winckelsmanns Erbe in Russland', 'Андреева Екатерина Михайловна, Бодэн родольф, Балаханова Юлия Борисовна', 1953, 5),
('Кризис', 'Гессе Герман', 218, 5),
('Грезящий Гелиан: Избранные стихи', 'Тракль Георг', 904, 5),
('Сто стихотвоений', 'Брехт Бертольт', 211, 5),
('Истории господина Койнера', 'Брехт Бертольт', 149, 5),
('Messer (Нож. Лирика)', 'Линдеманн Тилль', 1254, 5),
('В тихой ночи. Лирика', 'Линдеманн Тилль', 1211, 5),
('Мария Стюарт. Трагедия в пяти действиях в стихах', 'Шиллер Фридрих', 406, 5),
('Der Steppenwolf', 'Hesse Hermann', 166, 5),
('Фауст. Трагедия. Часть первая', 'Гете Иоганн Вольфганг', 1022, 5);

#6)
drop table if exists french_lang;
create table french_lang ( 
french_lang_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
bilingual_id int unsigned,

key index_of_bilingual_id (bilingual_id)
) comment 'Билингвы (французский язык)';


insert into french_lang (name, author, price_rub, bilingual_id)
values 
('Кармен. На русском и французском языках', 'Мериме Проспер', 554, 6),
('La Dame de pique', 'Puchkine Alexandre', 1359, 6 ),
('В ожидании Годо. Трагикомедия в двух действиях', 'Бэккет Сэмюэль', 2126, 6),
('Маленький принц. Двуязычное издание', 'Сэнт-Экзюпери Антуа', 1039, 6),
('Бескрайняя лазурь Франции', 'Новожилов Константин В.', 1717, 6),
('Стихотворения', 'Жакоб Макс', 243, 6),
('Стихотворения', 'Верлен Поль', 355, 6),
('La maison de papier', 'Малле-Жорис Франсуаза', 138, 6),
('Стихотворения', 'Валери Поль', 568, 6),
('Трофей', ' Де Эредиа Жозе-Мария', 520, 6);

#--------------------------------------------------------------------
# 1) таблица раздела Билингуала

    drop table if exists bilingual;
    create table bilingual (
    bilingual_id int primary key auto_increment,
    languages varchar (55),
    bilingual_book_id int unsigned,
    null_1 int,
    null_2 int,
    null_3 int,
    english_lang_id int,
    other_lang_id int, 
    spanish_lang_id int,
    italian_lang_id int,
    german_lang_id int,
    french_lang_id int,
    
    foreign key (english_lang_id) references english_lang (english_lang_id),
    foreign key (other_lang_id) references other_lang (other_lang_id),
    foreign key (spanish_lang_id) references spanish_lang (spanish_lang_id),
    foreign key (italian_lang_id) references italian_lang (italian_lang_id),
    foreign key (german_lang_id) references german_lang (german_lang_id),
    foreign key (french_lang_id) references french_lang (french_lang_id),
    
    key index_of_bilibual_book_id (bilingual_book_id)
    
   
    ) comment 'Билингвы';

    insert into bilingual (languages, null_1, null_2, bilingual_book_id)
    values 
    ('Билингвы (английский язык)', null, null, 2),
    ('Билингвы (другие языки)', null, null, 2),
    ('Билингвы (испанский язык)', null, null, 2),
    ('Билингвы (итальянский язык)', null, null, 2),
    ('Билингвы (немецкий язык)', null, null, 2),
    ('Билингвы (французский язык)', null, null, 2);

   #--------------------------------------------------------------
# 2) таблица раздела Литература на иностранном языке
   
   drop table if exists lit_on_a_foreign_lang;
   create table lit_on_a_foreign_lang (
   lit_on_a_foreign_lang_id int primary key auto_increment,
   null_1 int,
   name varchar (100),
   author varchar (100),
   price_rub int,
   bilingual_book_id int unsigned, 
   key index_of_bilibual_book_id (bilingual_book_id)
   
   ) comment 'Литература на иностранном языке';

   insert into lit_on_a_foreign_lang (null_1, name, author, price_rub, bilingual_book_id)
   values 
   (null ,'Китайские народные сказки', null, 216, 3),
   (null ,'Путешествие к центру Земли', 'Верн Жюль', 238, 3),
   (null ,'Финансист. Уровень 4', 'Драйзер Теодор', 199, 3),
   (null ,'Untold Will', 'Eniki Amirkhan', 684, 3),
   (null ,'Озорные истории из Баварии. Уровень 1', 'Тома Людвиг', 181, 3),
   (null ,'Гордость и предубеждение. Pride and Prejudice', 'Остен Джейн', 299, 3),
   (null ,'Клуб самоубийц', 'Стивенсон Роберт Льюис', 320, 3),
   (null ,'Three Novellas. The Devil, Family Happiness and A Landowner’s Morning', 'Tolstoy Leo', 485, 3),
   (null ,'Master and Commander. Man-of-War', 'O`Brien Patrick', 1681, 3),
   (null ,'Natives. Race and Class in the Ruins of Empire', 'Akala', 819, 3);


 #--------------------------------------------------
 # 3) Литература на иностранном языке для детей
  
   drop table if exists lit_on_a_foreign_lang_for_kids;
   create table lit_on_a_foreign_lang_for_kids (
   lit_on_a_foreign_lang_for_kids_id int primary key auto_increment,
   null_1 int,
   name varchar (100),
   author varchar (100),
   price_rub int,
   bilingual_book_id int unsigned,
   key index_of_bilibual_book_id (bilingual_book_id)
   
   ) comment 'Литература на иностранном языке для детей';

   insert into lit_on_a_foreign_lang_for_kids (null_1, name, author, price_rub, bilingual_book_id)
   values 
   (null,'Любимое чтение на английском языке. Фрэнк Баум. Волшебник страны Оз', 'Баум Фрэнк', 279, 4),
   (null, 'The Stick Man Cookbook', 'Donaldson Julia', 1099, 4),
   (null, "Little Grey Rabbit's Paint-Box", 'Uttley Alison', 582, 4),
   (null, 'Fedezd fel a templomot!', 'Szeljuminov V. V.', 1093, 4),
   (null, 'Сказки народов Поволжья', null, 516, 4),
   (null, 'A Christmas Advent Story', 'Tolson, Snow', 1250, 4),
   (null, 'The Iron Man', 'Hughes Ted', 1616, 4),
   (null, 'Le livre sonore des mes emotions', 'Couturier Stephanie', 1196, 4),
   (null, 'The BFG. The Plays', 'Puffin', 679, 4),
   (null, 'Meet the Easter Beagle!', 'S&Sch USA', 438, 4);
#-----------------------------------------------------------------------------   
     # таблицы из раздела Меню
     #1)
       create table bilingual_books (
       bilingual_book_id int primary key auto_increment,
       name varchar (55),
       null_1 int,
       book_id int unsigned,
       bilingual_id int,
       lit_on_a_foreign_lang_id int, 
       lit_on_a_foreign_lang_for_kids_id int,
       
       foreign key (bilingual_id) references bilingual (bilingual_id),
       foreign key (lit_on_a_foreign_lang_id) references lit_on_a_foreign_lang (lit_on_a_foreign_lang_id),
       foreign key (lit_on_a_foreign_lang_for_kids_id) references lit_on_a_foreign_lang_for_kids (lit_on_a_foreign_lang_for_kids_id),
       
       key index_of_book_id (book_id)

       ) comment 'Билингвы и книги на иностранных языках';

       insert into bilingual_books (name, null_1, book_id)
       values 
       ('Все книги жанра', null, 2),
       ('Билингвы', null, 2),
       ('Литература на иностранном языке', null, 2),
       ('Литература на иностранном языке для детей', null, 2);
       

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблицы из раздела Книги для детей
      
#1)
drop table if exists childrens_fiction;
create table childrens_fiction ( 
childrens_fiction_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
books_for_kids_id int unsigned,
key index_of_books_for_kids (books_for_kids_id)
) comment 'Детская художественная литература';


insert into childrens_fiction (name, author, price_rub, books_for_kids_id)
values 
('Сердечко, вырезанное из картона','Клюев Евгений Васильевич', 773, 2),
('Победителей судят','Крюкова Тамара Шамиль', 351, 2),
('Загадка Серебряного Змея','Джонс Лина', 480, 2),
('В чём секрет, Чарли?','Эдж Кристофер', 480, 2),
('Неистовая буря','Хантер Эрин', 335, 2),
('Самая темная ночь','Хантер Эрин', 335, 2),
('Тот, который... Книжка на ночь для шалунишек','', 472, 2),
('Десять секретов школы Квиксмит','Оуэн Лорис', 456, 2),
('Злые фантомы','Уайт Дж. Э.', 522, 2),
('Магнус Чейз и Боги Асгарда. Меч Лета','Риордан Рик', 498, 2);


#2)
drop table if exists childrens_leisure;
create table childrens_leisure ( 
childrens_leisure_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
books_for_kids_id int unsigned,
key index_of_books_for_kids (books_for_kids_id)
) comment 'Детский досуг';

insert into childrens_leisure (name, author, price_rub, books_for_kids_id)
values 
('Конструирование из бумаги. Раздаточный материал для дошкольников 6–7(8) лет', null, 384, 3),
('Забавные животные. Раскраска с заданиями и загадками', 'Заболотная Этери Никола', 101, 3),
('Кто летает всех быстрей. Раскраска с заданиями и загадками', 'Заболотная Этери Николае', 101, 3),
('Лабиринты. По разным странам', null, 194, 3),
('Находилки. Животные', null, 194, 3),
('На досуге. Сборник занимательных задач и головоломок. 1957 год', null, 361, 3),
('Красивая и стильная', null, 75, 3),
('Смелый корабль и храбрый самолёт', null, 252, 3),
('Автомобиль и приключения на дороге', null, 252, 3),
('Алиса в стране смекалки', 'Смаллиан Рэймонд Меррилл', 1838, 3);

#3)
drop table if exists child_development;
create table child_development ( 
child_development_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
books_for_kids_id int unsigned ,
key index_of_books_for_kids (books_for_kids_id)
) comment 'Первые книги малыша. Развитие ребенка';

insert into child_development (name, author, price_rub, books_for_kids_id)
values 
('Дальние страны: мини-энциклопедия для крохи', 'Субботина Елена Александр', 220, 4),
('Муми-тролли и шляпа волшебника', 'Янссон Туве', 604, 4),
('Едем, плывем, летим', 'Звонцова Ольга Александров', 199, 4),
('Про Машу и Ойку', 'Прокофьева Софья Леони', 248, 4),
('Тотте наводит порядок', 'Вольде Гунилла', 803, 4),
('Каю. Будь вежливым', 'Патнод Даниэль', 95, 4),
('Каю. Не будь жадным', 'Саншагрен Жоселин', 95, 4),
('Самый храбрый динозавр', 'Земляничкина Екатерин', 600, 4),
('Учимся считать', 'Гамазкова Инна Липовна', 191, 4),
('Вилко и его семья', 'Димитровски Бояна', 729, 4);


#4)
drop table if exists educ_lit_for_kids;
create table educ_lit_for_kids ( 
educ_lit_for_kids_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
books_for_kids_id int unsigned ,
key index_of_books_for_kids (books_for_kids_id)
) comment 'Познавательная литература для детей';

insert into educ_lit_for_kids (name, author, price_rub, books_for_kids_id)
values 
('Что такое деньги. Детская энциклопедия', 'Попова Татьяна Львовна', 816, 5),
('Задумай число. Математический отгадчик', 'Перельман Яков Исидоро', 65, 5),
('Мифы Древней Греции в шедеврах искусства', 'Мениль, Гросстет', 785, 5),
('Лучший подарок крестнику. 77 самых главных вопросов и ответов', 'Кипарисова Светлана', 269, 5),
('Тайны пиратов', 'Малов Владимир Игореви', 353, 5),
('Джордж и Большой взрыв', 'Хокинг, Хокинг', 1173, 5),
('Откуда берется еда?', 'Дюрр Юлия', 694, 5),
('Ядовитые животные. Кто, зачем и как использует яды в дикой природе', 'Ромеро Ико', 806, 5),
('От юнги до капитана. Повседневная жизнь на парусных кораблях', 'Бояшов Илья', 784, 5),
('Открой окно', 'Блиновская Катерина', 1104, 5);

#---------------------------------
    # таблица раздела Книги для детей
     drop table if exists books_for_kids;
     create table books_for_kids (
     books_for_kids_id int primary key auto_increment,
     name varchar (55),
     null_1 int, 
     book_id int unsigned,
     childrens_fiction_id int,
     childrens_leisure_id INT,
     child_development_id INT,
     educ_lit_for_kids_id INT,
     
     foreign key (childrens_fiction_id) references childrens_fiction (childrens_fiction_id),
     foreign key (childrens_leisure_id) references childrens_leisure (childrens_leisure_id),
     foreign key (child_development_id) references child_development (child_development_id),
     foreign key (educ_lit_for_kids_id) references educ_lit_for_kids (educ_lit_for_kids_id),
     
     key index_of_book_id (book_id)
     ) comment 'Книги для детей';

     insert into books_for_kids (name, null_1, book_id)
     values 
     ('Все книги жанра', null, 3),
     ('Детская художественная литература', null, 3),
     ('Детский досуг', null, 3),
     ('Первые книги малыша. Развитие ребенка', null, 3),
     ('Познавательная литература для детей', null, 3);  
      

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблицы из раздела Комиксы, Манга, Артбуки   
    
#1)
drop table if exists artbooks_and_co;
create table artbooks_and_co ( 
artbooks_and_co_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)

) comment 'Артбуки. Игровые миры. Вселенные';

insert into artbooks_and_co (name, author, price_rub, comics_manga_artbk_id)
values 
('Джокер. Безумный король преступного мира', 'Лэнгли, Услан', 1085, 2),
('Полное руководство по режиму выживания в Minecraft', 'Липскомб Дэн', 554, 2),
('Картинки для подземных детей', 'Nemo Soda', 403, 2),
('Eleeza. Магический реализм Элизы Ивановой. Артбук', 'Иванова Элиза', 1286, 2),
('Harry Potter. Мастерская Магии Гарри Поттера. Официальная книга творческих проектов', null, 3900, 2),
('Разработка игр и теория развлечений', 'Костер Рэф', 1504, 2),
('500 лет спустя. Final Fantasy VII', 'Леон, Далтон', 779, 2),
('Гравити Фолз. Геймбук. 2', 'Солодухин Борис', 431, 2),
('Dark Souls II. Иллюстрации', null, 1242, 2),
('Легенда о волках. Артбук', 'Соломон Чарльз', 1924, 2);


#2)
drop table if exists comics;
create table comics ( 
comics_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Комиксы';

insert into comics (name, author, price_rub, comics_manga_artbk_id)
values 
('Земля Королей. 13 карт. Трефовый том', 'Нечитайло Федор Констант', 1667, 3),
('Чумной доктор. Том 3. На руинах', 'Ким, Котков, Воронцова', 523, 3),
('Звёздные войны. Расцвет Республики. Свет джедаев', 'Соул Чарльз', 554, 3),
('Дёшево и сердито. Выход в город', 'Протас Мария', 1130, 3),
('Лора Дин снова меня бросает', 'Тамаки Марико', 964, 3),
('Классика Marvel. Человек-Паук. Том 2', 'Ли Стэн', 1575, 3),
('Война Бесконечности', 'Старлин Джим', 663, 3),
('Остров доктора Моро. Графический роман', 'Уэллс, Родригес, Адамс', 986, 3),
('Стражи Галактики. 100 лет Marvel', 'Лэннинг, Марц', 358, 3),
('Очень странные дела. Задира', 'Пак Грег', 431, 3);

#3)
drop table if exists comics_for_kids;
create table comics_for_kids ( 
comics_for_kids_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Комиксы для детей';

insert into comics_for_kids (name, author, price_rub, comics_manga_artbk_id)
values 
('Эмиль и Марго. Чудовищные глупости', 'Дидье, Мэллер', 861, 4),
('Гравити Фолз. Полная история. Сезон 1', 'Хирш Алекс', 994, 4),
('Правила выживания в школе', 'Шмакова Светлана', 978, 4),
('Королевство драконов. Застывшее пламя', 'Куинн Джордан', 872, 4),
('Кот Пончик. Жизнь кота', 'Бадель Ронан', 498, 4),
('Школьные секреты. Любовь', 'Бека, Бека', 928, 4),
('Энканто. Графический роман', null, 561, 4),
('Кэлпурния. Графический роман', 'Келли Жаклин', 922, 4),
('Белая птица', 'Паласио Р. Дж.', 1035, 4),
('Мировая история в комиксах', 'Барфилд Майк', 692, 4);

#4
drop table if exists manga;
create table manga ( 
manga_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
comics_manga_artbk_id int unsigned,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Манга';

insert into manga (name, author, price_rub, comics_manga_artbk_id)
values 
('Beastars. Выдающиеся звери. Том 5', 'Итагаки Пару', 1236, 5),
('Тетрадь дружбы Нацумэ. Том 4', 'Мидорикава Юки', 459, 5),
('Семь смертных грехов. Том 6', 'Накаба Судзуки', 459, 5),
('Врата Штейна 0. Том 4', 'Химэно Така', 301, 5),
('Паразит. Том 7', 'Ивааки Хитоси', 978, 5),
('Хвост Феи. Том 16', 'Хиро Масима', 312, 5),
('Берсерк. Том 3', 'Миура Кэнтаро', 702, 5),
('Beastars. Выдающиеся звери. Том 3', 'Итагаки Пару', 902, 5),
('Дневник будущего. Мозаика', 'Сакаэ Эсуно', 318, 5),
('Восхождение героя Щита. Том 7', 'Кю, Юсаги', 301, 5);


#5
drop table if exists manga_for_kids;
create table manga_for_kids ( 
manga_for_kids_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Манга для детей';

insert into manga_for_kids (name, author, price_rub, comics_manga_artbk_id)
values 
('W.I.T.C.H. Часть 1. Двенадцать порталов. Том 2', 'Ньоне, Мулацци, Бо', 1278, 6);

#6 
drop table if exists novelizations;
create table novelizations ( 
novelizations_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Новеллизации';

insert into novelizations (name, author, price_rub, comics_manga_artbk_id)
values 
('Чудо-Женщина - вестница войны', 'Бардуго Ли', 546, 7),
('Бэтмен. Убийственная шутка', 'Фауст, Филлипс', 546, 7),
('Far Cry. Прощение', 'Уэйт Урбан', 572, 7),
('Хищник. Охотники и жертвы. Официальный приквел', 'Мур Джеймс А.', 526, 7),
('World of Warcraft. Ночь дракона', 'Кнаак Ричард А.', 791, 7),
('Звёздные войны. Траун. Доминация. Высшее благо', 'Зан Тимоти', 637, 7),
('Diablo. Черная дорога', 'Одом Мэл', 669, 7),
('Майор Гром', 'Волков Алексей', 570, 7),
('Death Stranding. Часть 1. Официальная новеллизация', 'Кодзима, Нодзима', 727, 7),
('Благие знамения. Сценарий сериала', 'Гейман Нил', 616, 7);

#7
drop table if exists educational_comics;
create table educational_comics ( 
educational_comics_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned ,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Образовательные комиксы';

insert into educational_comics (name, author, price_rub, comics_manga_artbk_id)
values 
('Занимательная физика. Квантовая механика', 'Исикава Кэндзи', 640, 8),
('Занимательная молекулярная биология. Манга', 'Такэмура Масахару', 640, 8),
('Занимательная Физиология. Манга', 'Эцуро Танака', 640, 8),
('Мифята. Том 5. Мифята в гостях у Одина', 'Казнов Кристоф', 695, 8),
('Зоопарк исчезнувших животных. Том 2', 'Казнов Кристоф', 695, 8),
('Птицы в комиксах. Том 2', 'Гаррера Жан-Люк', 695, 8),
('Морские животные в комиксах. Том 6', 'Казнов, Иньетт', 695, 8),
('Занимательная манга. Дроны', 'Накура Синго', 640, 8),
('Занимательное электрооборудование. Манга', 'Игараси Хирокадзу', 640, 8),
('Краткая история физики', 'Лерой Дэн', 546, 8);

#8
drop table if exists fan_souvenirs;
create table fan_souvenirs ( 
fan_souvenirs_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
comics_manga_artbk_id int unsigned ,
key index_of_comics_manga_artbk_id (comics_manga_artbk_id)
) comment 'Фан-сувениры';

insert into fan_souvenirs (name, author, price_rub, comics_manga_artbk_id)
values 
('BTS. Раскраска', null, 260, 9),
('Скетчбук BTS', null, 410, 9),
('Комикс-Блокнот 13 Карт', 'Нечитайло Федор Константинович', 212, 9),
('Комикс-Блокнот Бесит', 'Нечитайло Федор Константинович', 212, 9),
('Суть Чарли. Полный гайд по реалу', 'Д`Амелио Чарли', 986, 9),
('BTS. В погоне за мечтой. Биография любимых артистов в комиксах', 'Ким Сынхён', 1080, 9),
('The Elder Scrolls. Официальный сборник рецептов', 'Монро-Кассель Челси', 4217, 9),
('Игра настольная. Гравити Фолз', null, 1098, 9),
('Календарь на 2022 год. Marvel. Spider-Man', null, 536, 9),
('Fun Manga Girls. Раскраска для творчества и вдохновения', 'Харт Кристофер', 463, 9);
    
#-----------------------------------------------
     # таблица раздела Комиксы, Манга, Артбуки
     #3)
     drop table if exists comics_manga_artbk;
     create table comics_manga_artbk (
     comics_manga_artbk_id int primary key auto_increment,
     name varchar (55),
     null_1 int,
     book_id int unsigned,
     artbooks_and_co_id INT,
     comics_id int,
     comics_for_kids_id int,
     manga_id int,
     manga_for_kids_id int,
     novelizations_id int,
     educational_comics_id int,
     fan_souvenirs_id int,
     
     foreign key (artbooks_and_co_id) references artbooks_and_co (artbooks_and_co_id),
     foreign key (comics_id) references comics (comics_id),
     foreign key (comics_for_kids_id) references comics_for_kids (comics_for_kids_id),
     foreign key (manga_id) references manga (manga_id),
     foreign key (manga_for_kids_id) references manga_for_kids (manga_for_kids_id),
     foreign key (novelizations_id) references novelizations (novelizations_id),
     foreign key (educational_comics_id) references educational_comics (educational_comics_id),
     foreign key (fan_souvenirs_id) references fan_souvenirs (fan_souvenirs_id),
     
     key index_of_book_id (book_id)
    
     ) comment 'Комиксы, манги, артбуки';

     insert into comics_manga_artbk (name, null_1, book_id)
     values 
     ('Все книги жанра', null, 4),
     ('Артбуки. Игровые миры. Вселенные', null, 4),
     ('Комиксы', null, 4),
     ('Комиксы для детей', null, 4),
     ('Манга', null, 4),
     ('Новеллизации', null, 4),
     ('Образовательные комиксы', null, 4),
     ('Фан-сувениры', null, 4);

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблица из раздела Молодежная литература
    
drop table if exists youth_literature;
create table youth_literature (
youth_literature_id int primary key auto_increment,
name varchar (55),
author varchar (55),
null_1 int,
price_rub bigint,
book_id int unsigned,
key index_of_book_id (book_id)

) comment 'Молодежная литература';


insert into youth_literature (name, author, null_1, price_rub, book_id)
values 
('Дом, в котором...', 'Петросян Мариам', null, 587, 5),
('Лисья нора', 'Сакавич Нора', null, 1121, 5),
('Сердце призрака', 'Крэй Келли', null, 673, 5),
('Король Воронов', 'Сакавич Нора', null, 964, 5),
('Чернила и кость', 'Кейн Рейчал', null, 617, 5),
('За танцующим туманом', 'Диппель Юлия', null, 607, 5),
('Оллард. Разрушитель миорв', 'Авеярд Виктория', null, 785, 5),
('Ледяное сердце', 'Одувалова Анна Сергеевна', null, 518, 5),
('Корона из жемчуга и кораллов', 'Резерфорд Мара', null, 607, 5),
('Ворон хозяйна не выбирает', 'Абэ Тисато', null, 735, 5);

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблицы из раздела Нехудожественная литература 

#1)
drop table if exists business_and_economy;
create table business_and_economy ( 
business_and_economy_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Бизнес. Экономика';

insert into business_and_economy (name, author, price_rub, non_fiction_literature_id)
values
('Богатый папа, бедный папа', 'Кийосаки Роберт', 836, 2),
('Воспоминания о будущем', 'Хазин Михаил Леонидович', 610, 2),
('Эмоциональный интеллект. Российская практика', 'Шабанов, Алешина', 1113, 2),
('Та, которая смогла. Завоюй любовь миллионов, добейся жизни мечты', 'Кеннелли, Кеннелли', 604, 2),
('Бизнес-анализ и управление рисками. Учебник', 'Казакова, Иванова', 1806, 2),
('Инициативное бюджетирование. Эволюция теории и практики', null, 1450, 2),
('Экономический анализ. Учебник', 'Герасимова Елена Борисовисовна', 1310, 2),
('Как научиться изобретать', 'Альтшуллер Генрих Саулович', 1931, 2),
('Мемы. Научный взгляд на феномен поп-культуры, захвативший мир', 'Кузнецов Иван Сергеевич', 586, 2),
('Fashion-ритейл. 100 секретных вопросов об управлении', 'Вешнякова Юлия', 943, 2);

#2)
drop table if exists state_and_law;
create table state_and_law ( 
state_and_law_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Государство и право. Юриспруденция';

insert into state_and_law (name, author, price_rub, non_fiction_literature_id)
values
('Портрет психопата. Профайлер о серийных убийцах', 'Кулик Анна Валерьевна', 736, 3),
('Закон Российской Федерации "О защите прав потребителей"', null, 63, 3),
('Федеральный Закон "Об исполнительном производстве" на 2022 год', null, 171, 3),
('Книга отзывов, жалоб и предложений', null, 51, 3),
('Право наследования в гражданском праве России', null, 949, 3),
('Теория государства и права в терминах и определениях', 'Панченко, Рыбаков', 295, 3),
('Право в условиях глобального изменения климата. Монография', null, 579, 3),
('Инициативное бюджетирование. Эволюция теории и практики', null, 1450, 3),
('Правоохранительные органы Российской Федерации. Учебник', null, 2290, 3),
('Конституционное право России. Учебник', 'Нарутто, Таева', 2366, 3);

#3)
drop table if exists home_crafts;
create table home_crafts ( 
home_crafts_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Домашние ремесла. Рукоделие';

insert into home_crafts (name, author, price_rub, non_fiction_literature_id)
values
('Швы и стежки. Большая энциклопедия вышивки', 'Зайцева Анна Анатольевна', 1247, 4),
('Гениальные носки. Вязание на спицах. Энциклопедия - конструктор', 'Линден, Йостес', 1645, 4),
('Учебник переплетного дела', 'Ле Норман Луи-Себастьян', 3785, 4),
('Практика кройки и шитья', 'Корфиати Анастасия', 1083, 4),
('Резьба по дереву', 'Латыпов Хамит Назипович', 1032, 4),
('Секреты вышивки в ботаническом стиле', 'Новожилова Олеся Владимировна', 1083, 4),
('Платье. Шьем быстро и красиво', 'Коломейко Галина Леонидовна', 785, 4),
('Лесные жители, связанные на спицах. 12 реалистичных игрушек', 'Гарланд Клэр', 950, 4),
('Лакировщик. Репринт', null, 346, 4),
('Одежда для дома. Шить просто!', 'Корфиати Анастасия', 785, 4);

#4
drop table if exists housekeeping;
create table housekeeping ( 
housekeeping_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Домоводство';

insert into housekeeping (name, author, price_rub, non_fiction_literature_id)
values
('Как ухаживать за растениями, чтобы они полюбили тебя', 'Доан, Хардинг', 734, 5),
('Минимализм. Счастье и свобода в простоте!', 'Крийен Жюдит', 296, 5),
('Икебана. Неповторимая естественность', 'Лу, Мацуба', 1253, 5),
('Полный подарок молодым хозяйкам', null, 1332, 5),
('Домоводство', 'Блинов Л. Ф', 2008, 5),
('Зеленый гедонист. Как без лишней суеты спасти планету', 'Шенбург Александр фон', 655, 5),
('Расхламление, или Магическая уборка по-русски', 'Рябова Маруся', 572, 5),
('29 законов ведения экономного хозяйства', 'Огарев Георгий Владимиров', 789, 5),
('Время жить! А не убираться', 'Аарссен Кассандра', 902, 5),
('Жизнь по полочкам. Организуй порядок в голове и доме', 'Мухамедшина Алсу Умаровна', 434, 5);

#5
drop table if exists natural_sciences;
create table natural_sciences ( 
natural_sciences_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Естественные науки';

insert into natural_sciences (name, author, price_rub, non_fiction_literature_id)
values
('Физика. Основы электродинамики', 'Виктор Павел Андреевич', 907, 6),
('Наглядная биохимия', 'Кольман, Рем', 1485, 6),
('Биология. В 3-х томах', 'Тейлор, Грин, Стаут', 3619, 6),
('Разведка далеких планет', 'Сурдин Владимир Георгиевич', 1710, 6),
('Лучшая половина. О генетическом превосходстве женщин', 'Моалем Шарон', 1031, 6),
('Атлантида. Основные проблемы атлантологии', 'Жиров Н. Ф.', 1927, 6),
('И. П. Павлов и его учение об условных рефлексах', 'Фролов Ю. П.', 1734, 6),
('Конечные поля. Том 1-2', 'Лидл, Нидеррайтер', 2811, 6),
('Задачи по физике и методы их решения', 'Балаш В. А.', 1714, 6),
('Механизмы реакций в органической химии', 'Спайкс П.', 1944, 6);

#6
drop table if exists information_techno;
create table information_techno ( 
information_techno_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Информационные технологии';

insert into information_techno (name, author, price_rub, non_fiction_literature_id)
values
('Объектно-ориентированное программирование в С++', 'Лафоре Роберт', 1886, 7),
('Командная строка Linux. Полное руководство', 'Шоттс Уильям', 1966, 7),
('Компьютерные сети', 'Таненбаум, Уэзеролл', 2155, 7),
('Шаблоны и практика глубокого обучения', 'Ферлитш Эндрю', 2406, 7),
('Нанокомпьютерная терминология. Вопросы теории', 'Милуд Мохамед Рашид', 687, 7),
('Численные методы в Mathcad. Учебное пособие', 'Язев, Лукьяненко', 554, 7),
('Биологическое и компьютерное зрение', 'Крейман Гэбриел', 1778, 7),
('Svelte и Sapper в действии', 'Волкманн Марк', 3844, 7),
('Разработка игр и теория развлечений', 'Костер Рэф', 1504, 7),
('Цифровой свет и рендеринг', 'Бирн Джереми', 2325, 7);

#7
drop table if exists history;
create table history ( 
history_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'История. Исторические науки';

insert into history (name, author, price_rub, non_fiction_literature_id)
values
('Истории московских домов, рассказанные их жителями', 'Опарин, Акимов', 1124, 8),
('Истории домов Петербурга, рассказанные их жителями', 'Галкина, Косьмин', 1384, 8),
('История России с древнейших времен', 'Соловьев Сергей Михайлович', 1298, 8),
('Занимательная Греция. Рассказы о древнегреческой культуре', 'Гаспаров Михаил Леонович', 1455, 8),
('Москва и москвичи в эпоху Александра I', null, 2615, 8),
('Живописный Карамзин. Русская история в картинах', null, 1023, 8),
('Неофициальные истории дома Романовых', null, 1023, 8),
('Государь. О военном искусстве', 'Макиавелли Никколо', 577, 8),
('О войне', 'Клаузевиц Карл фон', 353, 8),
('Пираты. Рассказы о знаменитых морских разбойниках', 'Элмс Чарльз', 856, 8);


#8
drop table if exists books_for_parents;
create table books_for_parents ( 
books_for_parents_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Книги для родителей';

insert into books_for_parents (name, author, price_rub, non_fiction_literature_id)
values
('Важные годы. Почему не стоит откладывать жизнь на потом', 'Джей Мэг', 466, 9),
('Отстаньте от ребенка! Простые правила мудрых родителей', 'Мелия Марина', 736, 9),
('Это же любовь! Книга, которая помогает семьям', 'Дмитриева Вика Дмитриевна', 667,9),
('Подростки. Как пережить пубертат', 'Бурмистрова Екатерина Алексеевна', 586, 9),
('Без часов в голове. О детях, которым трудно учиться', 'Ефимова Виктория Леонидовна', 360, 9),
('Канистерапия в реабилитации особенных детей', 'Беккер Исаак Михайлович', 356, 9),
('5 ступеней общения с ребенком', 'Покопцева Татьяна Андреевна', 487, 9),
('Как дать ребенку все без денег и связей', 'Карпачев Дмитрий', 365, 9),
('Пусть мама услышит', 'Никитина Эмма', 742, 9),
('Как любить ребенка', 'Корчак Януш', 662, 9);

#9
drop table if exists collection;
create table collection ( 
collection_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Коллекционирование';

insert into collection (name, author, price_rub, non_fiction_literature_id)
values
('100 великих почтовых марок', 'Обухов Евгений Алексеевич', 510, 10),
('Охотничьи ружья', 'Хартинк А. Е.', 880, 10),
('Символы и ордена Российской империи', null, 1023, 10),
('Похождения Сахиб-Фаранги. Очерки об Индии', 'Попов Андрей', 551, 10),
('Современное оружие', 'Сытин Л.Е.', 1083, 10),
('Охотничье оружие. От Средних веков до ХХ столетия', 'Блэкмор Говард', 880, 10),
('Пистолеты мира', 'Блэр Клод', 953, 10),
('Ордена и медали. Популярный иллюстрированный гид', 'Гусев Игорь Евгеньевич', 694, 10),
('Книга арбалетов. История', 'Пейн-Голлуэй Ральф', 904, 10),
('100 великих монет мира', 'Обухов Евгений Алексеевич', 510, 10);

#10
drop table if exists beauty_and_etiquette;
create table beauty_and_etiquette ( 
beauty_and_etiquette_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Красота. Этикет';

insert into beauty_and_etiquette (name, author, price_rub, non_fiction_literature_id)
values
('Tiffany. Искусство хороших манер за столом', 'Ховинг Уолтер', 554, 11),
('История пантона. XX век в цвете', 'Эйсман, Рекер', 2078, 11),
('Герлен. Загадочная история легендарной семьи парфюмеров', 'де Фейдо Элизабет', 716, 11),
('Волшебники парижской моды', 'Латур Анни', 716, 11),
('Мода и кино. Как фильмы формируют тренды', 'Баштовая Анна Сергеевна', 495, 11),
('Мои шифоновые окопы. Мемуары легенды Vogue', 'Телли Андре Леон', 1013, 11),
('Привет, этикет!', 'Сильванская Юлия Анатольевна', 455, 11),
('Начальные основания нравоучения', 'Мабли', 263, 11),
('Силуэтики наших барышень', 'Граф Бенгальский', 338, 11),
('Секрет аромата. От молекулы до духов', 'Турин Лука', 812, 11);

#11
drop table if exists cooking;
create table cooking ( 
cooking_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Кулинария';

insert into cooking (name, author, price_rub, non_fiction_literature_id)
values
('Выпечка по ГОСТу', 'Чадеева Ирина Валентиновна', 1991, 12),
('Ремесленный хлеб и сдоба на закваске', 'Войнова Ольга Александровна', 1167, 12),
('Пряничная сказка.Тонкости работы с пряничным тестом', 'Пивоварова Нана', 757, 12),
('Книга для записи рецептов на пружине. Душистый шиповник', null, 474, 12),
('Книга для записи рецептов на пружине. Лиловый колокольчик', null, 474, 12),
('Книга для записи рецептов на пружине. Молодые подсолнухи', null, 474, 12),
('Книга для записи рецептов на пружине. Розы желтые и розовые', null, 474, 12),
('Булочки, пироги, пирожные', 'Сави Ида', 2838, 12),
('Есть хорошо! Без голодовок, запретов и стрессов', 'Егорова Анастасия', 1190, 12),
('Пицца. Паста. Лазанья. Ризотто', 'Кривко А. И.', 159, 12);

#12
drop table if exists culture_and_art;
create table culture_and_art ( 
culture_and_art_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Культура. Искусство';

insert into culture_and_art (name, author, price_rub, non_fiction_literature_id)
values
('Eleeza. Магический реализм Элизы Ивановой. Артбук', 'Иванова Элиза', 1286, 13),
('Шедевры мировой оперы', null, 1023, 13),
('Иллюстрированная история танца', null, 1023, 13),
('Императорский Эрмитаж. Собрание живописи', 'Сомов Андрей Иванович', 1023, 13),
('Архип Куинджи. Лучшие картины', 'Астахов А. Ю.', 430, 13),
('Камиль Писсарро. Лучшие картины', null, 430, 13),
('Ренуар. Лучшие картины', null, 430, 13),
('Средневековая магия. Визуальная история ведьм и колдунов', 'Зотов, Харман', 1572, 13),
('Дальневосточная мечта европейских мастеров', 'Винокуров, Будрина', 770, 13),
('Звуковой поток. Звук, искусство и метафизика', 'Кокс Кристоф', 394, 13);

#13
drop table if exists medicine_and_health;
create table medicine_and_health ( 
medicine_and_health_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Медицина и здоровье';

insert into medicine_and_health (name, author, price_rub, non_fiction_literature_id)
values
('Книга Про Зрение для ответственных родителей', 'Бондарь Вадим Андреевич', 211, 14),
('Еда, которая лечит склероз и возвращает память', 'Стрельникова Наталья', 799, 14),
('Еда, которая лечит детские болезни', 'Стрельникова Наталья', 784, 14),
('Тибетские практики борьбы со стрессом', 'Шамбху Алексей', 238, 14),
('Побеждая смерть. Записки первого военного врача', 'Боткин Сергей Петрович', 535, 14),
('Неврология. Клиника, диагностика', null, 640, 14),
('Всем спать! Как наладить сон и улучшить качество жизни', 'Бузунов, Черкасова', 669, 14),
('О смерти человека (введение в танатологию)', 'Шор Г. В.', 1487, 14),
('Физиология дыхания. Основы', 'Уэст Джон Б.', 1695, 14),
('Лечение растениями. Очерки по фитотерапии', 'Ковалева Н. Г.', 3635, 14);

#14
drop table if exists hunting;
create table hunting ( 
hunting_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Охота. Рыбалка. Собирательство';

insert into hunting (name, author, price_rub, non_fiction_literature_id)
values
('Рыбалка. Иллюстрированная энциклопедия', 'Мельников, Сидоров', 740, 15),
('Охота с капканами и самоловами', 'Тихвинский, Силантьев', 152, 15),
('Истории иркутских охотоведов', null, 525, 15),
('Грибы', null, 1037, 15),
('Правила охоты', null, 69, 15),
('Искусство сушить травы. Репринт', 'Ейзен Йоганн Жорж', 197, 15),
('Записки охотника Восточной Сибири 1856-1863 гг.', 'Черкасов А.', 1907, 15),
('Как самому натаскать легавую', 'Петрункевич М. И.', 458, 15),
('Полное руководство ко псовой охоте. (Части 1-3)', 'Губин Петр Михайлович', 1342, 15),
('Охотничье собаководство. Учебник для вузов', 'Семенченко, Засемчук', 1062, 15);


#15
drop table if exists psychology;
create table psychology ( 
psychology_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Психология';

insert into psychology (name, author, price_rub, non_fiction_literature_id)
values
('Подсознание может всё!', 'Кехо Джон', 548, 16),
('Сила подсознания, или Как изменить жизнь за 4 недели', 'Диспенза Джо', 765, 16),
('Охотник за успехом. Как достичь своей цели', null, 753, 16),
('Не психуй! Забей на тревогу', 'Хватков Андрей', 550, 16),
('Бессознательное. Демоны у нас внутри', 'Фрейд Зигмунд', 385, 16),
('Манифест героя нашего времени', 'Шарма Робин', 876, 16),
('Искусство решения проблем', 'Акофф Расселл', 1487, 16),
('Экологический подход к зрительному восприятию', 'Гибсон Дж.', 1838, 16),
('Гроссмейстер общения. Иллюстрированный самоучитель', 'Дерябо Сергей', 1152, 16),
('Речь и мышление ребенка', 'Пиаже Жан', 318, 16);

#16
drop table if exists publicism;
create table publicism ( 
publicism_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Публицистика';

insert into publicism (name, author, price_rub, non_fiction_literature_id)
values
('1984. Скотный двор. Эссе', 'Оруэлл Джордж', 529, 17),
('Вызовите акушерку. Подлинная история Ист-Энда 1950-х годов', 'Уорф Дженнифер', 412, 17),
('Посвящается взрослым', 'Скобер Линн', 575, 17),
('Далай-Лама. Иллюстрированная биография', 'Тензин Гейче Тетхонг', 2145, 17),
('Великие военачальники России', null, 1023, 17),
('Пусть правит любовь. Автобиография Ленни Кравица', 'Кравиц Ленни', 625, 17),
('Дети войны о войне', 'Зиланов, Луговская', 646, 17),
('Мата Хари. Подлинная история легендарной шпионки XX века', null, 393, 17),
('Жизнь для книги. "Издательский король"', null, 380, 17),
('Чудное мгновенье. Дневник музы Пушкина', 'Керн Анна Петровна', 380, 17);

#17
drop table if exists entertainment_holidays;
create table entertainment_holidays ( 
entertainment_holidays_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Развлечения. Праздники';

insert into entertainment_holidays (name, author, price_rub, non_fiction_literature_id)
values
('Раскраска-антистресс "Невероятные драконы"', null, 61, 18),
('Вампиры и их монструозные друзья', 'Андерсен Матильда', 218, 18),
('Мистические таро. Раскраска-антистресс для творчества и вдохновения', null, 226, 18),
('Вдохновение и удовольствие', null, 156, 18),
('Магические узоры', null, 156, 18),
('Счастливые мгновения', null, 156, 18),
('Успех и позитив', null, 156, 18),
('Обольстить логикой. Выводы на все случаи жизни', 'Дрессер Кристоф', 598, 18),
('Раскраска антистресс. На конференции в Zoom', null, 228, 18),
('Сказочные миры', 'Шоу Кристофер', 242, 18);

#18
drop table if exists crop_production;
create table crop_production ( 
crop_production_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Растениеводство';

insert into crop_production (name, author, price_rub, non_fiction_literature_id)
values
('Многокорпусный улей и методы пчеловождения', 'Родионов, Шабаршов', 1810, 19),
('Цветоводство открытого грунта. Учебное пособие для вузов', 'Вьюгина, Вьюгин', 1233, 19),
('Икебана. Неповторимая естественность', 'Лу, Мацуба', 1253, 19),
('Самоучитель пчеловодства', 'Буткевич А. С.', 1424, 19),
('Пчеловодство', 'Рут, Рут', 1315, 19),
('Гидропоника для любителей', null, 1577, 19),
('Новый и совершенный русский садовник', null, 764, 19),
('Советы к улучшению крестьянского хозяйства (репринт)', 'Осадчий Т.', 235, 19),
('Карманная книга сельского и домашнего хозяйства', null, 1578, 19),
('Теплицы и парники. Секреты раннего урожая', 'Тыбель Василий', 455, 19);

#19
drop table if exists constraction;
create table constraction ( 
constraction_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Ремонт. Строительство. Интерьер';

insert into constraction (name, author, price_rub, non_fiction_literature_id)
values
('Домашний текстиль. Шторы, подушки, скатерти и многое другое', 'Арбутнотт Ванесса', 969, 20),
('Утепление и гидроизоляция частного дома и квартиры', 'Котельников В. С.', 254, 20),
('Строим на участке. Дорожки, заборы, ограды и лестницы', 'Разумов Дмитрий', 439, 20),
('Место для жизни. Как создать неидеальный дом, в который вы влюбитесь', 'Смит Майкиллин', 1167, 20),
('Работы по дереву. Лучшие проекты мебели для двора и сада', 'Хилтон Билл', 1407, 20),
('Строим на даче. Души, туалеты, бассейны, канализация и септики', 'Троянский, Калинин', 439, 20),
('Дачные постройки. Бани, сараи, гаражи и теплицы', 'Шаповалов Михаил', 439, 20),
('Строим баню. От идеи до воплощения', 'Демченко, Павлецов', 439, 20),
('Печи и камины на дачном участке', 'Рейзман Илья', 439, 20),
('Гениальный строитель. Lean project delivery', 'Глауберманн Андрей', 492, 20);

#20
drop table if exists technical_science;
create table technical_science ( 
technical_science_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Технические науки';

insert into technical_science (name, author, price_rub, non_fiction_literature_id)
values
('Изучаем Arduino. Руководство для начинающих', 'Аливерти Паоло', 1558, 21),
('Модели поведения бетона. Общая теория деградации', 'Варламов, Римшин', 2340, 21),
('Справочник обувщика', 'Михеева Е. Я.', 1655, 21),
('Ремонт обуви', 'Левигурович Е. И.', 1533, 21),
('Справочник молодого токаря', 'Мукин И. М.', 1904, 21),
('Токарное дело', 'Бруштейн, Дементьев', 1916, 21),
('Инструкция по текущему содержанию железнодорожного пути', null, 1348, 21),
('Бортовое питание. Учебное пособие', 'Артемова, Власова', 983, 21),
('Автомобилизация и дорожное движение', 'Елькин, Андронов', 819, 21),
('Проектирование и эксплуатация нефтебаз и АЗС', 'Шалай, Макушев', 1154, 21);

#21
drop table if exists tourism_and_co;
create table tourism_and_co ( 
tourism_and_co_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Туризм. Путеводители. Транспорт';

insert into tourism_and_co (name, author, price_rub, non_fiction_literature_id)
values
('Тула. География на вкус', 'Ганич Ника', 759, 22),
('Эверест. Смертельное восхождение', 'Букреев, ДеУолт', 561, 22),
('Карта складная: Мир и Россия', null, 107, 22),
('История подводной лодки', null, 1023, 22),
('Камчатка. Современный путеводитель, китайский язык', null, 557, 22),
('Камчатка. Современный путеводитель, японский язык', null, 557, 22),
('Забайкалье. Современный путеводитель, китайский язык', null, 557, 22),
('Калининградская область, с картой', 'Белов Андрей', 299, 22),
('Теория плавания под парусами', 'Мархай Чеслав', 1835, 22),
('Карелия. Кижи, Валаам, Соловки', 'Аксенова Светлана', 467, 22);

#22
drop table if exists encyclopedias;
create table encyclopedias ( 
encyclopedias_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
non_fiction_literature_id int unsigned,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Универсальные энциклопедии';

insert into encyclopedias (name, author, price_rub, non_fiction_literature_id)
values
('Гиннесс. Мировые рекорды 2020', null, 2963, 23),
('Энциклопедия эрудита', null, 594, 23),
('Гиннесс. Мировые рекорды 2022', null, 2963, 23),
('Энциклопедия эрудита. В вопросах и ответах', null, 661, 23),
('Есть идея! Абсурдные научные советы на все случаи жизни', 'Манро Рэндалл', 546, 23),
('Как разгадывать кроссворды. Более 60000 слов', null, 52, 23),
('Мир в цифрах 2020. Карманный справочник', null, 490, 23),
('КСТАТИ. Интересные факты из нашей жизни', null, 694, 23),
('Самые невероятные факты обо всём на свете', 'Бекичева Юлия', 364, 23),
('Книга патриота', null, 759, 23);

#23
drop table if exists animal_care;
create table animal_care ( 
animal_care_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Уход за животными';

insert into animal_care (name, author, price_rub, non_fiction_literature_id)
values
('Динозавры. Полный определитель', 'Пол Грегори С.', 1888, 24),
('Лошади. Самая полная иллюстрированная энциклопедия', null, 1558, 24),
('О чём молчит собака. Как понять и воспитать питомца без жестких методов', 'Кидман Ника', 716, 24),
('Служебное собаководство. Практикум. Учебное пособие', 'Семенченко, Дегтярь', 425, 24),
('Как самому натаскать легавую', 'Петрункевич М. И.', 458, 24),
('Гладь, люби, хвали 3. Нескучная инструкция к щенку', 'Бобкова, Пронина', 785, 24),
('Кормление собак. Учебное пособие', 'Хохрин, Рожков, Лунегова', 1236, 24),
('Собаки. Письма на заметку', null, 245, 24),
('На одном языке с кошкой', 'Клюсовец Елена', 526, 24),
('Большая энциклопедия. Лошади', 'Спектор Анна Артуровна', 1356, 24);

#24
drop table if exists philological_sciences;
create table philological_sciences ( 
philological_sciences_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Филологические науки';

insert into philological_sciences (name, author, price_rub, non_fiction_literature_id)
values
('Магия книги. Эссе о литературе', 'Гессе Герман', 308, 25),
('Десять правил писательства', 'Харрис Джоанн', 518, 25),
('Говори красиво и уверенно. Постановка голоса и речи', 'Шестакова Евгения', 393, 25),
('Жизнь для книги. "Издательский король"', 'Сытин Иван Дмитриевич', 380, 25),
('Цензоры за работой. Как государство формирует литературу', 'Дарнтон Роберт', 620, 25),
('Вторая половина книги', 'Клугер Даниэль', 365, 25),
('Русский без нагрузки', 'Туркова, Андреева', 467, 25),
('Маски Пиковой дамы', 'Елисеева Ольга Игоревна', 800, 25),
('Десять правил писательства', 'Харрис Джоанн', 518, 25),
('Родная речь. Уроки изящной словесности', 'Вайль, Генис', 694, 25);

#25
drop table if exists philosophical_sciences;
create table philosophical_sciences ( 
philosophical_sciences_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Философские науки. Социология';

insert into philosophical_sciences (name, author, price_rub, non_fiction_literature_id)
values
('Пропаганда', 'Бернейс Эдвард', 347, 26),
('Главные мысли', 'Эпикур', 548, 26),
('Государь. О военном искусстве', 'Макиавелли Никколо', 577, 26),
('По ту сторону неба без звёзд. Памяти Гейдара Джемаля', 'Жигалкин Сергей', 1097, 26),
('Философические письма', 'Чаадаев Петр Яковлевич', 800, 26),
('Общие места. Мифология повседневной жизни', 'Бойм Светлана', 451, 26),
('Личностное знание', 'Полани М.', 1672, 26),
('Русская философия. Энциклопедия', 'Апрышко Петр Петрович', 2140, 26),
('Философия науки. Учебное пособие', 'Ивин, Никитина', 506, 26),
('Демография. Учебник', 'Саблуков, Половнев', 550, 26);

#26
drop table if exists fitness_and_co;
create table fitness_and_co ( 
fitness_and_co_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned ,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Фитнес. Спорт. Самооборона';

insert into fitness_and_co (name, author, price_rub, non_fiction_literature_id)
values
('Шахматный блокнот', null, 92, 27),
('IQ в футболе. Как играют умные футболисты', null, 598, 27),
('Хагакурэ. Сокрытое в листве. Кодекс чести cамурая', 'Цунэтомо Ямамото', 501, 27),
('Анатомия упражнений на растяжку', 'Нельсон, Кокконен', 1114, 27),
('Бег ради жизни', 'Гилмор Гарт', 1672, 27),
('Бокс', 'Градополов Константин', 1943, 27),
('Снайпинг и подготовка снайперов к бою', 'Морозов Г. Ф.', 1477, 27),
('Stretch me! Твой путь к здоровому и гибкому телу', 'Завистовская Анастасия', 536, 27),
('Мой маленький блокнот. Йога после родов', 'Яна Эмили', 259, 27),
('Спутник партизана. 1943', null, 1643, 27);

#27
drop table if exists esoterics;
create table esoterics ( 
esoterics_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
non_fiction_literature_id int unsigned,
key index_of_non_fiction_literature (non_fiction_literature_id)
) comment 'Эзотерика. Парапсихология';

insert into esoterics (name, author, price_rub, non_fiction_literature_id)
values
('Трансерфинг реальности. Ступень I: Пространство вариантов', 'Зеланд Вадим', 234, 28),
('Боо и Бон. Древние шаманские традиции Сибири. Кн.1', null, 1750, 28),
('Каббалистическое ТАРО. Г.О.М.', 'Еремян Шаэн', 523, 28),
('Драмы-мистерии', 'Штайнер Рудольф', 470, 28),
('Тайны черной и белой магии', null, 190, 28),
('Медицина и магия Древнего Востока', null, 190, 28),
('Школа рунической магии. Том 1. Основы теории', 'Таро Карина', 5251, 28),
('Клип-трансерфинг. Принципы управления реальностью', 'Зеланд Вадим', 363, 28),
('Оракул любви. Какова моя судьба?', null, 420, 28),
('Астральный помощник в мире минералов и растений', 'Липовский, Бажова', 201, 28);

#-----------------------------------------------------
    # таблица раздела Нехудожественная литература
    #5)
    drop table if exists non_fiction_literature;
    create table non_fiction_literature (
    non_fiction_literature_id int primary key auto_increment,
    name varchar (55),
    null_1 int, 
    book_id int unsigned,
    business_and_economy_id int,
    state_and_law_id int,
    housekeeping_id int,
    home_crafts_id int,
    natural_sciences_id int,
    information_techno_id int,
    history_id int,
    books_for_parents_id int, 
    collection_id int,
    beauty_and_etiquette_id int,
    cooking_id int,
    culture_and_art_id int,
    medicine_and_health_id int,
    hunting_id int,
    psychology_id int,
    publicism_id int,
    entertainment_holidays_id int,
    crop_production_id int,
    constraction_id int,
    technical_science_id int,
    tourism_and_co_id int,
    encyclopedias_id int,
    animal_care_id int,
    philological_sciences_id int,
    philosophical_sciences_id int,
    fitness_and_co_id int,
    esoterics_id int,

    foreign key (business_and_economy_id) references business_and_economy (business_and_economy_id),
    foreign key (state_and_law_id) references state_and_law (state_and_law_id),
    foreign key (housekeeping_id) references housekeeping (housekeeping_id),
    foreign key (home_crafts_id) references home_crafts (home_crafts_id),
    foreign key (natural_sciences_id) references natural_sciences (natural_sciences_id),
    foreign key (information_techno_id) references information_techno (information_techno_id),
    foreign key (history_id) references history (history_id),
    foreign key (books_for_parents_id) references books_for_parents (books_for_parents_id),
    foreign key (collection_id) references collection (collection_id),
    foreign key (beauty_and_etiquette_id) references beauty_and_etiquette (beauty_and_etiquette_id),
    foreign key (cooking_id) references cooking (cooking_id),
    foreign key (culture_and_art_id) references culture_and_art (culture_and_art_id),
    foreign key (medicine_and_health_id) references medicine_and_health (medicine_and_health_id),
    foreign key (hunting_id) references hunting (hunting_id),
    foreign key (psychology_id) references psychology (psychology_id),
    foreign key (publicism_id) references publicism (publicism_id),
    foreign key (entertainment_holidays_id) references entertainment_holidays (entertainment_holidays_id),
    foreign key (crop_production_id) references crop_production (crop_production_id),
    foreign key (constraction_id) references constraction (constraction_id),
    foreign key (technical_science_id) references technical_science (technical_science_id),
    foreign key (tourism_and_co_id) references tourism_and_co (tourism_and_co_id),
    foreign key (encyclopedias_id) references encyclopedias (encyclopedias_id),
    foreign key (animal_care_id) references animal_care (animal_care_id),
    foreign key (philological_sciences_id) references philological_sciences (philological_sciences_id),
    foreign key (philosophical_sciences_id) references philosophical_sciences (philosophical_sciences_id),
    foreign key (fitness_and_co_id) references fitness_and_co (fitness_and_co_id),
    foreign key (esoterics_id) references esoterics (esoterics_id),
    
    key index_of_book_id (book_id)

    ) comment 'Нехудожественная литература';

    insert into non_fiction_literature (name, null_1, book_id)
    values 
    ('Все книги жанра', null, 6),
    ('Бизнес. Экономика', null, 6),
    ('Государство и право. Юриспруденция', null, 6),
    ('Домашние ремесла. Рукоделие', null, 6),
    ('Домоводство', null, 6),
    ('Естественные науки', null, 6),
    ('Информационные технологии', null, 6),
    ('История. Исторические науки', null, 6),
    ('Книги для родителей', null, 6),
    ('Коллекционирование', null, 6),
    ('Красота. Этикет', null, 6),
    ('Кулинария', null, 6),
    ('Культура. Искусство', null, 6),
    ('Медицина и здоровье', null, 6),
    ('Охота. Рыбалка. Собирательство', null, 6),
    ('Психология', null, 6),
    ('Публицистика', null, 6),
    ('Развлечения. Праздники', null, 6),
    ('Растениеводство', null, 6),
    ('Ремонт. Строительство. Интерьер', null, 6),
    ('Технические науки', null, 6),
    ('Туризм. Путеводители. Транспорт', null, 6),
    ('Универсальные энциклопедии', null, 6),
    ('Уход за животными', null, 6),
    ('Филологические науки', null, 6),
    ('Философские науки. Социология', null, 6),
    ('Фитнес. Спорт. Самооборона', null, 6),
    ('Эзотерика. Парапсихология', null, 6);



#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблица из раздела Периодические издания
   
drop table if exists periodicals;
create table periodicals (
periodicals_id int primary key auto_increment,
name varchar (100),
null_1 int,
author varchar (55), 
price_rub bigint,
book_id int unsigned ,
key index_of_book_id (book_id)
) comment 'Периодические издания';

insert into periodicals (name, null_1, author, price_rub, book_id)
values 
('Журнал Иностранноая литература №2. 2022', null, '', 351, 7),
('Журнал Иностранноая литература №3. 2022', null, '', 351, 7),
('Журнал Знамя №3. 2022', null, '', 366, 7),
('Журнал Читаем вместе №4. Апрель 2022', null, '', 146, 7),
('Журнал Книжная индустрия №2 (186). Март 2022', null, '', 344, 7),
('Средние века. Выпуск 82 (4). 2021', null, '', 1507, 7),
('Журнал "Дилетант", 2022. №076 апрель', null, '', 183, 7),
('Охотничьи просторы. Книга первая (95). 2022 год', null, '', 556, 7),
('Журнал Знание-сила. №3. 2022', null, '', 234, 7),
('Журнал Москва. №3. 2022', null, '', 176, 7);

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблицы из раздела Религии

#1
drop table if exists islam;
create table islam ( 
islam_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
religion_id int unsigned,
key index_of_religion_id (religion_id)
) comment 'Ислам';

insert into islam (name, author, price_rub, religion_id)
values
('Световой человек в иранском суфизме', 'Корбен Анри', 469, 2),
('Познание смыслов. Избранные беседы', 'Джемаль Гейдар', 1167, 2),
('Моя первая книга Ду`а', null, 168, 2),
('Молитвы - дуа на все случаи жизни', null, 156, 2),
('Хадисы о почитании родителей', null, 269, 2),
('Коран', null, 2105, 2),
('Уроки имама Ал-Газали. Обращение к Аллаху. О дуа, зикре и вирдах', null, 149, 2),
('Мистицизм в исламе', 'Казанский Константин Константинович', 269, 2),
('Рукийа. Целительные молитвы и чтение Корана как защита от сглаза и колдовства', null, 156, 2),
('Священные тексты религий мира. Коран и другие тексты ислама', null, 210, 2);

#2
drop table if exists worlds_religion;
create table worlds_religion ( 
worlds_religion_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
religion_id int unsigned,
key index_of_religion_id (religion_id)
) comment 'Религии мира';

insert into worlds_religion (name, author, price_rub, religion_id)
values
('Революция внимания. Пробуждение силы сосредоточенного ума', 'Уоллес Ален Б.', 691, 3),
('Там, где страшно. Советы для храбрости в трудные времена', 'Чодрон Пема', 554, 3),
('Дао. Путь воды', 'Уотс Алан', 714, 3),
('Советы Любавичского Ребе', null, 735, 3),
('Будда. История и легенды', 'Томас Эдвард', 684, 3),
('Медитация. С чего начать', 'Ринпоче Бокар', 490, 3),
('Последовательность событий в Библии', 'Шульман Элиэзер', 2576, 3),
('Воззрение жентонг в изложении Джецуна Таранатхи', 'Таранатха Джецун', 522, 3),
('Дух дзен-буддизма', 'Уотс Алан', 669, 3),
('Бхагавад-гита', null, 168, 3);

#3
drop table if exists religious_studies;
create table religious_studies ( 
religious_studies_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
religion_id int unsigned,
key index_of_religion_id (religion_id)
) comment 'Религиоведение';

insert into religious_studies (name, author, price_rub, religion_id)
values
('Писания мужей апостольских', null, 92, 4),
('Святого Дионисия Ареопагита о небесной иерархии', 'Ареопагит Дионисий', 1802, 4),
('Епископ и каноническая территория', 'Приходько Григорий', 254, 4),
('Данте', 'Ганс Урс фон Бальтазар', 401, 4),
('Исследование догматического богослова', 'Толстой Лев Николаевич', 1002, 4),
('Золотая легенда. Собрание христианских преданий', 'Ворагинский Иаков', 979, 4),
('Краткое изложение Евангелия', 'Толстой Лев Николаевич', 922, 4),
('Всеобщая история религий мира', null, 1609, 4),
('Регентское мастерство. Учебное пособие', 'Королева, Григорьева', 440, 4),
('История колдовства', 'Саммерс Монтегю', 564, 4);

#4
drop table if exists christianity;
create table christianity ( 
christianity_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
religion_id int unsigned,
key index_of_religion_id (religion_id)
) comment 'Христианство';

insert into christianity (name, author, price_rub, religion_id)
values
('Пашка и его друзья. Грозовые раскаты. Книга первая', 'Симонов Олег Юрьевич', 511, 5),
('Дневник кающегося. Перечень смертных грехов и стрестей', null, 62, 5),
('Святые покровители мужчин', null, 649, 5),
('Книга. Часть пятая', 'Игумен Рафаил (Симаков)', 670, 5),
('Канон Пресвятой Богородице чтомый женою, погубившею чадо во утробе своей', null, 73, 5),
('Диавол, его нынешние лжечудеса и лжепророки', null, 103, 5),
('Великий пост. День за днем. Душеполезные поучения. Крупный шрифт', null, 214, 5),
('Отречение. Крестный путь Бенедикта XVI', 'Павлов Ричард', 1100, 5),
('Слово о смерти', 'Брянчанинов Игнатий', 810, 5),
('Как люди растут', 'Клауд, Таунсенд', 660, 5);

#------------------------------------------------
  # таблица раздела Религии
   #6)
   drop table if exists religion;
   create table religion (
   religion_id int primary key auto_increment,
   name varchar (55),
   null_1 int,
   book_id int unsigned,
   islam_id int,
   worlds_religion_id int, 
   religious_studies_id int,
   christianity_id int, 
   
   foreign key (islam_id) references islam (islam_id),
   foreign key (worlds_religion_id) references worlds_religion (worlds_religion_id),
   foreign key (religious_studies_id) references religious_studies (religious_studies_id),
   foreign key (christianity_id) references christianity (christianity_id),
   
   key index_of_book_id (book_id)
   ) comment 'Религия';

   insert into religion (name, null_1, book_id)
   values 
   ('Все книги жанра', null, 8),
   ('Ислам', null, 8),
   ('Религии мира', null, 8),
   ('Религиоведение', null, 8),
   ('Христианство', null, 8);

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблицы из раздела Учебная, методическая литература и словари
 
#1
drop table if exists support_for_stud;
create table support_for_stud ( 
support_for_stud_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Вспомогательные материалы для студентов';

insert into support_for_stud (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Квалификационный экзамен на должность нотариуса', 'Беспалов Юрий Федорович', 1553, 2),
('Уверенный выбор профессии', 'Андрющенков С. В.', 1405, 2),
('Современный справочник студента', 'Родин Ю.', 1252, 2),
('Краткий курс по трудовому праву России. Учебное пособие', null, 194, 2),
('Гидравлика. Курс лекций', 'Бабаев М. А.', 652, 2),
('Уверенный выбор профессии', 'Андрющенков С. В.', 1405, 2),
('Супермозг. Лучшие стратегии обучения', 'Шеве, Оакли', 657, 2),
('Конспект лекций по педагогике воспитания', 'Пушкарева Н. В.', 446, 2),
('Конспект лекций по факультетской терапии', 'Кузнецова Ю. В.', 448, 2),
('Образование во Франции', 'Овсянникова Лариса', 646, 2);

#2
drop table if exists demo_materials;
create table demo_materials ( 
demo_materials_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Демонстрационные материалы';

insert into demo_materials (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Таблица умножения (вертикальная)', null, 31, 3),
('Числовые домики. Оформительский и Дидактический набор. 130 картинок', null, 244, 3),
('Все обучающие плакаты по математике. Для начальной школы', 'Узорова, Нефедова', 342, 3),
('Великая Победа. Города-герои. 12 демонстрационных картинок с текстом', null, 161, 3),
('Глаголится. Лото с проверкой. Игровое учебное пособие', null, 701, 3),
('Настольное покрытие для лепки. Начальная школа', null, 272, 3),
('Настольное покрытие для лепки. Юный пешеход', null, 254, 3),
('Тригонометрия. Повторяем математику. Комплект карточек, 60 штук', 'Левитас, Иванова', 427, 3),
('Динозавры. Юрский период. Карта в тубусе', null, 502, 3),
('Карта России для детей', null, 247, 3);

#3
drop table if exists add_educ_for_kids;
create table add_educ_for_kids ( 
add_educ_for_kids_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Дополнительное образование для детей';

insert into add_educ_for_kids (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Сольфеджио. 2 класс. Пятилетний курс обучения. Учебное пособие', 'Варламова, Семченко', 480, 4),
('Английский язык. Занимательная рабочая тетрадь', 'Тарасова Анна Валерьевна', 313, 4),
('Музыкальное конфетти. Сборник фортепианной музыки. 2 класс. Учебно-методическое пособие', null, 418, 4),
('Французские народные песенки', null, 670, 4),
('Шахматы для детей. Увлекательные занятия для начинающих', 'Шульман Борис Яковлевич', 739, 4),
('Набор тетрадей «Основы шахмат и логика», 5-8 лет. 3 тетради', 'Пархоменко С. В.', 1331, 4),
('Я - лидер нового поколения. Методическое пособие', 'Гаврилова, Долина', 498, 4),
('Рабочая тетрадь по сольфеджио. 1 класс. Учебное пособие', 'Пахомова, Рецлаф', 730, 4),
('Прописи для начининающих музыкантов "Ноты без проблем"', 'Амазарян, Даниленко', 365, 4),
('Веселый китайский 1. Начальный этап. Рабочая тетрадь', 'Li Xiaoqi', 1613, 4);

#4
drop table if exists preschool_educ;
create table preschool_educ ( 
preschool_educ_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Дошкольное обучение';

insert into preschool_educ (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Учим буквы', null, 144, 5),
('Учимся считать', null, 144, 5),
('Азбука звуков. Учим звуки и их произношение', 'Молчанова, Кретова', 622, 5),
('Математика. Для детей 4-6 лет', 'Тимофеева, Игнатова', 352, 5),
('Чтение. Для детей 4-6 лет', 'Тимофеева, Игнатова', 352, 5),
('Окружающий мир. Для детей 4-6 лет', 'Тимофеева, Игнатова', 352, 5),
('Письмо. Для детей 4-6 лет', 'Тимофеева, Игнатова', 352, 5),
('Занимательные прописи. Развиваем моторику и мышление', 'Жукова, Лазарева', 435, 5),
('Учимся писать буквы', 'Узорова, Нефёдова', 213, 5),
('Kumon. Вырезаем. Новые приключения', null, 538, 5);

#5
drop table if exists foreign_lang;
create table foreign_lang ( 
foreign_lang_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Иностранные языки: грамматика и учебники';

insert into foreign_lang (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Китайский язык. Тетрадь для записи иероглифов для уровня 2', null, 109, 6),
('Grammarway 1. English Grammar Book', 'Evans, Баранова, Dooley', 707, 6),
('Upstream Elementary A2. Workbook', 'Evans, Dooley', 492, 6),
('Китайский язык. Обучающие прописи', 'Карлова Милена', 195, 6),
('Арабский за 3 месяца. Интенсивный курс', 'Азар Махмуд', 400, 6),
('Чешский язык. 4-в-1', 'Новак Ян', 349, 6),
('Разговорная грамматика с English Spot', 'Бьорн Кристина Сергеевна', 597, 6),
('Руководство к изучению санскрита', 'Миллер В. Ф.', 1815, 6),
('Испанский сленг', 'Оганян Нона Гагиковна', 552, 6),
('Все правила арабского языка', 'Азар Махмуд', 184, 6);

#6
drop table if exists books_for_school;
create table books_for_school ( 
books_for_school_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Книги для школы';

insert into books_for_school (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('География. 7 класс. Контурные карты', null, 105, 7),
('Английский язык. 2 класс. Сборник упражнений. ФГОС', 'Быкова, Поспелова', 280, 7),
('Русский язык. 4 класс. Упражнения, головоломки, ребусы', null, 399, 7),
('Русский язык. 1 класс. Упражнения, головоломки, ребусы', null, 399, 7),
('Английский язык. 10 класс. Многофункциональное учебное пособие с дополненной реальностью', null, 987, 7),
('365+5 заданий по английскому языку. ФГОС', 'Степанов Валерий Юрьевич', 151, 7),
('Русский язык. 3 класс. Мини-задания и тесты на все темы и орфограммы школьного курса', 'Узорова, Нефёдова', 254, 7),
('Адаптивное физическое воспитание лиц с отклонениями в состоянии здоровья', null, 1609, 7),
('Правила по русскому языку. Начальная школа', null, 166, 7),
('Считаем и развиваем логику. 3 класс. ФГОС', 'Горохова Анна Михайловна', 176, 7);

#7
drop table if exists pedagogy;
create table pedagogy ( 
pedagogy_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Педагогика';

insert into pedagogy (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Домашняя тетрадь №7 для закрепления произношения звука Р у детей 5-7 лет', 'Коноваленко, Коноваленко', 94, 8),
('Речевое развитие детей 6-8 лет. Методическое пособие для воспитателей. ФГОС', 'Гризик Татьяна Ивановна', 447, 8),
('Я умею! Пособие для диагностики комплексного развития детей 4–5 лет', null, 250, 8),
('Адаптивное физическое воспитание лиц с отклонениями в состоянии здоровья', null, 1609, 8),
('Чистоговорки. Ззз!', 'Емельянова Ксения', 192, 8),
('Чистоговорки. Ррр!', 'Куприянова Ирина', 192, 8),
('Чистоговорки. Ффф!', 'Емельянова Ксения', 192, 8),
('Чистоговорки. Шшш!', 'Куприянова Ирина', 192, 8),
('Денверская модель раннего вмешательства для детей с аутизмом', 'Роджерс, Доусон, Висмара', 748, 8),
('Психологическая культура детства', 'Коломинский, Стрелкова', 372, 8);

#8
drop table if exists uni_preparation;
create table uni_preparation ( 
uni_preparation_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Подготовка в вуз';

insert into uni_preparation (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Уверенный выбор профессии', 'Андрющенков С. В.', 1405, 9),
('Физика. Молекулярное строение вещества и тепловые явления', 'Виктор Павел Андреевич', 856, 9),
('Начала химии. Для поступающих в вузы', 'Кузьменко, Попков, Еремин', 1399, 9),
('Физика. Основы и механическое движение. Просто и понятно о фундаментальной науке', 'Виктор Павел Андреевич', 856, 9),
('Сборник задач по химии для поступающих в вузы', 'Хомченко, Хомченко', 260, 9),
('Репетитор по химии', 'Егоров, Шацкая, Иванченко', 668, 9),
('Биология для поступающих в вузы', 'Билич, Крыжановский', 836, 9),
('Биология. В 3-х томах', 'Тейлор, Грин, Стаут', 3619, 9),
('Физика в примерах и задачах', 'Бутиков, Быков, Кондратьев', 358, 9),
('Математика. Пособие для поступающих в вузы', 'Шабунин Михаил Иванович', 870, 9);

#9
drop table if exists benefits_for_disabled_kids;
create table benefits_for_disabled_kids ( 
benefits_for_disabled_kids_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Пособия для детей с ограниченными возможностями';

insert into benefits_for_disabled_kids (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Особые дети. Введение в прикладной анализ поведения (АВА)', 'Мелешкевич, Эрц', 499, 10),
('Математика. 4 класс. Рабочая тетрадь. В 2-х частях. Адаптированные программы. ФГОС ОВЗ', 'Перова, Яковлева', 595, 10),
('Примерные рабочие программы для обучающихся с РАС. Вариант 8.2. 1 и 1 дополнительный кл. ФГОС ОВЗ', null, 1080, 10),
('Музыка. 4 класс. Учебное пособие. Адаптированные программы. ФГОС ОВЗ', 'Евтушенко, Чернышкова', 1193, 10),
('Математика. 8 класс. Учебник. Адаптированные программы. ФГОС ОВЗ', 'Эк Валентина Васильевна', 1044, 10),
('Дисграфия. Учусь различать звуки. 1-4 классы. ФГОС', 'Суслова, Мальм', 182, 10),
('Русский язык. Состав слова. 5-9 классы. Рабочая тетрадь 1. ФГОС ОВЗ', 'Галунчикова, Якубовская', 651, 10),
('Чтение. 3 класс. Учебник. Адаптированные программы. В 2-х частях. ФГОС ОВЗ', 'Ильина, Богданова', 1574, 10),
('Математика. 6 класс. Рабочая тетрадь. Адаптированные программы. ФГОС ОВЗ', 'Перова, Яковлева', 489, 10),
('Произношение. 1 класс. Учебник. В 2-х частях. Адаптированные программы. ФГОС ОВЗ', 'Пфафенродт, Кочанова', 2471, 10);

#10
drop table if exists dictionaries;
create table dictionaries ( 
dictionaries_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
txtbooks_and_dictionaries_id int unsigned,
key index_of_txtbooks_and_dictionaries_id (txtbooks_and_dictionaries_id)
) comment 'Словари и разговорники';

insert into dictionaries (name, author, price_rub, txtbooks_and_dictionaries_id)
values
('Большой фразеологический словарь для детей', 'Розе Татьяна Владиславовна', 889, 11),
('Compact Oxford Russian-English Dictionary', null, 886, 11),
('Новый англо-русский и русско-английский словарь для школьников: свыше 25000 слов и словосочетаний', null, 363, 11),
('Арабско-русский русско-арабский словарь', null, 153, 11),
('Иврит. 4-в-1. Грамматика, разговорник, русско-ивритский словарь, тематический словарь', 'Аксенова, Лерер', 349, 11),
('Англо-Русский словарь с грамматическим приложением', 'Сидорова Ирина Вадимовна', 301, 11),
('French-English Bilingual Visual Dictionary with Free Audio App', null, 811, 11),
('Немецкий язык. 4-в-1. Грамматика, разговорник, немецко-русский словарь, русско-немецкий словарь', null, 369, 11),
('Архангельский областной словарь. Выпуск 22. Зга-зяять', null, 1173, 11),
('Большой академический словарь русского языка. Том 27. Сома-Стоящий', null, 2419, 11);
#------------------------------------------
  # таблица раздела Учебная, методическая литература и словари
  
  #7
  drop table if exists txtbooks_and_dictionaries;
  create table txtbooks_and_dictionaries (
  txtbooks_and_dictionaries_id int primary key auto_increment,
  name varchar (55),
  null_1 int,
  book_id int unsigned,
  support_for_stud_id int,
  demo_materials_id int,
  add_educ_for_kids_id int,
  preschool_educ_id int,
  foreign_lang_id int,
  books_for_school_id int,
  pedagogy_id int,
  uni_preparation_id int,
  benefits_for_disabled_kids_id int,
  dictionaries_id int,
  
  foreign key (support_for_stud_id) references support_for_stud (support_for_stud_id),
  foreign key (demo_materials_id) references demo_materials (demo_materials_id),
  foreign key (add_educ_for_kids_id) references add_educ_for_kids (add_educ_for_kids_id),
  foreign key (preschool_educ_id) references preschool_educ (preschool_educ_id),
  foreign key (foreign_lang_id) references foreign_lang (foreign_lang_id),
  foreign key (books_for_school_id) references books_for_school (books_for_school_id),
  foreign key (pedagogy_id) references pedagogy (pedagogy_id),
  foreign key (uni_preparation_id) references uni_preparation (uni_preparation_id),
  foreign key (benefits_for_disabled_kids_id) references benefits_for_disabled_kids (benefits_for_disabled_kids_id),
  foreign key (dictionaries_id) references dictionaries (dictionaries_id),
  
  key index_of_book_id (book_id)
  ) comment 'Учебная, методическая литература и словари';

  insert into txtbooks_and_dictionaries (name, null_1, book_id)
  values 
  ('Все книги жанра', null, 9),
  ('Вспомогательные материалы для студентов', null, 9),
  ('Демонстрационные материалы', null, 9),
  ('Дополнительное образование для детей', null, 9),
  ('Дошкольное обучение', null, 9),
  ('Иностранные языки: грамматика и учебники', null, 9),
  ('Книги для школы', null, 9),
  ('Педагогика', null, 9),
  ('Подготовка в вуз', null, 9),
  ('Пособия для детей с ограниченными возможностями', null, 9),
  ('Словари и разговорники', null, 9);
 
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблицы из раздела Художественная литература
 
#1
drop table if exists aphorisms;
create table aphorisms ( 
aphorisms_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Афоризмы';

insert into aphorisms (name, author, price_rub, fictional_books_id)
values
('Всемирное остроумие', null, 433, 2),
('Мысли мудрых людей на каждый день', 'Толстой Лев Николаевич', 136, 2),
('Книга успешного руководителя', null, 1023, 2),
('100 и 1 цитата. Карл Маркс', 'Маркс Карл', 269, 2),
('Лев Толстой о величии души человеческой. Путь Огня', null, 807, 2),
('Коротко о важном', null, 549, 2),
('Полное собрание сочинений', 'Прутков Козьма', 980, 2),
('Законы Паркинсона. Сборник', 'Паркинсон Сирил Норткот', 1824, 2),
('Из античной мудрости. Латинские пословицы и поговорки с русскими соответствиями', null, 460, 2),
('Совершенство духа. Мысли и афоризмы', 'Сенека Луций Анней', 250, 2);

#2
drop table if exists fables;
create table fables ( 
fables_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Басни';

insert into fables (name, author, price_rub, fictional_books_id)
values
('Басни', 'Крылов Иван Андреевич', 340, 3),
('Лучшие басни мира', 'Эзоп, Крылов, Лафонтен', 905, 3),
('Басни. Жизнеописание Эзопа', 'Эзоп', 127, 3),
('Басни Ивана Крылова', 'Крылов Иван Андреевич', 904, 3),
('Басни', 'Горшков Игорь', 280, 3),
('Родился, рос, мечтал, желал. Басни, стихи', 'Понкратова Елена', 95, 3),
('Вечные истины. Басни', 'Гордышевский Семен Михайлович', 264, 3),
('Леонардо да Винчи. Взгляд сквозь столетия. Басни и притчи', 'Гордышевский Семен Михайлович', 198, 3),
('Харьковские басни. Афоризмы', 'Сковорода Григорий Саввич', 204, 3),
('Басни, иронические стихотворения', 'Гарда', 142, 3);

#3
drop table if exists detectives;
create table detectives ( 
detectives_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Детективы';

insert into detectives (name, author, price_rub, fictional_books_id)
values
('Фейтфул-Плейс', 'Френч Тана', 1069, 4),
('Мы начинаем в конце', 'Уитакер Крис', 784, 4),
('Маленькая черная ложь', 'Болтон Шэрон', 637, 4),
('Хорошая дочь', 'Слотер Карин', 637, 4),
('Смерть на Ниле', 'Кристи Агата', 255, 4),
('Менталист', 'Лэкберг Камилла', 635, 4),
('Арсен Люпен. Сборник', 'Леблан Морис', 228, 4),
('Билли Саммерс', 'Кинг Стивен', 1165, 4),
('Голубая кровь', 'Носова Диана', 657, 4),
('Подражатель', 'Коул Дэниел', 649, 4);

#4
drop table if exists dramaturgy;
create table dramaturgy ( 
dramaturgy_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int, 
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Драматургия';

insert into dramaturgy (name, author, price_rub, fictional_books_id)
values
('Илиада', 'Гомер', 247, 5),
('В ожидании Годо', 'Беккет Сэмюэль', 442, 5),
('Женитьба', 'Гоголь Николай Васильевич', 612, 5),
('Живой труп', 'Толстой Лев Николаевич', 626, 5),
('Мещанин во дворянстве и другие пьесы', 'Мольер Жан Батист', 353, 5),
('Вишневый сад. Пьесы', 'Чехов Антон Павлович', 183, 5),
('Ревизор', 'Гоголь Николай Васильевич', 201, 5),
('Ромео и Джульетта', 'Шекспир Уильям', 216, 5),
('Зори', 'Верхарн Эмиль', 505, 5),
('Макбет. Трагедия', 'Шекспир Уильям', 127, 5);

#5
drop table if exists historical_prose;
create table historical_prose ( 
historical_prose_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Историческая проза';

insert into historical_prose (name, author, price_rub, fictional_books_id)
values
('Эспер. Франция 1917 г. Тайна старинной открытки', 'Дюбург Людмила', 1306, 6),
('Девушка с голубой звездой', 'Дженофф Пэм', 714, 6),
('Седмица Трехглазого', 'Акунин Борис', 447, 6),
('Один среди «тигров»', 'Зверев Сергей Иванович', 213, 6),
('Письма из Лондона', 'Робсон Дженнифер', 736, 6),
('Белая королева', 'Грегори Филиппа', 416, 6),
('Король на краю света', 'Филлипс Артур', 804, 6),
('Венский вальс, или Игра по нотам', 'Азаров', 430, 6),
('Аты-баты, шли солдаты. Повести', 'Васильев Борис Львович', 401,6),
('Смерть императора', 'Старшинов Александр', 301, 6);

#6
drop table if exists classical_prose;
create table classical_prose ( 
classical_prose_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Классическая проза';

insert into classical_prose (name, author, price_rub, fictional_books_id)
values
('Отчаянные характеры', 'Фокс Пола', 349, 7),
('Пейзаж с ивами', 'Гулик Роберт ван', 361, 7),
('О дивный новый мир', 'Хаксли Олдос', 310, 7),
('Портрет Дориана Грея. Иллюстрированное издание', 'Уайльд Оскар', 867, 7),
('Хорошие жены', 'Олкотт Луиза Мэй', 637, 7),
('Корабль привидений и другие истории', 'Гауф Вильгельм', 228, 7),
('1984. Дни в Бирме. Романы', 'Оруэлл Джордж', 819, 7),
('Лисьи чары. Рассказы', 'Пу Сунлин', 541, 7),
('Приключения Гекльберри Финна', 'Твен Марк', 711, 7),
('Маленькие женщины. Хорошие жены', 'Олкотт Луиза Мэй', 329, 7);

#7
drop table if exists domestic_militant;
create table domestic_militant ( 
domestic_militant_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Отечественный боевик';

insert into domestic_militant (name, author, price_rub, fictional_books_id)
values
('Американский гамбит', 'Ильин Андрей Александрович', 481, 8),
('Горная петля', 'Самаров Сергей Васильевич', 238, 8),
('Один среди «тигров»', 'Зверев Сергей Иванович', 213, 8),
('Сценарий убийства', 'Шувалов Александр', 183, 8),
('Правила выживания в Джакарте', 'Цимеринг, Багрий', 840, 8),
('Книга, запрещенная на территории Великого Государства', 'Крамолл Шон', 599, 8),
('Подрывник', 'Смирнов Николай', 446, 8),
('Стальной узел', 'Зверев Сергей Иванович', 538, 8),
('Сирийский капкан', 'Погосов, Давтян', 447, 8),
('Войны посейдона', 'Калиткин Николай', 1225, 8);

#8
drop table if exists poetry;
create table poetry ( 
poetry_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned, 
key index_of_fictional_books_id (fictional_books_id)
) comment 'Поэзия';

insert into poetry (name, author, price_rub, fictional_books_id)
values
('Полное собрание сочинений в одном томе', 'Лермонтов Михаил Юрьевич', 649, 9),
('Лирика', 'Монова Сола', 436, 9),
('Рубайат', null, 1023, 9),
('Песни Невинности и Опыта', 'Блейк Уильям', 526, 9),
('Простейшие слова. Стихотворения', 'Ширали Виктор Гейдарович', 817, 9),
('Я есть Маша. Сборник', 'Любичева Мария Сергеевна', 465, 9),
('Стихотворения', 'Слуцкий Борис Абрамович', 369, 9),
('Стишки исподтишка', 'Розовский Марк Григорьевич', 396, 9),
('Верлибры', 'Газизова Лилия Рифкатовна', 55, 9),
('Время быть', 'Лещук Дмитрий Валерьевич', 220, 9);

#9
drop table if exists adventure;
create table adventure ( 
adventure_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Приключения';

insert into adventure (name, author, price_rub, fictional_books_id)
values
('Север против Юга', 'Верн Жюль', 457, 10),
('Двадцать тысяч лье под водой', 'Верн Жюль', 436, 10),
('Граф Монте-Кристо. Полное иллюстрированное издание в одном томе', 'Дюма Александр', 865, 10),
('Нескучная история. Книга вторая', 'Рей Евгений Г.', 647, 10),
('Вокруг света за 80 дней', 'Верн Жюль', 201, 10),
('Путешествие к центру Земли', 'Верн Жюль', 343, 10),
('Лорд Джим', 'Конрад Джозеф', 434, 10),
('Плавучий остров', 'Верн Жюль', 1375, 10),
('Письмо и пуля', 'Майн Рид Томас', 403, 10),
('Железная пята', 'Лондон Джек', 1631, 10);

#10
drop table if exists sentimental_prose;
create table sentimental_prose ( 
sentimental_prose_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Сентиментальная проза';

insert into sentimental_prose (name, author, price_rub, fictional_books_id)
values
('Девушка из песни', 'Скотт Эмма', 617, 11),
('Полуночная роза', 'Райли Люсинда', 615, 11),
('Бездушный', 'Шэн Л. Дж.', 554, 11),
('Среди тысячи слов', 'Скотт Эмма', 617, 11),
('Хочу познакомиться', 'Уинтерс Рэйчел', 789, 11),
('Вы дозвонились до Сэма', 'Тао Дастин', 533, 11),
('Колыбельная звезд', 'Уайт Карен', 667, 11),
('Вкус свежей малины', 'Сова Изабеля', 641, 11),
('А мне говорят "живи"', 'Арутюнян Лусине', 279, 11),
('Любовь с чистого листа', 'Клейборн Кейт', 561, 11);

#11
drop table if exists modern_prose;
create table modern_prose ( 
modern_prose_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Современная проза';

insert into modern_prose (name, author, price_rub, fictional_books_id)
values
('Братья Карилло. Обретая надежду', 'Коул Тилли', 567, 12),
('Караваль', 'Гарбер Стефани', 765, 12),
('Вторая жизнь Уве', 'Бакман Фредрик', 632, 12),
('Снова почувствуй', 'Кастен Мона', 667, 12),
('На солнечной стороне улицы', 'Рубина Дина Ильинична', 686, 12),
('Мертвая голова', 'Грэмм Амелия', 565, 12),
('В субботу, когда была гроза', 'Глазер Мартине', 302, 12),
('Менталист', 'Лэкберг Камилла', 635, 12),
('Я учусь в Бикелови! Академия магии', 'Генер Марго', 586, 12),
('Белые волки. Книга 2', 'Коулл Вергилия', 1108, 12);

#12
drop table if exists fantastic_tales;
create table fantastic_tales ( 
fantastic_tales_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Фантастика';

insert into fantastic_tales (name, author, price_rub, fictional_books_id)
values
('Достойный высший суд', 'Арден Лия', 567, 13),
('Пять ночей у Фредди. Четвёртый шкаф', 'Коутон, Брид-Райсли', 538, 13),
('Оттепель не наступит', 'Пац Даша', 1247, 13),
('Дикари. Дети хаоса', 'Гифьюн Грег Ф.', 888, 13),
('Странствующий Цирк Вампиров', 'Лаймон Ричард', 948, 13),
('Дракула', 'Стокер Брэм', 320, 13),
('1984. Скотный двор', 'Оруэлл Джордж', 382, 13),
('Рога', 'Хилл Джо', 617, 13),
('Оцепеневшие', 'Варго, Барр', 561, 13),
('Монах и дочь палача', 'Бирс Амброз', 831, 13);

#13
drop table if exists fantasy;
create table fantasy ( 
fantasy_id int primary key auto_increment,
name varchar (100),
author varchar (100),
price_rub int,
fictional_books_id int unsigned,
key index_of_fictional_books_id (fictional_books_id)
) comment 'Фэнтези';

insert into fantasy (name, author, price_rub, fictional_books_id)
values
('Дом в лазурном море', 'Клун Ти Джей', 716, 14),
('Злой король', 'Блэк Холли', 617, 14),
('Шолох. Призрачные рощи', 'Крейн Антонина', 591, 14),
('Ментор черного паука', 'Малкина Нина', 1846, 14),
('Песня стихий', 'Борисов Евгений', 1408, 14),
('Песнь Сорокопута', 'Кель Фрэнсис', 617, 14),
('Чернила и кость', 'Кейн Рейчел', 617, 14),
('За Танцующим туманом', 'Диппель Юлия', 607, 14),
('Зов костяных кораблей', 'Баркер Р. Дж.', 716, 14),
('Оллвард. Разрушитель миров', 'Авеярд Виктория', 785, 14);

#----------------------------------------------------
   #8
   drop table if exists fictional_books;
   create table fictional_books (
   fictional_books_id int primary key auto_increment,
   name varchar (55),
   null_1 int,
   book_id int unsigned,
   aphorisms_id int,
   fables_id int,
   detectives_id int,
   dramaturgy_id int,
   historical_prose_id int,
   classical_prose_id int,
   domestic_militant_id int,
   poetry_id int,
   adventure_id int,
   sentimental_prose_id int, 
   modern_prose_id int,
   fantastic_tales_id int,
   fantasy_id int,
   
   foreign key (aphorisms_id) references aphorisms (aphorisms_id),
   foreign key (fables_id) references fables (fables_id),
   foreign key (detectives_id) references detectives (detectives_id),
   foreign key (dramaturgy_id) references dramaturgy (dramaturgy_id),
   foreign key (historical_prose_id) references historical_prose(historical_prose_id),
   foreign key (classical_prose_id) references classical_prose (classical_prose_id),
   foreign key (domestic_militant_id) references domestic_militant (domestic_militant_id),
   foreign key (poetry_id) references poetry (poetry_id),
   foreign key (adventure_id) references adventure (adventure_id),
   foreign key (sentimental_prose_id) references sentimental_prose (sentimental_prose_id),
   foreign key (modern_prose_id) references modern_prose (modern_prose_id),
   foreign key (fantastic_tales_id) references fantastic_tales (fantastic_tales_id),
   foreign key (fantasy_id) references fantasy (fantasy_id),
   
   key index_of_book_id (book_id)
   ) comment 'Художественная литература';

   insert into fictional_books (name, null_1, book_id)
   values
   ('Все книги жанра', null, 10),
   ('Афоризмы', null, 10),
   ('Басни', null, 10),
   ('Детективы', null, 10),
   ('Драматургия', null, 10),
   ('Историческая проза', null, 10),
   ('Классическая проза', null, 10),
   ('Отечественный боевик', null, 10),
   ('Поэзия', null, 10),
   ('Приключения', null, 10),
   ('Сентиментальная проза', null, 10),
   ('Современная проза', null, 10),
   ('Фантастика', null, 10),
   ('Фэнтези', null, 10);
 
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# таблица раздела меню
  
create table books (
book_id int PRIMARY key auto_increment,
sections varchar(55) comment 'разделы',
bilingual_book_id int,
books_for_kids_id INT,
comics_manga_artbk_id INT,
youth_literature_id INT,
non_fiction_literature_id INT, 
periodicals_id int,
religion_id int,
txtbooks_and_dictionaries_id int, 
fictional_books_id int,

foreign key (bilingual_book_id) references bilingual_books (bilingual_book_id),
foreign key (books_for_kids_id) references books_for_kids (books_for_kids_id),
foreign key (comics_manga_artbk_id) references comics_manga_artbk (comics_manga_artbk_id),
FOREIGN key (youth_literature_id) references youth_literature (youth_literature_id),
foreign key (non_fiction_literature_id) references non_fiction_literature (non_fiction_literature_id),
foreign key (periodicals_id) references periodicals (periodicals_id),
foreign key (religion_id) references religion (religion_id),
foreign key (txtbooks_and_dictionaries_id) references txtbooks_and_dictionaries (txtbooks_and_dictionaries_id),
foreign key (fictional_books_id) references fictional_books (fictional_books_id)


) comment 'Книги';

insert into books (sections)
values
('Все книги'),
('Билингвы и книги на иностранных языках'),
('Книги для детей'),
('Комиксы, манги, артбуки'),
('Молодежная литература'),
('Нехудожественная литература'),
('Периодические издания'),
('Религия'),
('Учебная, методическая литература и словари'),
('Художественная литература');

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
/*
 *                  ПРОЦЕДУРЫ
 */
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
DELIMITER // 

# Книги
CREATE PROCEDURE  books () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select books.sections as 'Разделы', bilingual_books.name as 'Жанры', bilingual_books.null_1 as 'Название'
from books join bilingual_books
on books.book_id = bilingual_books.book_id
union 
select books.sections, books_for_kids.name, books_for_kids.null_1
from books join books_for_kids
on books.book_id = books_for_kids.book_id
union 
select books.sections, comics_manga_artbk.name, comics_manga_artbk.null_1
from books join comics_manga_artbk
on books.book_id = comics_manga_artbk.book_id
union 
select books.sections, youth_literature.null_1, youth_literature.name
from books join youth_literature
on books.book_id = youth_literature.book_id
union 
select books.sections, non_fiction_literature.name, non_fiction_literature.null_1
from books join non_fiction_literature
on books.book_id = non_fiction_literature.book_id
union 
select books.sections, periodicals.null_1, periodicals.name
from books join periodicals
on books.book_id = periodicals.book_id
union 
select books.sections, religion.name, religion.null_1
from books join religion
on books.book_id = religion.book_id
union 
select books.sections, txtbooks_and_dictionaries.name, txtbooks_and_dictionaries.null_1
from books join txtbooks_and_dictionaries
on books.book_id = txtbooks_and_dictionaries.book_id
union 
select books.sections, fictional_books.name, fictional_books.null_1
from books join fictional_books
on books.book_id = fictional_books.book_id;

end //
#-------------------------------------------

CREATE PROCEDURE  bilingual_books () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select bilingual_books.name as 'Разделы', bilingual.languages as 'Подразделы', bilingual.null_1 as 'Название', bilingual.null_2 as 'Авторы', bilingual.null_3 as 'Цена в руб'
from bilingual_books join bilingual 
on bilingual_books.bilingual_book_id = bilingual.bilingual_book_id
union 
select bilingual_books.name, lit_on_a_foreign_lang.null_1, lit_on_a_foreign_lang.name, lit_on_a_foreign_lang.author, lit_on_a_foreign_lang.price_rub
from bilingual_books join lit_on_a_foreign_lang 
on bilingual_books.bilingual_book_id = lit_on_a_foreign_lang.bilingual_book_id
union 
select bilingual_books.name, lit_on_a_foreign_lang_for_kids.null_1, lit_on_a_foreign_lang_for_kids.name, lit_on_a_foreign_lang_for_kids.author, lit_on_a_foreign_lang_for_kids.price_rub
from bilingual_books join lit_on_a_foreign_lang_for_kids  
on bilingual_books.bilingual_book_id = lit_on_a_foreign_lang_for_kids.bilingual_book_id;

END//
   

# -----------------------------------------------------------------------
CREATE PROCEDURE bilingual () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
    select bilingual.languages as 'Разделы', english_lang.name as 'Название', english_lang.author as 'Автор', english_lang.price_rub as 'Цена в руб.'
from bilingual join english_lang 
on bilingual.bilingual_id = english_lang.bilingual_id
union
select bilingual.languages, other_lang.name, other_lang.author, other_lang.price_rub
from bilingual join other_lang 
on bilingual.bilingual_id = other_lang.bilingual_id
union 
select bilingual.languages, spanish_lang.name, spanish_lang.author, spanish_lang.price_rub
from bilingual join spanish_lang 
on bilingual.bilingual_id = spanish_lang.bilingual_id
union 
select bilingual.languages, italian_lang.name, italian_lang.author, italian_lang.price_rub
from bilingual join italian_lang 
on bilingual.bilingual_id = italian_lang.bilingual_id
union 
select bilingual.languages, german_lang.name, german_lang.author, german_lang.price_rub
from bilingual join german_lang 
on bilingual.bilingual_id = german_lang.bilingual_id
union 
select bilingual.languages, french_lang.name, french_lang.author, french_lang.price_rub
from bilingual join french_lang 
on bilingual.bilingual_id = french_lang.bilingual_id; 

END//

#-----------------------------------------------------------

CREATE PROCEDURE books_for_kids () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select books_for_kids.name as 'Жанр', childrens_fiction.name as 'Название', childrens_fiction.author as 'Автор', childrens_fiction.price_rub as 'Цена в руб'
from books_for_kids  join childrens_fiction  
on books_for_kids.books_for_kids_id  = childrens_fiction.books_for_kids_id
union 
select books_for_kids.name, childrens_leisure.name, childrens_leisure.author, childrens_leisure.price_rub
from books_for_kids  join childrens_leisure  
on books_for_kids.books_for_kids_id  = childrens_leisure.books_for_kids_id
union 
select books_for_kids.name, child_development.name, child_development.author, child_development.price_rub
from books_for_kids  join child_development  
on books_for_kids.books_for_kids_id  = child_development.books_for_kids_id
union 
select books_for_kids.name, educ_lit_for_kids.name, educ_lit_for_kids.author, educ_lit_for_kids.price_rub
from books_for_kids  join educ_lit_for_kids  
on books_for_kids.books_for_kids_id  = educ_lit_for_kids.books_for_kids_id; 

END//

#------------------------------------------------------------

CREATE PROCEDURE comics_manga_artbk () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select comics_manga_artbk.name as 'Жанр', artbooks_and_co.name as 'Название', artbooks_and_co.author as 'Автор', artbooks_and_co.price_rub as 'Цена в руб'
from comics_manga_artbk join artbooks_and_co  
on comics_manga_artbk.comics_manga_artbk_id  = artbooks_and_co.comics_manga_artbk_id
union 
select comics_manga_artbk.name, comics.name, comics.author, comics.price_rub
from comics_manga_artbk join comics  
on comics_manga_artbk.comics_manga_artbk_id  = comics.comics_manga_artbk_id
union 
select comics_manga_artbk.name, comics_for_kids.name, comics_for_kids.author, comics_for_kids.price_rub
from comics_manga_artbk join comics_for_kids  
on comics_manga_artbk.comics_manga_artbk_id  = comics_for_kids.comics_manga_artbk_id
union 
select comics_manga_artbk.name, manga.name, manga.author, manga.price_rub
from comics_manga_artbk join manga  
on comics_manga_artbk.comics_manga_artbk_id  = manga.comics_manga_artbk_id
union 
select comics_manga_artbk.name, novelizations.name, novelizations.author, novelizations.price_rub
from comics_manga_artbk join novelizations  
on comics_manga_artbk.comics_manga_artbk_id  = novelizations.comics_manga_artbk_id
union 
select comics_manga_artbk.name, educational_comics.name, educational_comics.author, educational_comics.price_rub
from comics_manga_artbk join educational_comics  
on comics_manga_artbk.comics_manga_artbk_id  = educational_comics.comics_manga_artbk_id
union 
select comics_manga_artbk.name, fan_souvenirs.name, fan_souvenirs.author, fan_souvenirs.price_rub
from comics_manga_artbk join fan_souvenirs  
on comics_manga_artbk.comics_manga_artbk_id  = fan_souvenirs.comics_manga_artbk_id; 

END//

#---------------------------------------------------
CREATE PROCEDURE youth_literature () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select books.sections as 'Жанр', youth_literature.name as 'Название', youth_literature.author as 'Автор', youth_literature.price_rub as 'Цена в руб'
from books join youth_literature  
on books.book_id  = youth_literature.book_id; 
END//

#--------------------------------------------------


CREATE PROCEDURE non_fiction_literature () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select non_fiction_literature.name as 'Жанр', business_and_economy.name as 'Название', business_and_economy.author as 'Автор', business_and_economy.price_rub as 'Цена в руб'
from non_fiction_literature  join business_and_economy  
on non_fiction_literature.non_fiction_literature_id = business_and_economy.non_fiction_literature_id
union 
select non_fiction_literature.name, state_and_law.name, state_and_law.author, state_and_law.price_rub
from non_fiction_literature  join state_and_law  
on non_fiction_literature.non_fiction_literature_id = state_and_law.non_fiction_literature_id
union 
select non_fiction_literature.name, home_crafts.name, home_crafts.author, home_crafts.price_rub
from non_fiction_literature  join home_crafts  
on non_fiction_literature.non_fiction_literature_id = home_crafts.non_fiction_literature_id
union 
select non_fiction_literature.name, housekeeping.name, housekeeping.author, housekeeping.price_rub
from non_fiction_literature  join housekeeping  
on non_fiction_literature.non_fiction_literature_id = housekeeping.non_fiction_literature_id
union 
select non_fiction_literature.name, natural_sciences.name, natural_sciences.author, natural_sciences.price_rub
from non_fiction_literature  join natural_sciences 
on non_fiction_literature.non_fiction_literature_id = natural_sciences.non_fiction_literature_id
union 
select non_fiction_literature.name, information_techno.name, information_techno.author, information_techno.price_rub
from non_fiction_literature  join information_techno  
on non_fiction_literature.non_fiction_literature_id = information_techno.non_fiction_literature_id
union 
select non_fiction_literature.name, history.name, history.author, history.price_rub
from non_fiction_literature  join history  
on non_fiction_literature.non_fiction_literature_id = history.non_fiction_literature_id
union 
select non_fiction_literature.name, books_for_parents.name, books_for_parents.author, books_for_parents.price_rub
from non_fiction_literature  join books_for_parents  
on non_fiction_literature.non_fiction_literature_id = books_for_parents.non_fiction_literature_id
union 
select non_fiction_literature.name, collection.name, collection.author, collection.price_rub
from non_fiction_literature  join collection  
on non_fiction_literature.non_fiction_literature_id = collection.non_fiction_literature_id
union 
select non_fiction_literature.name, beauty_and_etiquette.name, beauty_and_etiquette.author, beauty_and_etiquette.price_rub
from non_fiction_literature  join beauty_and_etiquette  
on non_fiction_literature.non_fiction_literature_id = beauty_and_etiquette.non_fiction_literature_id
union 
select non_fiction_literature.name, cooking.name, cooking.author, cooking.price_rub
from non_fiction_literature  join cooking  
on non_fiction_literature.non_fiction_literature_id = cooking.non_fiction_literature_id
union 
select non_fiction_literature.name, culture_and_art.name, culture_and_art.author, culture_and_art.price_rub
from non_fiction_literature  join culture_and_art 
on non_fiction_literature.non_fiction_literature_id = culture_and_art.non_fiction_literature_id
union
select non_fiction_literature.name, medicine_and_health.name, medicine_and_health.author, medicine_and_health.price_rub
from non_fiction_literature  join medicine_and_health 
on non_fiction_literature.non_fiction_literature_id = medicine_and_health.non_fiction_literature_id
union 
select non_fiction_literature.name, hunting.name, hunting.author, hunting.price_rub
from non_fiction_literature  join hunting 
on non_fiction_literature.non_fiction_literature_id = hunting.non_fiction_literature_id
union 
select non_fiction_literature.name, psychology.name, psychology.author, psychology.price_rub
from non_fiction_literature  join psychology  
on non_fiction_literature.non_fiction_literature_id = psychology.non_fiction_literature_id
union 
select non_fiction_literature.name, publicism.name, publicism.author, publicism.price_rub
from non_fiction_literature  join publicism  
on non_fiction_literature.non_fiction_literature_id = publicism.non_fiction_literature_id
union 
select non_fiction_literature.name, entertainment_holidays.name, entertainment_holidays.author, entertainment_holidays.price_rub
from non_fiction_literature  join entertainment_holidays 
on non_fiction_literature.non_fiction_literature_id = entertainment_holidays.non_fiction_literature_id
union 
select non_fiction_literature.name, crop_production.name, crop_production.author, crop_production.price_rub
from non_fiction_literature  join crop_production 
on non_fiction_literature.non_fiction_literature_id = crop_production.non_fiction_literature_id
union 
select non_fiction_literature.name, constraction.name, constraction.author, constraction.price_rub
from non_fiction_literature  join constraction 
on non_fiction_literature.non_fiction_literature_id = constraction.non_fiction_literature_id
union 
select non_fiction_literature.name, technical_science.name, technical_science.author, technical_science.price_rub
from non_fiction_literature  join technical_science 
on non_fiction_literature.non_fiction_literature_id = technical_science.non_fiction_literature_id
union 
select non_fiction_literature.name, tourism_and_co.name, tourism_and_co.author, tourism_and_co.price_rub
from non_fiction_literature  join tourism_and_co 
on non_fiction_literature.non_fiction_literature_id = tourism_and_co.non_fiction_literature_id
union
select non_fiction_literature.name, encyclopedias.name, encyclopedias.author, encyclopedias.price_rub
from non_fiction_literature  join encyclopedias  
on non_fiction_literature.non_fiction_literature_id = encyclopedias.non_fiction_literature_id
union 
select non_fiction_literature.name, animal_care.name, animal_care.author, animal_care.price_rub
from non_fiction_literature  join animal_care 
on non_fiction_literature.non_fiction_literature_id = animal_care.non_fiction_literature_id
union
select non_fiction_literature.name, philological_sciences.name, philological_sciences.author, philological_sciences.price_rub
from non_fiction_literature  join philological_sciences  
on non_fiction_literature.non_fiction_literature_id = philological_sciences.non_fiction_literature_id
union
select non_fiction_literature.name, philosophical_sciences.name, philosophical_sciences.author, philosophical_sciences.price_rub
from non_fiction_literature  join philosophical_sciences 
on non_fiction_literature.non_fiction_literature_id = philosophical_sciences.non_fiction_literature_id
union
select non_fiction_literature.name, fitness_and_co.name, fitness_and_co.author, fitness_and_co.price_rub
from non_fiction_literature  join fitness_and_co  
on non_fiction_literature.non_fiction_literature_id = fitness_and_co.non_fiction_literature_id
union 
select non_fiction_literature.name, esoterics.name, esoterics.author, esoterics.price_rub
from non_fiction_literature  join esoterics 
on non_fiction_literature.non_fiction_literature_id = esoterics.non_fiction_literature_id;

END//
#--------------------------------------------------
CREATE PROCEDURE  periodicals () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
	
select books.sections as 'Жанр', periodicals.name as 'Название', periodicals.author as 'Автор', periodicals.price_rub as 'Цена в руб'
from books join periodicals 
on books.book_id  = periodicals.book_id;

END//

#--------------------------------------------------
CREATE PROCEDURE  religion () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 

select religion.name as 'Жанр', islam.name as 'Название', islam.author as 'Автор', islam.price_rub as 'Цена в руб'
from religion  join islam  
on religion.religion_id = islam.religion_id
union 
select religion.name, worlds_religion.name, worlds_religion.author, worlds_religion.price_rub
from religion  join worlds_religion  
on religion.religion_id = worlds_religion.religion_id
union 
select religion.name, religious_studies.name, religious_studies.author, religious_studies.price_rub
from religion  join religious_studies  
on religion.religion_id = religious_studies.religion_id
union 
select religion.name, christianity.name, christianity.author, christianity.price_rub
from religion  join christianity  
on religion.religion_id = christianity.religion_id;	


END//

#--------------------------------------------------

CREATE PROCEDURE  txtbooks_and_dictionaries () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN 
select txtbooks_and_dictionaries.name as 'Жанр', support_for_stud.name as 'Название', support_for_stud.author as 'Автор', support_for_stud.price_rub as 'Цена в руб'
from txtbooks_and_dictionaries  join support_for_stud  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = support_for_stud.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , demo_materials.name , demo_materials.author , demo_materials.price_rub
from txtbooks_and_dictionaries  join demo_materials  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = demo_materials.txtbooks_and_dictionaries_id
union
select txtbooks_and_dictionaries.name , add_educ_for_kids.name , add_educ_for_kids.author , add_educ_for_kids.price_rub
from txtbooks_and_dictionaries  join add_educ_for_kids  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = add_educ_for_kids.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , preschool_educ.name , preschool_educ.author , preschool_educ.price_rub
from txtbooks_and_dictionaries  join preschool_educ  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = preschool_educ.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , foreign_lang.name , foreign_lang.author , foreign_lang.price_rub
from txtbooks_and_dictionaries  join foreign_lang  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = foreign_lang.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , books_for_school.name , books_for_school.author , books_for_school.price_rub
from txtbooks_and_dictionaries  join books_for_school  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = books_for_school.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , pedagogy.name , pedagogy.author , pedagogy.price_rub
from txtbooks_and_dictionaries  join pedagogy  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = pedagogy.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , uni_preparation.name , uni_preparation.author , uni_preparation.price_rub
from txtbooks_and_dictionaries  join uni_preparation  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = uni_preparation.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , benefits_for_disabled_kids.name , benefits_for_disabled_kids.author , benefits_for_disabled_kids.price_rub
from txtbooks_and_dictionaries  join benefits_for_disabled_kids  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = benefits_for_disabled_kids.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , dictionaries.name , dictionaries.author , dictionaries.price_rub
from txtbooks_and_dictionaries  join dictionaries  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = dictionaries.txtbooks_and_dictionaries_id;

end //

#--------------------------------------------------

# Художественная литература

CREATE PROCEDURE  fictional_books () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 

BEGIN
select fictional_books.name as 'Жанр', aphorisms.name as 'Название', aphorisms.author as 'Автор', aphorisms.price_rub as 'Цена в руб'
from fictional_books  join aphorisms  
on fictional_books.fictional_books_id = aphorisms.fictional_books_id
union 
select fictional_books.name, fables.name, fables.author, fables.price_rub
from fictional_books  join fables  
on fictional_books.fictional_books_id = fables.fictional_books_id
union 
select fictional_books.name, detectives.name, detectives.author, detectives.price_rub
from fictional_books  join detectives  
on fictional_books.fictional_books_id = detectives.fictional_books_id
union 
select fictional_books.name, dramaturgy.name, dramaturgy.author, dramaturgy.price_rub
from fictional_books  join dramaturgy  
on fictional_books.fictional_books_id = dramaturgy.fictional_books_id
union 
select fictional_books.name, historical_prose.name, historical_prose.author, historical_prose.price_rub
from fictional_books  join historical_prose  
on fictional_books.fictional_books_id = historical_prose.fictional_books_id
union 
select fictional_books.name, classical_prose.name, classical_prose.author, classical_prose.price_rub
from fictional_books  join classical_prose  
on fictional_books.fictional_books_id = classical_prose.fictional_books_id
union 
select fictional_books.name, domestic_militant.name, domestic_militant.author, domestic_militant.price_rub
from fictional_books  join domestic_militant  
on fictional_books.fictional_books_id = domestic_militant.fictional_books_id
union 
select fictional_books.name, poetry.name, poetry.author, poetry.price_rub
from fictional_books  join poetry  
on fictional_books.fictional_books_id = poetry.fictional_books_id
union 
select fictional_books.name, adventure.name, adventure.author, adventure.price_rub
from fictional_books  join adventure  
on fictional_books.fictional_books_id = adventure.fictional_books_id
union 
select fictional_books.name, sentimental_prose.name, sentimental_prose.author, sentimental_prose.price_rub
from fictional_books  join sentimental_prose  
on fictional_books.fictional_books_id = sentimental_prose.fictional_books_id
union 
select fictional_books.name, modern_prose.name, modern_prose.author, modern_prose.price_rub
from fictional_books  join modern_prose  
on fictional_books.fictional_books_id = modern_prose.fictional_books_id
union 
select fictional_books.name, fantastic_tales.name, fantastic_tales.author, fantastic_tales.price_rub
from fictional_books  join fantastic_tales  
on fictional_books.fictional_books_id = fantastic_tales.fictional_books_id
union 
select fictional_books.name, fantasy.name, fantasy.author, fantasy.price_rub
from fictional_books  join fantasy  
on fictional_books.fictional_books_id = fantasy.fictional_books_id;

end //
#--------------------------------------------------
delimiter ;

# Книги
call books ();

# Билингвы и книги на иностранных языках
call bilingual_books ();

# Билингвы
call bilingual ();

# Книги для детей  
call books_for_kids ();

# таблица Комиксы, Манга, Артбуки
call comics_manga_artbk ();

# Молодежная литература
call youth_literature ();

# Нехудожественная литература
call non_fiction_literature ();

# Периодические издания
call periodicals ();

# Религия
call religion ();

# Учебная, методическая литература и словари
call txtbooks_and_dictionaries ();

# Художественная литература
call fictional_books ();

#===========================================================================
/*
 *                          ПРЕДСТАВЛЕНИЯ
 */
#===========================================================================
# Книги

create or replace view books_0 as
select books.sections as 'Разделы', bilingual_books.name as 'Жанры', bilingual_books.null_1 as 'Название'
from books join bilingual_books
on books.book_id = bilingual_books.book_id
union 
select books.sections, books_for_kids.name, books_for_kids.null_1
from books join books_for_kids
on books.book_id = books_for_kids.book_id
union 
select books.sections, comics_manga_artbk.name, comics_manga_artbk.null_1
from books join comics_manga_artbk
on books.book_id = comics_manga_artbk.book_id
union 
select books.sections, youth_literature.null_1, youth_literature.name
from books join youth_literature
on books.book_id = youth_literature.book_id
union 
select books.sections, non_fiction_literature.name, non_fiction_literature.null_1
from books join non_fiction_literature
on books.book_id = non_fiction_literature.book_id
union 
select books.sections, periodicals.null_1, periodicals.name
from books join periodicals
on books.book_id = periodicals.book_id
union 
select books.sections, religion.name, religion.null_1
from books join religion
on books.book_id = religion.book_id
union 
select books.sections, txtbooks_and_dictionaries.name, txtbooks_and_dictionaries.null_1
from books join txtbooks_and_dictionaries
on books.book_id = txtbooks_and_dictionaries.book_id
union 
select books.sections, fictional_books.name, fictional_books.null_1
from books join fictional_books
on books.book_id = fictional_books.book_id;


# Билингвы и книги на иностранных языках

create or replace view bilingual_books_0 as
select bilingual_books.name as 'Разделы', bilingual.languages as 'Подразделы', bilingual.null_1 as 'Название', bilingual.null_2 as 'Авторы', bilingual.null_3 as 'Цена в руб'
from bilingual_books join bilingual 
on bilingual_books.bilingual_book_id = bilingual.bilingual_book_id
union 
select bilingual_books.name, lit_on_a_foreign_lang.null_1, lit_on_a_foreign_lang.name, lit_on_a_foreign_lang.author, lit_on_a_foreign_lang.price_rub
from bilingual_books join lit_on_a_foreign_lang 
on bilingual_books.bilingual_book_id = lit_on_a_foreign_lang.bilingual_book_id
union 
select bilingual_books.name, lit_on_a_foreign_lang_for_kids.null_1, lit_on_a_foreign_lang_for_kids.name, lit_on_a_foreign_lang_for_kids.author, lit_on_a_foreign_lang_for_kids.price_rub
from bilingual_books join lit_on_a_foreign_lang_for_kids  
on bilingual_books.bilingual_book_id = lit_on_a_foreign_lang_for_kids.bilingual_book_id;


# Билингвы

create or replace view bilingual_0 as
    select bilingual.languages as 'Разделы', english_lang.name as 'Название', english_lang.author as 'Автор', english_lang.price_rub as 'Цена в руб.'
from bilingual join english_lang 
on bilingual.bilingual_id = english_lang.bilingual_id
union
select bilingual.languages, other_lang.name, other_lang.author, other_lang.price_rub
from bilingual join other_lang 
on bilingual.bilingual_id = other_lang.bilingual_id
union 
select bilingual.languages, spanish_lang.name, spanish_lang.author, spanish_lang.price_rub
from bilingual join spanish_lang 
on bilingual.bilingual_id = spanish_lang.bilingual_id
union 
select bilingual.languages, italian_lang.name, italian_lang.author, italian_lang.price_rub
from bilingual join italian_lang 
on bilingual.bilingual_id = italian_lang.bilingual_id
union 
select bilingual.languages, german_lang.name, german_lang.author, german_lang.price_rub
from bilingual join german_lang 
on bilingual.bilingual_id = german_lang.bilingual_id
union 
select bilingual.languages, french_lang.name, french_lang.author, french_lang.price_rub
from bilingual join french_lang 
on bilingual.bilingual_id = french_lang.bilingual_id; 



# Книги для детей 

create or replace view books_for_kids_0 as
select books_for_kids.name as 'Жанр', childrens_fiction.name as 'Название', childrens_fiction.author as 'Автор', childrens_fiction.price_rub as 'Цена в руб'
from books_for_kids  join childrens_fiction  
on books_for_kids.books_for_kids_id  = childrens_fiction.books_for_kids_id
union 
select books_for_kids.name, childrens_leisure.name, childrens_leisure.author, childrens_leisure.price_rub
from books_for_kids  join childrens_leisure  
on books_for_kids.books_for_kids_id  = childrens_leisure.books_for_kids_id
union 
select books_for_kids.name, child_development.name, child_development.author, child_development.price_rub
from books_for_kids  join child_development  
on books_for_kids.books_for_kids_id  = child_development.books_for_kids_id
union 
select books_for_kids.name, educ_lit_for_kids.name, educ_lit_for_kids.author, educ_lit_for_kids.price_rub
from books_for_kids  join educ_lit_for_kids  
on books_for_kids.books_for_kids_id  = educ_lit_for_kids.books_for_kids_id; 


# таблица Комиксы, Манга, Артбуки

create or replace view comics_manga_artbk_0 as
select comics_manga_artbk.name as 'Жанр', artbooks_and_co.name as 'Название', artbooks_and_co.author as 'Автор', artbooks_and_co.price_rub as 'Цена в руб'
from comics_manga_artbk join artbooks_and_co  
on comics_manga_artbk.comics_manga_artbk_id  = artbooks_and_co.comics_manga_artbk_id
union 
select comics_manga_artbk.name, comics.name, comics.author, comics.price_rub
from comics_manga_artbk join comics  
on comics_manga_artbk.comics_manga_artbk_id  = comics.comics_manga_artbk_id
union 
select comics_manga_artbk.name, comics_for_kids.name, comics_for_kids.author, comics_for_kids.price_rub
from comics_manga_artbk join comics_for_kids  
on comics_manga_artbk.comics_manga_artbk_id  = comics_for_kids.comics_manga_artbk_id
union 
select comics_manga_artbk.name, manga.name, manga.author, manga.price_rub
from comics_manga_artbk join manga  
on comics_manga_artbk.comics_manga_artbk_id  = manga.comics_manga_artbk_id
union 
select comics_manga_artbk.name, novelizations.name, novelizations.author, novelizations.price_rub
from comics_manga_artbk join novelizations  
on comics_manga_artbk.comics_manga_artbk_id  = novelizations.comics_manga_artbk_id
union 
select comics_manga_artbk.name, educational_comics.name, educational_comics.author, educational_comics.price_rub
from comics_manga_artbk join educational_comics  
on comics_manga_artbk.comics_manga_artbk_id  = educational_comics.comics_manga_artbk_id
union 
select comics_manga_artbk.name, fan_souvenirs.name, fan_souvenirs.author, fan_souvenirs.price_rub
from comics_manga_artbk join fan_souvenirs  
on comics_manga_artbk.comics_manga_artbk_id  = fan_souvenirs.comics_manga_artbk_id; 


# Молодежная литература

create or replace view youth_literature_0 as
select books.sections as 'Жанр', youth_literature.name as 'Название', youth_literature.author as 'Автор', youth_literature.price_rub as 'Цена в руб'
from books join youth_literature  
on books.book_id  = youth_literature.book_id; 


# Нехудожественная литература

create or replace view non_fiction_literature_0 as
select non_fiction_literature.name as 'Жанр', business_and_economy.name as 'Название', business_and_economy.author as 'Автор', business_and_economy.price_rub as 'Цена в руб'
from non_fiction_literature  join business_and_economy  
on non_fiction_literature.non_fiction_literature_id = business_and_economy.non_fiction_literature_id
union 
select non_fiction_literature.name, state_and_law.name, state_and_law.author, state_and_law.price_rub
from non_fiction_literature  join state_and_law  
on non_fiction_literature.non_fiction_literature_id = state_and_law.non_fiction_literature_id
union 
select non_fiction_literature.name, home_crafts.name, home_crafts.author, home_crafts.price_rub
from non_fiction_literature  join home_crafts  
on non_fiction_literature.non_fiction_literature_id = home_crafts.non_fiction_literature_id
union 
select non_fiction_literature.name, housekeeping.name, housekeeping.author, housekeeping.price_rub
from non_fiction_literature  join housekeeping  
on non_fiction_literature.non_fiction_literature_id = housekeeping.non_fiction_literature_id
union 
select non_fiction_literature.name, natural_sciences.name, natural_sciences.author, natural_sciences.price_rub
from non_fiction_literature  join natural_sciences 
on non_fiction_literature.non_fiction_literature_id = natural_sciences.non_fiction_literature_id
union 
select non_fiction_literature.name, information_techno.name, information_techno.author, information_techno.price_rub
from non_fiction_literature  join information_techno  
on non_fiction_literature.non_fiction_literature_id = information_techno.non_fiction_literature_id
union 
select non_fiction_literature.name, history.name, history.author, history.price_rub
from non_fiction_literature  join history  
on non_fiction_literature.non_fiction_literature_id = history.non_fiction_literature_id
union 
select non_fiction_literature.name, books_for_parents.name, books_for_parents.author, books_for_parents.price_rub
from non_fiction_literature  join books_for_parents  
on non_fiction_literature.non_fiction_literature_id = books_for_parents.non_fiction_literature_id
union 
select non_fiction_literature.name, collection.name, collection.author, collection.price_rub
from non_fiction_literature  join collection  
on non_fiction_literature.non_fiction_literature_id = collection.non_fiction_literature_id
union 
select non_fiction_literature.name, beauty_and_etiquette.name, beauty_and_etiquette.author, beauty_and_etiquette.price_rub
from non_fiction_literature  join beauty_and_etiquette  
on non_fiction_literature.non_fiction_literature_id = beauty_and_etiquette.non_fiction_literature_id
union 
select non_fiction_literature.name, cooking.name, cooking.author, cooking.price_rub
from non_fiction_literature  join cooking  
on non_fiction_literature.non_fiction_literature_id = cooking.non_fiction_literature_id
union 
select non_fiction_literature.name, culture_and_art.name, culture_and_art.author, culture_and_art.price_rub
from non_fiction_literature  join culture_and_art 
on non_fiction_literature.non_fiction_literature_id = culture_and_art.non_fiction_literature_id
union
select non_fiction_literature.name, medicine_and_health.name, medicine_and_health.author, medicine_and_health.price_rub
from non_fiction_literature  join medicine_and_health 
on non_fiction_literature.non_fiction_literature_id = medicine_and_health.non_fiction_literature_id
union 
select non_fiction_literature.name, hunting.name, hunting.author, hunting.price_rub
from non_fiction_literature  join hunting 
on non_fiction_literature.non_fiction_literature_id = hunting.non_fiction_literature_id
union 
select non_fiction_literature.name, psychology.name, psychology.author, psychology.price_rub
from non_fiction_literature  join psychology  
on non_fiction_literature.non_fiction_literature_id = psychology.non_fiction_literature_id
union 
select non_fiction_literature.name, publicism.name, publicism.author, publicism.price_rub
from non_fiction_literature  join publicism  
on non_fiction_literature.non_fiction_literature_id = publicism.non_fiction_literature_id
union 
select non_fiction_literature.name, entertainment_holidays.name, entertainment_holidays.author, entertainment_holidays.price_rub
from non_fiction_literature  join entertainment_holidays 
on non_fiction_literature.non_fiction_literature_id = entertainment_holidays.non_fiction_literature_id
union 
select non_fiction_literature.name, crop_production.name, crop_production.author, crop_production.price_rub
from non_fiction_literature  join crop_production 
on non_fiction_literature.non_fiction_literature_id = crop_production.non_fiction_literature_id
union 
select non_fiction_literature.name, constraction.name, constraction.author, constraction.price_rub
from non_fiction_literature  join constraction 
on non_fiction_literature.non_fiction_literature_id = constraction.non_fiction_literature_id
union 
select non_fiction_literature.name, technical_science.name, technical_science.author, technical_science.price_rub
from non_fiction_literature  join technical_science 
on non_fiction_literature.non_fiction_literature_id = technical_science.non_fiction_literature_id
union 
select non_fiction_literature.name, tourism_and_co.name, tourism_and_co.author, tourism_and_co.price_rub
from non_fiction_literature  join tourism_and_co 
on non_fiction_literature.non_fiction_literature_id = tourism_and_co.non_fiction_literature_id
union
select non_fiction_literature.name, encyclopedias.name, encyclopedias.author, encyclopedias.price_rub
from non_fiction_literature  join encyclopedias  
on non_fiction_literature.non_fiction_literature_id = encyclopedias.non_fiction_literature_id
union 
select non_fiction_literature.name, animal_care.name, animal_care.author, animal_care.price_rub
from non_fiction_literature  join animal_care 
on non_fiction_literature.non_fiction_literature_id = animal_care.non_fiction_literature_id
union
select non_fiction_literature.name, philological_sciences.name, philological_sciences.author, philological_sciences.price_rub
from non_fiction_literature  join philological_sciences  
on non_fiction_literature.non_fiction_literature_id = philological_sciences.non_fiction_literature_id
union
select non_fiction_literature.name, philosophical_sciences.name, philosophical_sciences.author, philosophical_sciences.price_rub
from non_fiction_literature  join philosophical_sciences 
on non_fiction_literature.non_fiction_literature_id = philosophical_sciences.non_fiction_literature_id
union
select non_fiction_literature.name, fitness_and_co.name, fitness_and_co.author, fitness_and_co.price_rub
from non_fiction_literature  join fitness_and_co  
on non_fiction_literature.non_fiction_literature_id = fitness_and_co.non_fiction_literature_id
union 
select non_fiction_literature.name, esoterics.name, esoterics.author, esoterics.price_rub
from non_fiction_literature  join esoterics 
on non_fiction_literature.non_fiction_literature_id = esoterics.non_fiction_literature_id;


# Периодические издания

create or replace view periodicals_0 as

select books.sections as 'Жанр', periodicals.name as 'Название', periodicals.author as 'Автор', periodicals.price_rub as 'Цена в руб'
from books join periodicals 
on books.book_id  = periodicals.book_id;


# Религия

create or replace view religion_0 as

select religion.name as 'Жанр', islam.name as 'Название', islam.author as 'Автор', islam.price_rub as 'Цена в руб'
from religion  join islam  
on religion.religion_id = islam.religion_id
union 
select religion.name, worlds_religion.name, worlds_religion.author, worlds_religion.price_rub
from religion  join worlds_religion  
on religion.religion_id = worlds_religion.religion_id
union 
select religion.name, religious_studies.name, religious_studies.author, religious_studies.price_rub
from religion  join religious_studies  
on religion.religion_id = religious_studies.religion_id
union 
select religion.name, christianity.name, christianity.author, christianity.price_rub
from religion  join christianity  
on religion.religion_id = christianity.religion_id;	


# Учебная, методическая литература и словари

create or replace view txtbooks_and_dictionaries_0 as
select txtbooks_and_dictionaries.name as 'Жанр', support_for_stud.name as 'Название', support_for_stud.author as 'Автор', support_for_stud.price_rub as 'Цена в руб'
from txtbooks_and_dictionaries  join support_for_stud  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = support_for_stud.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , demo_materials.name , demo_materials.author , demo_materials.price_rub
from txtbooks_and_dictionaries  join demo_materials  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = demo_materials.txtbooks_and_dictionaries_id
union
select txtbooks_and_dictionaries.name , add_educ_for_kids.name , add_educ_for_kids.author , add_educ_for_kids.price_rub
from txtbooks_and_dictionaries  join add_educ_for_kids  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = add_educ_for_kids.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , preschool_educ.name , preschool_educ.author , preschool_educ.price_rub
from txtbooks_and_dictionaries  join preschool_educ  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = preschool_educ.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , foreign_lang.name , foreign_lang.author , foreign_lang.price_rub
from txtbooks_and_dictionaries  join foreign_lang  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = foreign_lang.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , books_for_school.name , books_for_school.author , books_for_school.price_rub
from txtbooks_and_dictionaries  join books_for_school  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = books_for_school.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , pedagogy.name , pedagogy.author , pedagogy.price_rub
from txtbooks_and_dictionaries  join pedagogy  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = pedagogy.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , uni_preparation.name , uni_preparation.author , uni_preparation.price_rub
from txtbooks_and_dictionaries  join uni_preparation  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = uni_preparation.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , benefits_for_disabled_kids.name , benefits_for_disabled_kids.author , benefits_for_disabled_kids.price_rub
from txtbooks_and_dictionaries  join benefits_for_disabled_kids  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = benefits_for_disabled_kids.txtbooks_and_dictionaries_id
union 
select txtbooks_and_dictionaries.name , dictionaries.name , dictionaries.author , dictionaries.price_rub
from txtbooks_and_dictionaries  join dictionaries  
on txtbooks_and_dictionaries.txtbooks_and_dictionaries_id = dictionaries.txtbooks_and_dictionaries_id;


# Художественная литература

create or replace view fictional_books_0 as
select fictional_books.name as 'Жанр', aphorisms.name as 'Название', aphorisms.author as 'Автор', aphorisms.price_rub as 'Цена в руб'
from fictional_books  join aphorisms  
on fictional_books.fictional_books_id = aphorisms.fictional_books_id
union 
select fictional_books.name, fables.name, fables.author, fables.price_rub
from fictional_books  join fables  
on fictional_books.fictional_books_id = fables.fictional_books_id
union 
select fictional_books.name, detectives.name, detectives.author, detectives.price_rub
from fictional_books  join detectives  
on fictional_books.fictional_books_id = detectives.fictional_books_id
union 
select fictional_books.name, dramaturgy.name, dramaturgy.author, dramaturgy.price_rub
from fictional_books  join dramaturgy  
on fictional_books.fictional_books_id = dramaturgy.fictional_books_id
union 
select fictional_books.name, historical_prose.name, historical_prose.author, historical_prose.price_rub
from fictional_books  join historical_prose  
on fictional_books.fictional_books_id = historical_prose.fictional_books_id
union 
select fictional_books.name, classical_prose.name, classical_prose.author, classical_prose.price_rub
from fictional_books  join classical_prose  
on fictional_books.fictional_books_id = classical_prose.fictional_books_id
union 
select fictional_books.name, domestic_militant.name, domestic_militant.author, domestic_militant.price_rub
from fictional_books  join domestic_militant  
on fictional_books.fictional_books_id = domestic_militant.fictional_books_id
union 
select fictional_books.name, poetry.name, poetry.author, poetry.price_rub
from fictional_books  join poetry  
on fictional_books.fictional_books_id = poetry.fictional_books_id
union 
select fictional_books.name, adventure.name, adventure.author, adventure.price_rub
from fictional_books  join adventure  
on fictional_books.fictional_books_id = adventure.fictional_books_id
union 
select fictional_books.name, sentimental_prose.name, sentimental_prose.author, sentimental_prose.price_rub
from fictional_books  join sentimental_prose  
on fictional_books.fictional_books_id = sentimental_prose.fictional_books_id
union 
select fictional_books.name, modern_prose.name, modern_prose.author, modern_prose.price_rub
from fictional_books  join modern_prose  
on fictional_books.fictional_books_id = modern_prose.fictional_books_id
union 
select fictional_books.name, fantastic_tales.name, fantastic_tales.author, fantastic_tales.price_rub
from fictional_books  join fantastic_tales  
on fictional_books.fictional_books_id = fantastic_tales.fictional_books_id
union 
select fictional_books.name, fantasy.name, fantasy.author, fantasy.price_rub
from fictional_books  join fantasy  
on fictional_books.fictional_books_id = fantasy.fictional_books_id;

#-------------------------------------------------------------------

SELECT * FROM books_0;

SELECT * FROM bilingual_books_0;

SELECT * FROM bilingual_0;

SELECT * FROM books_for_kids_0;

SELECT * FROM comics_manga_artbk_0;

SELECT * FROM youth_literature_0;

SELECT * FROM non_fiction_literature_0;

SELECT * FROM periodicals_0;

SELECT * FROM religion_0;

SELECT * FROM txtbooks_and_dictionaries_0;

SELECT * FROM fictional_books_0;
