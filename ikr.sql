# ===========================================================================
/*
7. В подключенном MySQL репозитории создать базу данных “Друзья
человека”
8. Создать таблицы с иерархией из диаграммы в БД
9. Заполнить низкоуровневые таблицы именами(животных), командами
которые они выполняют и датами рождения
*/

DROP DATABASE IF EXISTS human_friends;
CREATE DATABASE human_friends;
USE human_friends;

-- класс виды
DROP TABLE IF EXISTS species;
CREATE TABLE species (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	species VARCHAR(40)
);
INSERT INTO species (species) 
VALUES 
('домашнее'),
('вьючное');
# SELECT * FROM species;

-- класс типы
DROP TABLE IF EXISTS anim_class;
CREATE TABLE anim_class (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	class VARCHAR(40),
    species_id INT NOT NULL,
    FOREIGN KEY (species_id) REFERENCES species(id) ON UPDATE NO ACTION ON DELETE NO ACTION
);
INSERT INTO anim_class (class, species_id) 
VALUES 
('кошка', 1),
('собака', 1),
('хомяк', 1),
('лошадь', 2),
('верблюд', 2),
('осёл', 2);
# SELECT class, sp.species FROM anim_class JOIN species sp ON sp.id = species_id;

-- классы животные
DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(40),
    class_id INT NOT NULL,
    birthday DATE,
    FOREIGN KEY (class_id) REFERENCES anim_class(id) ON UPDATE NO ACTION ON DELETE NO ACTION
);
INSERT INTO animals (name, class_id, birthday) 
VALUES 
('мурка', 1, '2023-01-15'),
('полкан', 2, '2022-05-11'),
('хома', 3, '2023-03-25'),
('Рыжик', 4, '2015-01-20'),
('Петрович', 5, '2017-07-10'),
('Фомич', 6, '2020-09-17');
/*
SELECT name, ac.class, sp.species, birthday 
FROM animals 
JOIN anim_class ac ON ac.id = class_id 
JOIN species sp ON sp.id = ac.species_id;
*/

DROP TABLE IF EXISTS skills;
CREATE TABLE skills (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	skill VARCHAR(40)
);
INSERT INTO skills (skill) 
VALUES 
('дрессируется'),
('ласкается'),
('бегает в колесе'),
('скачет галопом'),
('вечно жуёт'),
('возит грузы');
# SELECT * FROM skills;

DROP TABLE IF EXISTS animal_skills;
CREATE TABLE animal_skills (
	id SERIAL PRIMARY KEY,
	animal_id INT NOT NULL,
    skill_id INT NOT NULL,
    FOREIGN KEY (animal_id) REFERENCES animals(id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    FOREIGN KEY (skill_id) REFERENCES skills(id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

INSERT INTO animal_skills (animal_id, skill_id) VALUES
(1, 2), (2, 1), (3, 3), (4, 4), (5, 5), (6, 6);
/*
SELECT an.name, ac.class, sp.species, birthday, sk.skill
FROM animal_skills
JOIN animals an ON an.id = animal_id
JOIN anim_class ac ON ac.id = an.class_id 
JOIN species sp ON sp.id = ac.species_id
JOIN skills sk ON sk.id = skill_id;
*/

SELECT name, ac.class, sp.species, birthday 
FROM animals 
JOIN anim_class ac ON ac.id = class_id 
JOIN species sp ON sp.id = ac.species_id;


# ===========================================================================
/*
10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой
питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
*/

DELETE FROM animals
WHERE class_id = (SELECT id FROM anim_class WHERE class = 'верблюд');

SELECT name, ac.class, sp.species, birthday 
FROM animals 
JOIN anim_class ac ON ac.id = class_id 
JOIN species sp ON sp.id = ac.species_id
WHERE ac.class = 'осёл' || ac.class = 'лошадь';

# =============================================================================
/*
11.Создать новую таблицу “молодые животные” в которую попадут все
животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице
*/
CREATE OR REPLACE VIEW young_animals AS
(SELECT name, 
		ac.class, 
        sp.species, 
        birthday, 
		CASE
			WHEN datediff(curdate(), birthday)/365 < 1
				THEN concat(FLOOR(datediff(curdate(), birthday)/30), ' мес.')
			WHEN datediff(curdate(), birthday)/365 >= 1 && datediff(curdate(), birthday)/365 < 2
				THEN concat('1 год ', concat(FLOOR((datediff(curdate(), birthday)/30)-12), ' мес.'))
			WHEN datediff(curdate(), birthday)/365 >= 2 && datediff(curdate(), birthday)/365 < 3
				THEN concat('2 года ', concat(FLOOR((datediff(curdate(), birthday)/30)-24), ' мес.'))
			ELSE
				concat(concat(FLOOR(datediff(curdate(), birthday)/365), ' года '), concat(FLOOR((datediff(curdate(), birthday)/30)%12), ' мес.'))
			END AS age
FROM animals 
JOIN anim_class ac ON ac.id = class_id 
JOIN species sp ON sp.id = ac.species_id
WHERE datediff(curdate(), birthday)/365 < 3 && datediff(curdate(), birthday) > 365);

SELECT * FROM young_animals;

# =======================================================================================
/*
12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на
прошлую принадлежность к старым таблицам.
*/
SELECT 
	an.name AS 'animals.name', 
    ac.class AS 'anim_class.class',
    ac.id AS 'anim_class.id',
    sp.species AS 'species.species', 
    sp.id AS 'species.id', 
    birthday AS 'animals.birthday', 
    sk.skill AS 'skills.skill',
    sk.id AS 'skills.id'
FROM animal_skills
JOIN animals an ON an.id = animal_id
JOIN anim_class ac ON ac.id = an.class_id 
JOIN species sp ON sp.id = ac.species_id
JOIN skills sk ON sk.id = skill_id;


