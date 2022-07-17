use Assigment
select s.StudentId, 
	s.Code, 
	S.Member,
	CONCAT(s.Surname,' ',s.MiddleName,' ',s.GivenName) as FullName,	
	er.Attended, tt.[Date]
	from [Group] g 			
	inner join StudentGroupRelation sgr 
		on sgr.GroupId = g.GroupId
		AND g.GroupId = 1
	inner join Student s 
		on sgr.StudentId = s.StudentId
	inner join TimeTable tt
		on tt.GroupId = g.GroupId  
	inner join Enroll er
		on er.StudentId = s.StudentId
		and tt.TimetableCode = er.TimetableCode
	order by s.StudentId
		
select distinct tt.GroupId, g.GroupCode , c.CourseCode 
from Instructor i
	inner join TimeTable tt
		on tt.InstructorId = i.InstructorId
		and i.InstructorId = 0
	inner join [Group] g
		on g.GroupId = tt.GroupId
	inner join Course c
		on g.CourseId = c.CourseId
	inner join Term t
		on t.TermId = g.TermID
		and t.TermId = 15

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

select tt.TimetableCode , tt.Date , tt.Taken
	from [Group] g
	inner join [TimeTable] tt
		on g.GroupId = tt.GroupId
		and g.GroupId = 1
	order by tt.Date
	
	
	