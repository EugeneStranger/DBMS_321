USE PD_321

SELECT
		[�����������] = direction_name,
		[����������]  = discipline_name
FROM Directions, Disciplines, DisciplinesDirectionsRelation
WHERE discipline_id = discipline AND direction_id = direction AND direction_name LIKE ('%����������%')
ORDER BY discipline_name