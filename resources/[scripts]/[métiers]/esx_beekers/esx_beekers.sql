USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_beekers', 'Beekers', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_beekers', 'Beekers', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('beekers', 'Beekers')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('beekers',0,'recrue','Recrue',12,'{}','{}'),
	('beekers',1,'novice','Novice',24,'{}','{}'),
	('beekers',2,'experimente','Experimente',36,'{}','{}'),
	('beekers',3,'chief',"Chef d\'équipe",48,'{}','{}'),
	('beekers',4,'boss','Patron',0,'{}','{}')
;

