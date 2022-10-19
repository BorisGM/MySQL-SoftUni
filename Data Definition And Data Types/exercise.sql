-- 01. Create Tables

CREATE TABLE `minions`
(
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `age` INT NOT NULL
);

CREATE TABLE `towns`
(
	`town_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

-- 02. Alter Minions Table

ALTER TABLE `minions`
ADD COLUMN `town_id` INT;

ALTER TABLE `minions`
ADD CONSTRAINT `FK_MINON_TOWN`
FOREIGN KEY(`town_id`)
REFERENCES `towns`(`id`);

-- 03. Insert Records in Both Tables

INSERT INTO `towns`
(`id`,`name`)
VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna');

INSERT INTO `minions`
(`id`, `name`, `age`, `town_id`)
VALUES
(1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2);

-- 04. Truncate Table Minions

TRUNCATE TABLE `minions`;

-- 05. Drop All Tables

DROP TABLE `minions`;
DROP TABLE `towns`;

