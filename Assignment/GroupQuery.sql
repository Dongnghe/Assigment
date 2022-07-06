use Assigment;
select s.StudentId, 
	s.Code, 
	s.Member, 
	s.Surname, 
	s.MiddleName, 
	s.GivenName , 
	g.GroupId
	from Student s 
	inner join StudentGroupRelation sgr 
		on s.StudentId = sgr.StudentId 
	inner join [Group] g 
		on sgr.GroupId = g.GroupId 
	where g.GroupId = 1;
select * from Term 
select * from Department
select * from Course where id =
select * from [Group] where GroupCode =