select TimetableCode ,
	GroupId, 
	r.RoomName,
	tt.[Date],
	tt.Slot
	from TimeTable tt, Room r 
	where tt.RoomId = r.RoomId
	;
select sl.GroupId,
	sl.FullName,
	sl.GroupId,
	e.Attended from
(select s.StudentId, 
	CONCAT(s.Surname,' ',s.MiddleName,' ',s.GivenName) as FullName,
	g.GroupId
	from Student s , StudentGroupRelation sgr, [Group] g 
	where s.StudentId = sgr.StudentId 
	and sgr.GroupId = g.GroupId) sl , Enroll e
	where = e.TimetableCode = ?;

