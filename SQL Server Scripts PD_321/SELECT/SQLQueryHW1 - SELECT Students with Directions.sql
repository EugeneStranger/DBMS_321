USE PD_321

SELECT	 Students.last_name+' '+Students.first_name+' '+Students.middle_name AS '�.�.� ��������',
		 DATEDIFF(hour,Students.birth_date, GETDATE())/8766 AS '�������',
		 [������] = group_name,
		 [�����������] = direction_name
FROM Students, Groups, Directions
WHERE Students.[group] = Groups.group_id AND Groups.direction = direction_id
ORDER BY group_name, last_name, first_name