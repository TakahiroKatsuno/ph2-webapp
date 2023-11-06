DROP DATABASE IF EXISTS webapp;
CREATE DATABASE webapp;
USE webapp;

-- 学習記録テーブル

DROP TABLE IF EXISTS records;
CREATE TABLE records (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `study_date` DATETIME NOT NULL,
  `study_time` INT NOT NULL,
  `language_id` INT NOT NULL,
  `content_id` INT NOT NULL
);

INSERT INTO records(study_date, study_time, language_id, content_id)
VALUES
  ('2023-11-1', 2, 1, 1),
  ('2023-11-2', 2, 1, 1),
  ('2023-11-3', 2, 1, 1),
  ('2023-11-4', 2, 1, 1),
  ('2023-11-5', 2, 1, 1),
  ('2023-11-6', 2, 1, 1),
  ('2023-11-7', 2, 1, 1),
  ('2023-11-8', 2, 1, 1),
  ('2023-11-9', 2, 1, 1),
  ('2023-11-10', 2, 1, 1),
  ('2023-11-11', 2, 1, 1),
  ('2023-11-12', 2, 1, 1),
  ('2023-11-13', 2, 1, 1),
  ('2023-11-14', 2, 1, 1),
  ('2023-11-15', 2, 1, 1),
  ('2023-11-16', 3, 2, 1),
  ('2023-11-17', 4, 3, 1),
  ('2023-11-18', 2, 4, 1),
  ('2023-11-19', 0, 1, 2),
  ('2023-11-20', 4, 2, 2),
  ('2023-11-21', 2, 3, 2),
  ('2023-11-22', 3, 4, 2),
  ('2023-11-23', 3, 1, 3),
  ('2023-11-24', 3, 2, 3),
  ('2023-11-25', 2, 3, 3),
  ('2023-11-26', 3, 4, 3),
  ('2023-11-27', 4, 1, 1),
  ('2023-11-27', 3, 2, 1),
  ('2023-11-28', 3, 2, 3),
  ('2023-11-29', 3, 2, 3),
  ('2023-11-30', 3, 2, 3),
  ('2023-11-31', 2, 3, 3);



-- 学習言語のテーブル

DROP TABLE IF EXISTS languages;
CREATE TABLE languages (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  language VARCHAR(255) NOT NULL
);

INSERT INTO languages(language)
VALUES
  ('HTML'),
  ('CSS'),
  ('Javascript'),
  ('PHP'),
  ('Laravel'),
  ('SQL'),
  ('SHELL'),
  ('その他');

-- 学習コンテンツのテーブル

DROP TABLE IF EXISTS contents;
CREATE TABLE contents (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  content VARCHAR(255) NOT NULL
);

INSERT INTO contents(content)
VALUES
  ('N予備校'),
  ('課題'),
  ('ドットインストール');