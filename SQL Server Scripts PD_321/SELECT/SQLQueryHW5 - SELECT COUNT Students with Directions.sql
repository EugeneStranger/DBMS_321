USE PD_321

SELECT
	[Направление]			= Directions.direction_name,
	[Количество студентов]	= COUNT(stud_id)
FROM	 Directions, Students, Groups
WHERE
	direction_id = direction AND group_id = [group]
GROUP BY direction_name