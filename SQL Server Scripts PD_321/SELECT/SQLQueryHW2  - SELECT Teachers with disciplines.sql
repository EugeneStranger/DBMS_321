USE PD_321

SELECT	last_name+' '+first_name+' '+middle_name AS 'Ф.И.О преподавателя',
		[Дисциплина] = discipline_name
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE teacher_id = teacher AND discipline = discipline_id AND last_name = 'Покидюк'
ORDER BY last_name, first_name, middle_name