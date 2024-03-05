SELECT * FROM porto.us_graduate_schools_admission_parameters_dataset;
DESCRIBE us_graduate_schools_admission_parameters_dataset;
SELECT * FROM porto.us_graduate_schools_admission_parameters_dataset 
WHERE `Serial No.` IS NULL
   OR `GRE Score` IS NULL
   OR `TOEFL Score`IS NULL
   OR `University Rating` IS NULL
   OR `SOP` IS NULL
   OR `LOR` IS NULL
   OR `CGPA` IS NULL
   OR `Research` IS NULL
   OR  `Chance of Admit` IS NULL;
SELECT count(`Chance of Admit`), count(`Research`) FROM us_graduate_schools_admission_parameters_dataset WHERE `Chance of Admit` > 0.8;
SELECT 
	avg(CGPA), 
    min(`CGPA`) AS min_GPA,
    max(`CGPA`) AS maks_GPA,
    avg(`TOEFL Score`), 
	min(`TOEFL Score`) AS min_toefl,
    max(`TOEFL Score`) AS maks_toefl,
    avg(`GRE Score`),
	min(`GRE Score`) AS min_gre,
    max(`GRE Score`) AS maks_gre
FROM us_graduate_schools_admission_parameters_dataset;
SELECT `University Rating`, COUNT(*) AS frequency
	FROM us_graduate_schools_admission_parameters_dataset 
	WHERE `Chance of Admit` > 0.8
	GROUP BY `University Rating`
	ORDER BY frequency DESC;
SELECT `SOP`, COUNT(*) AS frequency
	FROM us_graduate_schools_admission_parameters_dataset 
	WHERE `Chance of Admit` > 0.8
	GROUP BY `SOP`
	ORDER BY frequency DESC;
SELECT `LOR`, COUNT(*) AS frequency
	FROM us_graduate_schools_admission_parameters_dataset 
	WHERE `Chance of Admit` > 0.8
	GROUP BY `LOR`
	ORDER BY frequency DESC;
SELECT * FROM us_graduate_schools_admission_parameters_dataset
ORDER BY `Chance of Admit` DESC;



   

