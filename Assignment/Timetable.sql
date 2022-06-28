select TimetableCode ,
	GroupId, 
	r.RoomName,
	tt.[Date],
	tt.Slot
	from TimeTable tt, Room r, 
	where tt.RoomId = r.RoomId
	;