USE PD_321

SELECT	[����������] = discipline_name,
		last_name+' '+first_name+' '+middle_name AS '�.�.� �������������'		
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE teacher_id = teacher AND discipline = discipline_id AND discipline_name LIKE ('%C#%')
ORDER BY discipline_name, last_name