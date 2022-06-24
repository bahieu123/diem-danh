"SELECT [UserID],[email],[password],[name],[dob],[gender],[phone],[address], b.[majorsID],b.MajorsName ,c.[roleID], c.roleName
                    FROM [User] 
                    inner join Majors b on a.majorsID = b.MajorsID
                    inner join [Role] c on  a.roleID = c.roleID 
                    where [email] = ? and [password] = ?


// dua ra cac du lieu sinh vien check userID
use [project_Check_Attandance]
Select AttenID, Attendance.UserID as studentID, a.[name] as studentName ,Attendance.ScheID, Schedule.UserID, [User].email, [User].[password], [User].[name], [User].dob,
                    [User].gender, [User].[address], [User].phone, [User].majorsID, Majors.MajorsName, [User].roleID,
                    [Role].roleName, Schedule.ClassID, Class.ClassName, [Subject].SubID, [Subject].SubCode,[Subject].Subname, 
                    [Subject].numberSlot, Schedule.StartDate, Schedule.EndDate,[Date], Attendance.SlotID, Slot.[Time],Attendance, note from Attendance
                    left join Schedule on Attendance.ScheID = Schedule.ScheID
                    left join [User] on Schedule.UserID = [User].UserID 
                    left join [Majors] on [User].majorsID = [Majors].MajorsID
                    left join [Role] on  [User].roleID = [Role].roleID
                    left join [Subject] on [Schedule].SubID = [Subject].SubID
                    left join [Class] on [Schedule].ClassID = [Class].ClassID
                    left join [Slot] on [Attendance].SlotID = Slot.SlotID
                    left join [User] a on [Attendance].UserID = a.UserID
                    where Attendance.UserID =3

// dua ra cac du lieu cua giao vien
use [project_Check_Attandance]
Select ScheID,  [Schedule].UserID, [User].name, [User].email, [User].password, [User].dob,[User].gender, [User].phone, [User].address, 
                    [User].majorsID, Majors.MajorsName , [User].roleID, [Role].roleName, Schedule.ClassID, Class.ClassName, [Subject].SubID, [Subject].SubCode,[Subject].Subname, 
                    [Subject].numberSlot, Schedule.StartDate, Schedule.EndDate
                    from Schedule 
                    left join [User] on Schedule.UserID = [User].UserID
                    left join Majors on [User].majorsID = [Majors].MajorsID
                    left join [Role] on [User].roleID = [Role].roleID
                    left join [Subject] on Schedule.SubID = [Subject].SubID
                    left join [Class] on Schedule.ClassID = [Class].ClassID where Schedule.UserID = 4

//in ra du lieu code
use [project_Check_Attandance]
Select distinct Attendance.ScheID, [Subject].SubCode, [Date], Attendance.SlotID, Slot.[Time]
      
              from Attendance left join Schedule 
                    on Attendance.ScheID = Schedule.ScheID
                    left join [Subject] on Schedule.SubID = [Subject].SubID
                    left join Slot on Attendance.SlotID = Slot.SlotID
                    where Schedule.UserID = 4 and Schedule.ClassID = 1

					use [project_Check_Attandance]
					select * from [dbo].[Schedule]