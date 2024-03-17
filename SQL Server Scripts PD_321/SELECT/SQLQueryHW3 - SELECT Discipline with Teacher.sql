USE PD_321

SELECT	[Дисциплина] = discipline_name,
		last_name+' '+first_name+' '+middle_name AS 'Ф.И.О преподавателя'		
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE teacher_id = teacher AND discipline = discipline_id AND discipline_name LIKE ('%C#%')
ORDER BY discipline_name, last_name