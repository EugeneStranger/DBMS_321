USE PD_321

SELECT
	[�����������]			= Directions.direction_name,
	[���������� ���������]	= COUNT(stud_id)
FROM	 Directions, Students, Groups
WHERE
	direction_id = direction AND group_id = [group]
GROUP BY direction_name