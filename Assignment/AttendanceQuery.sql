use Assigment
select TimetableCode ,
	g.GroupId, 
	g.GroupCode,
	r.RoomName,
	tt.[Date],
	tt.Slot,
	i.InstructorId,
	tt.Taken,
	tt.TakenDate,
	c.CourseCode
	from TimeTable tt 
	inner join Room r 
		on TimetableCode = 2
		and tt.RoomId = r.RoomId
	inner join [Group] g
		on g.GroupId = tt.GroupId
	inner join Instructor i
		on i.InstructorId = tt.InstructorId
	inner join Course c
		on c.CourseId = g.CourseId
		
	;
select g.GroupId,
	s.StudentId, 
	s.Code,
	CONCAT(s.Surname,' ',s.MiddleName,' ',s.GivenName) as FullName,
	tt.TimetableCode,
	e.Attended 
	from TimeTable tt
	inner join [Group] g 
		on  tt.GroupId = g.GroupId
		and tt.TimetableCode = 2
	inner join StudentGroupRelation sgr 
		on sgr.GroupId = g.GroupId
	inner join Student s
		on sgr.StudentId = s.StudentId
	inner join Enroll e
		on e.TimetableCode = tt.TimetableCode
		and e.StudentId = s.StudentId

