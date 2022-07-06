use Assigment
select TimetableCode ,
	GroupId, 
	r.RoomName,
	tt.[Date],
	tt.Slot
	from TimeTable tt 
		inner join Room r 
		on tt.RoomId = r.RoomId
	;
select sg.GroupId,
	sg.FullName,
	sg.GroupId,
	tt.TimetableCode from
(select s.StudentId, 
	CONCAT(s.Surname,' ',s.MiddleName,' ',s.GivenName) as FullName,
	g.GroupId
	from Student s 
	inner join StudentGroupRelation sgr 
		on s.StudentId = sgr.StudentId 
	inner join [Group] g 
		on  sgr.GroupId = g.GroupId
	where g.GroupId = 1) sg 
	inner join TimeTable tt
		on tt.GroupId = sg.GroupId
	where tt.TimetableCode = 2;

