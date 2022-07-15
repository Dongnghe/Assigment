use Assigment
select s.StudentId, 
	s.Code, 
	S.Member,
	CONCAT(s.Surname,' ',s.MiddleName,' ',s.GivenName) as FullName,	
	g.GroupId, tt.[Date], 
	tt.TimetableCode ,
	er.Attended 
	from Student s 
	inner join StudentGroupRelation sgr 
		on sgr.StudentId = s.StudentId
	inner join [Group] g 
		on sgr.GroupId = g.GroupId
		AND g.GroupId = 1
	inner join TimeTable tt
		on tt.GroupId = g.GroupId  
	inner join Enroll er
		on er.StudentId = s.StudentId
	order by s.StudentId
		and tt.TimetableCode = er.TimetableCode
select tt.GroupId, g.GroupCode , c.CourseCode 
from Instructor i
	inner join TimeTable tt
		on tt.InstructorId = i.InstructorId
		and i.InstructorId = 1
	inner join [Group] g
		on g.GroupId = tt.GroupId
	inner join Course c
		on g.CourseId = c.CourseId
	inner join Term t
		on t.TermId = g.TermID
		and t.TermId = ?
select t.TermId, t.TermName	from 
	(select g.TermId
	from Instructor i
	inner join TimeTable tt
		on tt.InstructorId = i.InstructorId
		and i.InstructorId = 1
	inner join [Group] g
		on g.GroupId = tt.GroupId
		group by g.TermID) gx
	inner join Term t
		on t.TermId = gx.TermID


	
	
	