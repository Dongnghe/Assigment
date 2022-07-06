use Assigment
select sgt.StudentId, sgt.Code, sgt.Member, sgt.Surname, sgt.MiddleName, sgt.GivenName , sgt.GroupId, sgt.[Date], sgt.TimetableCode ,er.Attended from
(select sg.StudentId, sg.Code, sg.Member, sg.Surname, sg.MiddleName, sg.GivenName , sg.GroupId, tt.[Date],tt.TimetableCode from
(select s.StudentId, s.Code, s.Member, s.Surname, s.MiddleName, s.GivenName , g.GroupId
	from Student s 
	inner join StudentGroupRelation sgr 
		on sgr.StudentId = s.StudentId
	inner join [Group] g 
		on sgr.GroupId = g.GroupId
	where g.GroupId = 1) sg
inner join TimeTable tt
on tt.GroupId = sg.GroupId) sgt 
inner join Enroll er
	on er.StudentId = sgt.StudentId
	and sgt.TimetableCode = er.TimetableCode