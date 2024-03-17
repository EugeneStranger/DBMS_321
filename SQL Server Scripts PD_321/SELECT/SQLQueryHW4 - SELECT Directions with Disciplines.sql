USE PD_321

SELECT
		[Направление] = direction_name,
		[Дисциплина]  = discipline_name
FROM Directions, Disciplines, DisciplinesDirectionsRelation
WHERE discipline_id = discipline AND direction_id = direction AND direction_name LIKE ('%Разработка%')
ORDER BY discipline_name