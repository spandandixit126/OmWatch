SET IDENTITY_INSERT [dbo].[People] ON
INSERT INTO [dbo].[People] ([Id], [UserName], [JN], [PhoneNo], [Location], [Password], [CPassword], [Verify], [UserType]) VALUES (1, N'ADMIN', N'OMWATCH', N'1234567890', N'Rajkot', N'OMWATCH_ADMIN', N'OMWATCH_ADMIN', 1, N'Admin')
INSERT INTO [dbo].[People] ([Id], [UserName], [JN], [PhoneNo], [Location], [Password], [CPassword], [Verify], [UserType]) VALUES (2, N'user1', N'xyz', N'1212121212', N'Gandhinagar', N'mahadev', N'mahadev', 1, N'User')
INSERT INTO [dbo].[People] ([Id], [UserName], [JN], [PhoneNo], [Location], [Password], [CPassword], [Verify], [UserType]) VALUES (6, N'user2', N'abc', N'1231231231', N'ahmedabad', N'12312', N'12312', 1, N'User')
INSERT INTO [dbo].[People] ([Id], [UserName], [JN], [PhoneNo], [Location], [Password], [CPassword], [Verify], [UserType]) VALUES (7, N'user3', N'pqr', N'1231241251', N'Porbandar', N'321321', N'321321', 0, N'User')
SET IDENTITY_INSERT [dbo].[People] ON
UPDATE People SET CPassword=Password
 