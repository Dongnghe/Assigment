select TimetableCode ,
	GroupId, 
	r.RoomName,
	tt.[Date],
	tt.Slot
	from TimeTable tt
	inner join Room r
		on tt.RoomId = r.RoomId
	inner join Slot s
		on s.Slot = tt.Slot
	where tt.[Date] >= ?
	and tt.[Date] <= ?
	;