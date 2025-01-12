USE [StaffTraining]
GO
SET IDENTITY_INSERT [dbo].[Attendees] ON 
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (3, N'Kamil', N'Paszkowski', CAST(N'2022-05-22T15:50:09.5117935' AS DateTime2), CAST(N'2022-05-22T15:50:09.5294999' AS DateTime2), 8, 0, 3)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (4, N'Marcin', N'Michalik', CAST(N'2022-05-22T15:51:30.7849329' AS DateTime2), CAST(N'2022-05-22T15:51:30.7906843' AS DateTime2), 8, 0, 4)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (5, N'Jimmy', N'Bogard', CAST(N'2022-05-22T15:52:57.9053837' AS DateTime2), CAST(N'2022-05-22T15:52:57.9117160' AS DateTime2), 8, 0, 5)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (6, N'Kuba', N'Hajda', CAST(N'2022-05-22T15:54:40.7934124' AS DateTime2), CAST(N'2022-05-22T15:54:40.7934126' AS DateTime2), 8, 0, 6)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (7, N'Marlena', N'Stoicka', CAST(N'2022-05-22T15:55:05.0701314' AS DateTime2), CAST(N'2022-05-22T15:55:05.0701317' AS DateTime2), 8, 0, 7)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (8, N'Kamil', N'Szwarc', CAST(N'2022-05-22T15:55:22.6022047' AS DateTime2), CAST(N'2022-05-22T15:55:22.6022049' AS DateTime2), 8, 0, 8)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (9, N'Piotr', N'Pawlec', CAST(N'2022-05-22T15:55:40.4877560' AS DateTime2), CAST(N'2022-05-22T15:55:40.4877561' AS DateTime2), 8, 0, 9)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (10, N'Joanna', N'Jęczelewska', CAST(N'2022-05-22T15:56:11.6988316' AS DateTime2), CAST(N'2022-05-22T15:56:11.6988319' AS DateTime2), 8, 0, 10)
GO
INSERT [dbo].[Attendees] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (10004, N'Elon', N'Musk', CAST(N'2022-05-23T09:49:47.1050346' AS DateTime2), CAST(N'2022-05-23T09:49:59.6266817' AS DateTime2), 8, 0, 10004)
GO
SET IDENTITY_INSERT [dbo].[Attendees] OFF
GO
SET IDENTITY_INSERT [dbo].[TrainingAttendeeStatuses] ON 
GO
INSERT [dbo].[TrainingAttendeeStatuses] ([Id], [Name]) VALUES (1, N'Interested')
GO
INSERT [dbo].[TrainingAttendeeStatuses] ([Id], [Name]) VALUES (2, N'Confirmed')
GO
SET IDENTITY_INSERT [dbo].[TrainingAttendeeStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Lecturers] ON 
GO
INSERT [dbo].[Lecturers] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (3, N'Kamil', N'Paszkowski', CAST(N'2022-05-22T15:50:09.4991749' AS DateTime2), CAST(N'2022-05-22T15:50:09.5294997' AS DateTime2), 0, 0, 3)
GO
INSERT [dbo].[Lecturers] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (4, N'Marcin', N'Michalik', CAST(N'2022-05-22T15:51:30.7776221' AS DateTime2), CAST(N'2022-05-22T15:51:30.7906841' AS DateTime2), 0, 0, 4)
GO
INSERT [dbo].[Lecturers] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (5, N'Jimmy', N'Bogard', CAST(N'2022-05-22T15:52:57.9001916' AS DateTime2), CAST(N'2022-05-22T15:52:57.9117150' AS DateTime2), 0, 0, 5)
GO
INSERT [dbo].[Lecturers] ([Id], [Firstname], [Lastname], [CreateDate], [UpdateDate], [AllowedHours], [IsDeleted], [UserProviderId]) VALUES (10003, N'Elon', N'Musk', CAST(N'2022-05-23T09:48:29.5859136' AS DateTime2), CAST(N'2022-05-23T09:49:59.6266453' AS DateTime2), 0, 0, 10004)
GO
SET IDENTITY_INSERT [dbo].[Lecturers] OFF
GO
SET IDENTITY_INSERT [dbo].[Technologies] ON 
GO
INSERT [dbo].[Technologies] ([Id], [Name], [Scope], [CreateDate], [UpdateDate]) VALUES (1, N'.NET', N'Backend', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-05-23T08:44:16.0235548' AS DateTime2))
GO
INSERT [dbo].[Technologies] ([Id], [Name], [Scope], [CreateDate], [UpdateDate]) VALUES (2, N'SQL', N'Backend', CAST(N'2022-05-22T16:00:13.2828669' AS DateTime2), CAST(N'2022-05-22T16:00:13.2828724' AS DateTime2))
GO
INSERT [dbo].[Technologies] ([Id], [Name], [Scope], [CreateDate], [UpdateDate]) VALUES (3, N'Entity Framework', N'Backend', CAST(N'2022-05-22T16:00:22.7642073' AS DateTime2), CAST(N'2022-05-22T16:00:22.7642076' AS DateTime2))
GO
INSERT [dbo].[Technologies] ([Id], [Name], [Scope], [CreateDate], [UpdateDate]) VALUES (4, N'React', N'Frontend', CAST(N'2022-05-22T16:00:29.5913737' AS DateTime2), CAST(N'2022-05-22T16:00:29.5913740' AS DateTime2))
GO
INSERT [dbo].[Technologies] ([Id], [Name], [Scope], [CreateDate], [UpdateDate]) VALUES (5, N'Vue', N'Frontend', CAST(N'2022-05-22T16:00:35.4009060' AS DateTime2), CAST(N'2022-05-22T16:00:35.4009062' AS DateTime2))
GO
INSERT [dbo].[Technologies] ([Id], [Name], [Scope], [CreateDate], [UpdateDate]) VALUES (10002, N'Angular', N'Frontend', CAST(N'2022-05-23T10:09:07.4490316' AS DateTime2), CAST(N'2022-05-23T10:09:10.6561564' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Technologies] OFF
GO
INSERT [dbo].[Trainings] ([Id], [Title], [Description], [Duration], [CreateDate], [UpdateDate], [TrainingDate], [LecturerId], [TechnologyId]) VALUES (N'bec804dc-a6ac-44ec-84a6-13e777d1c796', N'.NET 5 Wprowadzanie - Środowisko', N'', 90, CAST(N'2022-05-22T16:00:57.4907627' AS DateTime2), CAST(N'2022-05-22T16:00:57.4908253' AS DateTime2), CAST(N'2022-04-11T11:00:00.0000000' AS DateTime2), 3, 1)
GO
INSERT [dbo].[Trainings] ([Id], [Title], [Description], [Duration], [CreateDate], [UpdateDate], [TrainingDate], [LecturerId], [TechnologyId]) VALUES (N'7903e9ef-1e2d-4b4c-a61b-36338054b350', N'NET 5 Wprowadzanie - CQRS', N'', 360, CAST(N'2022-06-26T19:13:14.6671687' AS DateTime2), CAST(N'2022-06-26T19:13:14.6672229' AS DateTime2), CAST(N'2022-06-26T19:13:02.5190000' AS DateTime2), 3, 1)
GO
INSERT [dbo].[Trainings] ([Id], [Title], [Description], [Duration], [CreateDate], [UpdateDate], [TrainingDate], [LecturerId], [TechnologyId]) VALUES (N'09fca2d7-34fd-4507-83e0-7f6e251bacfb', N'.NET 5 Wprowadzanie - EntityFramework cz. 1', N'', 60, CAST(N'2022-05-22T16:02:24.8007769' AS DateTime2), CAST(N'2022-05-22T16:02:24.8007771' AS DateTime2), CAST(N'2022-05-09T11:00:00.0000000' AS DateTime2), 3, 1)
GO
INSERT [dbo].[Trainings] ([Id], [Title], [Description], [Duration], [CreateDate], [UpdateDate], [TrainingDate], [LecturerId], [TechnologyId]) VALUES (N'f7edc128-f721-4819-a74e-dbb6886ef45a', N'.NET 5 Wprowadzanie - EntityFramework cz. 2', N'', 60, CAST(N'2022-05-22T16:02:43.3057941' AS DateTime2), CAST(N'2022-05-22T16:02:43.3057944' AS DateTime2), CAST(N'2022-05-23T11:00:00.0000000' AS DateTime2), 3, 1)
GO
INSERT [dbo].[Trainings] ([Id], [Title], [Description], [Duration], [CreateDate], [UpdateDate], [TrainingDate], [LecturerId], [TechnologyId]) VALUES (N'b85d5437-adb2-4d78-bf69-e631a4fd1684', N'.NET 5 Wprowadzenie - WebAPI', N'', 60, CAST(N'2022-05-22T16:01:47.8431799' AS DateTime2), CAST(N'2022-05-22T16:01:47.8431859' AS DateTime2), CAST(N'2022-04-25T11:00:00.0000000' AS DateTime2), 3, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'bec804dc-a6ac-44ec-84a6-13e777d1c796', 3, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'bec804dc-a6ac-44ec-84a6-13e777d1c796', 4, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'bec804dc-a6ac-44ec-84a6-13e777d1c796', 5, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'09fca2d7-34fd-4507-83e0-7f6e251bacfb', 4, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'09fca2d7-34fd-4507-83e0-7f6e251bacfb', 7, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'09fca2d7-34fd-4507-83e0-7f6e251bacfb', 8, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'f7edc128-f721-4819-a74e-dbb6886ef45a', 3, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'f7edc128-f721-4819-a74e-dbb6886ef45a', 8, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'b85d5437-adb2-4d78-bf69-e631a4fd1684', 4, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'b85d5437-adb2-4d78-bf69-e631a4fd1684', 5, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'b85d5437-adb2-4d78-bf69-e631a4fd1684', 7, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'b85d5437-adb2-4d78-bf69-e631a4fd1684', 8, 1)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'bec804dc-a6ac-44ec-84a6-13e777d1c796', 6, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'bec804dc-a6ac-44ec-84a6-13e777d1c796', 10, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'7903e9ef-1e2d-4b4c-a61b-36338054b350', 4, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'7903e9ef-1e2d-4b4c-a61b-36338054b350', 5, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'09fca2d7-34fd-4507-83e0-7f6e251bacfb', 5, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'09fca2d7-34fd-4507-83e0-7f6e251bacfb', 6, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'f7edc128-f721-4819-a74e-dbb6886ef45a', 4, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'f7edc128-f721-4819-a74e-dbb6886ef45a', 5, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'f7edc128-f721-4819-a74e-dbb6886ef45a', 6, 2)
GO
INSERT [dbo].[TrainingAttendee] ([TrainingId], [AttendeeId], [StatusId]) VALUES (N'b85d5437-adb2-4d78-bf69-e631a4fd1684', 3, 2)
GO
SET IDENTITY_INSERT [identity].[Users] ON 
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (3, N'kamil.paszkowski@euvic.pl', NULL, N'Euvic')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (4, N'marcin.michalik@euvic.pl', NULL, N'Euvic1')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (5, N'jimmy.bogard@github.com', NULL, N'Jimmy')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (6, N'jakub.hajda@euvic.pl', NULL, N'jhajda')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (7, N'marlena.stoicka@euvic.pl', NULL, N'marlena')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (8, N'kamil.szwarc@euvic.pl', NULL, N'szwarc')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (9, N'piotr.pawlec@euvic.pl', NULL, N'ppp')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (10, N'joanna.jeczelewska@euvic.pl', NULL, N'asia123')
GO
INSERT [identity].[Users] ([Id], [Email], [Profile_EnableNotifications], [Password]) VALUES (10004, N'elon.musk@gmail.com', NULL, N'tesla')
GO
SET IDENTITY_INSERT [identity].[Users] OFF
GO
