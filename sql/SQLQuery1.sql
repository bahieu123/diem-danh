SELECT [UserID],[email],[password],[name],[dob],[gender],[phone],[address], b.[majorsID],b.MajorsName ,c.[roleID], c.roleName
                     FROM [User] a
                     inner join Majors b on a.majorsID = b.MajorsID
                     inner join [Role] c on  a.roleID = c.roleID 
                     where [email] = ? and [password] = ?

-- table [User] take UserID,email,password,name,dob,gender,phone,address
-- table [Majors] take majorsID,MajorsName
-- table [Role] take roleID,roleName

use [project_Check_Attandance]
Select Class.ClassName, [User].UserID, [User].name, [User].email, [User].password, [User].dob,[User].gender, [User].phone, [User].address, [User].majorsID, Majors.MajorsName , [User].roleID, [Role].roleName
                    from Class 
                    left join ClassMember on Class.ClassID = ClassMember.ClassID
                    left join [User] on ClassMember.UserID = [User].UserID
                    left join Majors on [User].majorsID = [Majors].MajorsID
                    left join [Role] on [User].roleID = [Role].roleID
                    where Class.ClassID = 1
--table [class] classId,className 
--table [ClassMember] 
-- table [User] take UserID,email,password,name,dob,gender,phone,address,
--table [Majors] take majorsID,MajorsName
--table [Role] take roleID,roleName

SELECT ClassID, ClassName FROM Class


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
-- table [Attendance] take AttenID,studentID,Attendance,note,Date,studentName
-- table [Schedule] take ScheID,StartDate,EndDate
-- take [Subject] take SubID,SubCode,Subname,numberSlot
-- take [Classs] take ClassID,ClassName
-- take [Account] take UserID,email,password,name,dob,address,phone
-- take [Majors] take majorsID,MajorsName
-- take [Role] take roleID,roleName

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
                    where  Attendance.ScheID = 6  and [Date] = '2022-01-05' and Attendance.SlotID = 2



Select ScheID,  [Schedule].UserID, [User].name, [User].email, [User].password, [User].dob,[User].gender, [User].phone, [User].address,
                    [User].majorsID, Majors.MajorsName , [User].roleID, [Role].roleName, Schedule.ClassID, Class.ClassName, [Subject].SubID, [Subject].SubCode,[Subject].Subname, 
                    [Subject].numberSlot, Schedule.StartDate, Schedule.EndDate
                    from Schedule 
                    left join [User] on Schedule.UserID = [User].UserID
                    left join Majors on [User].majorsID = [Majors].MajorsID
                    left join [Role] on [User].roleID = [Role].roleID
                    left join [Subject] on Schedule.SubID = [Subject].SubID
                    left join [Class] on Schedule.ClassID = [Class].ClassID where Schedule.UserID = ?

Select distinct Attendance.ScheID, [Subject].SubCode, [Date], Attendance.SlotID, Slot.[Time]
                    from Attendance left join Schedule 
                    on Attendance.ScheID = Schedule.ScheID
                    left join [Subject] on Schedule.SubID = [Subject].SubID
                    left join Slot on Attendance.SlotID = Slot.SlotID
                    where Schedule.UserID = ? and Schedule.ClassID = ?

select * from Class where ClassID = ?