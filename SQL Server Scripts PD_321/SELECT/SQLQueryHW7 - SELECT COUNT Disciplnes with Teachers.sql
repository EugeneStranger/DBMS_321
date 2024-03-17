USE PD_321

SELECT
	[Дисциплина]	 			= discipline_name,
	[Количество преподавателей]	= COUNT(teacher_id)
FROM	 Disciplines, Teachers, TeachersDisciplinesRelation
WHERE
	discipline_id = discipline AND teacher_id = teacher
GROUP BY discipline_id, discipline_name