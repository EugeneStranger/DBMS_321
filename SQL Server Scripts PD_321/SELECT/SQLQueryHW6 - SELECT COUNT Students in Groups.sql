USE PD_321

SELECT
	[������]	 			= Groups.group_name,
	[���������� ���������]	= COUNT(stud_id)
FROM	 Students, Groups
WHERE
	group_id = [group]
GROUP BY group_name