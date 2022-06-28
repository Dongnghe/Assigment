select s.StudentId, s.Code, s.Member, s.Surname, s.MiddleName, s.GivenName , g.GroupId
	from Student s, StudentGroupRelation sgr , [Group] g 
	where s.StudentId = sgr.StudentId 
	and sgr.GroupId = g.GroupId 
	and g.GroupId = 1
select * from Term
select * from Department
select * from Course
select * from [Group]