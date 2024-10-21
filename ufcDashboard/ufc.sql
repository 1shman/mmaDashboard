SELECT * FROM ufc_schema.`ufc-master`;

SELECT Finish, COUNT(*) AS finishCount
FROM ufc_schema.`ufc-master`
GROUP BY Finish;

SELECT
	CASE
		WHEN RedOdds < BlueOdds THEN RedOdds
        ELSE blueOdds
	END AS fighterOdds,
    
	CASE
		WHEN RedOdds < BlueOdds THEN RedAvgSigStrLanded
        ELSE BlueAvgSigStrLanded
	END AS strikesLanded
FROM ufc_schema.`ufc-master`;

SELECT
	COUNT(*) AS totalFights,
    COUNT(DISTINCT Country) as uniqueCountry,
    COUNT(DISTINCT WeightClass) AS uniqueWeightClasses
FROM ufc_schema.`ufc-master`;

SELECT 
	gender,
    COUNT(*) as fighterCount
FROM ufc_schema.`ufc-master`
GROUP BY gender;