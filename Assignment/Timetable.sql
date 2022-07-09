select TimetableCode ,
	tt.GroupId, 
	g.GroupId,
	r.RoomName,
	tt.[Date],
	tt.Slot,
	InstructorId
	from TimeTable tt
	inner join Room r
		on tt.RoomId = r.RoomId
	inner join Slot s
		on s.Slot = tt.Slot
	inner join [Group] g
		on tt.GroupId = g.GroupId
	where tt.[Date] >= '2022-01-01'
	and tt.[Date] <= '2022-12-30'
	;