USE PD_321

SELECT	last_name+' '+first_name+' '+middle_name AS '�.�.� �������������',
		[����������] = discipline_name
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE teacher_id = teacher AND discipline = discipline_id AND last_name = '�������'
ORDER BY last_name, first_name, middle_name