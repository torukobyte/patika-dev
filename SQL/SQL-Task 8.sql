/* test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım. */

CREATE TABLE employee
(
    id       INTEGER,
    name     VARCHAR(50),
    birthday DATE,
    email    VARCHAR(100)
);

/* Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim. */

INSERT INTO employee (id, name, birthday, email)
VALUES (1, 'Alasdair', '2020-11-10', 'arawlinson0@cam.ac.uk'),
       (2, 'Rafferty', '2021-05-28', 'relcum1@tuttocitta.it'),
       (3, 'Cesar', '2021-07-10', 'clabrum2@miibeian.gov.cn'),
       (4, 'Paolo', '2020-12-07', 'pgagie3@mit.edu'),
       (5, 'Sergio', '2021-06-22', 'smathou4@mysql.com'),
       (6, 'Wilden', '2021-02-09', 'wforge5@example.com'),
       (7, 'Gretal', '2021-06-21', 'ghoulahan6@sourceforge.net'),
       (8, 'Way', '2021-08-16', 'wgarrit7@zdnet.com'),
       (9, 'Rex', '2020-11-22', 'rmephan8@hugedomains.com'),
       (10, 'Susanna', '2021-05-13', 'sdrakeford9@unc.edu'),
       (11, 'Lib', '2020-11-15', 'lwestphala@ftc.gov'),
       (12, 'Kati', '2020-10-14', 'ksterzakerb@prlog.org'),
       (13, 'Lindsy', '2021-05-30', 'lciricc@blogspot.com'),
       (14, 'Arnaldo', '2021-02-02', 'ahiddsleyd@hostgator.com'),
       (15, 'Tabatha', '2021-02-03', 'tkobierskie@stumbleupon.com'),
       (16, 'Benedetto', '2021-05-06', 'bbetteridgef@elpais.com'),
       (17, 'Royall', '2021-03-14', 'rbissellg@github.io'),
       (18, 'Kass', '2021-08-16', 'kdewdneyh@mapy.cz'),
       (19, 'Dunc', '2020-11-21', 'dquinseei@4shared.com'),
       (20, 'Aloysia', '2021-07-07', 'afassbenderj@icq.com'),
       (21, 'Olenka', '2020-12-08', 'omacmorlandk@elpais.com'),
       (22, 'Gabi', '2021-08-20', 'glysl@t.co'),
       (23, 'Martie', '2021-08-05', 'mwakleym@time.com'),
       (24, 'Chic', '2020-12-24', 'cconen@dmoz.org'),
       (25, 'Udall', '2021-04-26', 'usackero@seesaa.net'),
       (26, 'Brigitta', '2020-12-07', 'bfebvrep@istockphoto.com'),
       (27, 'Alisun', '2020-10-19', 'acurraghq@jiathis.com'),
       (28, 'Ardine', '2021-01-08', 'abeaganr@youtube.com'),
       (29, 'Gabbie', '2020-08-30', 'gmccarters@cdbaby.com'),
       (30, 'Neron', '2020-08-31', 'ngandart@wiley.com'),
       (31, 'Dianna', '2021-05-09', 'dfloriou@t-online.de'),
       (32, 'Page', '2021-04-25', 'pwealdv@indiegogo.com'),
       (33, 'Jefferson', '2021-01-03', 'jcoreyw@hud.gov'),
       (34, 'Hansiain', '2021-01-28', 'hcharpinx@google.com'),
       (35, 'Odelinda', '2021-07-19', 'orufflery@quantcast.com'),
       (36, 'Jordan', '2021-02-05', 'jaichesonz@addthis.com'),
       (37, 'Faber', '2020-09-01', 'fgraeme10@npr.org'),
       (38, 'Josefina', '2021-05-24', 'jbottom11@marketwatch.com'),
       (39, 'Isabelita', '2020-11-28', 'iducket12@seattletimes.com'),
       (40, 'Dane', '2020-12-15', 'ddeath13@netlog.com'),
       (41, 'Alister', '2021-06-06', 'akeller14@phpbb.com'),
       (42, 'Aprilette', '2021-03-09', 'akingerby15@cnbc.com'),
       (43, 'Rozalin', '2021-07-23', 'redgars16@house.gov'),
       (44, 'Woodman', '2021-04-18', 'wbeazleigh17@hubpages.com'),
       (45, 'Elysha', '2020-12-21', 'edowsett18@newyorker.com'),
       (46, 'Abbie', '2021-04-05', 'agorwood19@fastcompany.com'),
       (47, 'Pauly', '2021-07-18', 'pdarnbrook1a@mit.edu'),
       (48, 'Eula', '2021-07-24', 'erattenbury1b@go.com'),
       (49, 'Shannah', '2021-07-12', 'sverson1c@cbslocal.com'),
       (50, 'Winny', '2021-05-30', 'wjacquemot1d@aol.com');

/* Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım. */

UPDATE employee
SET name = 'Beggie',birthday = '1912-12-12',email = 'tbyte@gmail.com'
WHERE id = 1;

UPDATE employee
SET id = 200,birthday = '1989-01-13',email = 'wir@gmail.com'
WHERE name = 'Winny';

UPDATE employee
SET id = 212, name = 'Melanie',email = 'sh@gmail.com'
WHERE birthday = '2021-05-30';

UPDATE employee
SET id = 999, name = 'Tom',birthday = '2003-03-03'
WHERE email = 'pdarnbrook1a@mit.edu';

/* Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım. */

DELETE FROM employee
WHERE id = 32;

DELETE FROM employee
WHERE name = 'Jordan';

DELETE FROM employee
WHERE birthday = '2021-03-09';

DELETE FROM employee
WHERE email = 'wgarrit7@zdnet.com';