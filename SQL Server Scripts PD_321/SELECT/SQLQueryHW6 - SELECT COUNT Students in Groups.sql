USE PD_321

SELECT
	[Группа]	 			= Groups.group_name,
	[Количество студентов]	= COUNT(stud_id)
FROM	 Students, Groups
WHERE
	group_id = [group]
GROUP BY group_name