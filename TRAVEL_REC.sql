/****** Object:  Table [dbo].[Registration]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
DROP TABLE [dbo].[Registration]
GO
/****** Object:  Table [dbo].[OtpData]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OtpData]') AND type in (N'U'))
DROP TABLE [dbo].[OtpData]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booking]') AND type in (N'U'))
DROP TABLE [dbo].[Booking]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Packages]') AND type in (N'U'))
DROP TABLE [dbo].[Packages]
GO
/****** Object:  Table [dbo].[Stud_Data]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stud_Data]') AND type in (N'U'))
DROP TABLE [dbo].[Stud_Data]
GO
/****** Object:  Table [dbo].[SearchResult]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchResult]') AND type in (N'U'))
DROP TABLE [dbo].[SearchResult]
GO
/****** Object:  Table [dbo].[UserRatings]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRatings]') AND type in (N'U'))
DROP TABLE [dbo].[UserRatings]
GO
/****** Object:  Table [dbo].[AdminReg]    Script Date: 04/13/2019 20:30:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminReg]') AND type in (N'U'))
DROP TABLE [dbo].[AdminReg]
GO
/****** Object:  Table [dbo].[AdminReg]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminReg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdminReg](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[address] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[mobile] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[email] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pwd] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[photo] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_AdminReg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[AdminReg] ([id], [name], [address], [mobile], [email], [username], [pwd], [photo]) VALUES (1, N'Raj Travels', N'Panchwati', N'9503351933', N'rajtravel@gmail.com', N'raj', N'raj', N'p_1.jpg')
INSERT [dbo].[AdminReg] ([id], [name], [address], [mobile], [email], [username], [pwd], [photo]) VALUES (2, N'Purple Travels', N'Panchwati Amravati', N'9865321455', N'purple@gmail.com', N'purple', N'123', N'p_2.jpg')
INSERT [dbo].[AdminReg] ([id], [name], [address], [mobile], [email], [username], [pwd], [photo]) VALUES (3, N'Kesari Patil', N'Rathi Nagar', N'9503351933', N'kesaripatil@gmail.com', N'kesari', N'kesari', N'p_3.jpg')
/****** Object:  Table [dbo].[UserRatings]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRatings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRatings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [smallint] NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pid] [int] NULL,
 CONSTRAINT [PK_UserRatings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[UserRatings] ON
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (38, 3, N'Cost', N'purple', 4)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (39, 4, N'Cost', N'purple', 4)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (40, 2, N'Location', N'purple', 4)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (41, 3, N'Location', N'purple', 4)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (42, 4, N'Location', N'purple', 5)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (43, 5, N'Location', N'purple', 5)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (44, 4, N'Location', N'purple', 4)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (45, 4, N'Location', N'purple', 4)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (46, 4, N'Location', N'raj', 1)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (47, 3, N'Service', N'purple', 5)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (48, 5, N'Cost', N'purple', 5)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (49, 1, N'Service', N'raj', 2)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (50, 5, N'Cost', N'raj', 1)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (51, 3, N'Cost', N'raj', 6)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (52, 5, N'Location', N'raj', 6)
INSERT [dbo].[UserRatings] ([Id], [Rating], [status], [username], [pid]) VALUES (53, 5, N'Service', N'raj', 6)
SET IDENTITY_INSERT [dbo].[UserRatings] OFF
/****** Object:  Table [dbo].[SearchResult]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchResult]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchResult](
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pid] [int] NULL,
	[rating] [int] NULL
)
END
GO
INSERT [dbo].[SearchResult] ([username], [pid], [rating]) VALUES (N'purple', 4, 13)
INSERT [dbo].[SearchResult] ([username], [pid], [rating]) VALUES (N'purple', 5, 9)
/****** Object:  Table [dbo].[Stud_Data]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stud_Data]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stud_Data](
	[name] [nvarchar](max) COLLATE Latin1_General_CI_AI NULL,
	[rollno] [int] NULL
)
END
GO
INSERT [dbo].[Stud_Data] ([name], [rollno]) VALUES (N'Ram', 1)
/****** Object:  Table [dbo].[Packages]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Packages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Packages](
	[id] [int] NOT NULL,
	[pname] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[season] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[theme] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[duration] [int] NULL,
	[location] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[details] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[subpack] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[cost] [int] NULL,
	[photo] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[hotelname] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[hoteldetails] [nvarchar](max) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (1, N'Shimala Tour', N'Winter', N'Historical', 7, N'shimal, kulu manali', N'Good Place', N'kulu manali', 10000, N'pk_2.jpg', N'raj', N'Active', NULL, NULL)
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (2, N'Delhi Tour', N'Winter', N'Historical', 8, N'Delhi', N'Good Package', N'Delhi', 12000, N'pk_2.jpg', N'raj', N'Active', NULL, NULL)
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (3, N'Jaipur Tour', N'Winter', N'Historical', 6, N'Jaipur', N'Good One', N'Jaipur', 17000, N'pk_3.jpg', N'raj', N'Deactive', NULL, NULL)
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (4, N'Tiru Tour', N'Spring', N'Jungle Safari', 10, N'Tiruanatpuram', N'Good', N'Tiru,Madurai', 12000, N'pk_4.jpg', N'purple', N'Active', NULL, NULL)
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (5, N'Bangalore Tour', N'Spring', N'Adventure', 12, N'Bangalore', N'Best', N'Bagalore', 15000, N'pk_5.jpg', N'purple', N'Active', N'Nisarg Hotel', N'AC rooms Available')
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (6, N'Gujrat Travel', N'Summer', N'Historical', 6, N'Gandhinagar', N'its good place', N'amravati', 6000, N'pk_6.jpg', N'raj', N'Active', NULL, NULL)
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (7, N'Maharshtra Travel', N'Select', N'Select', 4, N'Ajintha', N'Good Place', N'Werul', 4500, N'pk_7.jpg', N'raj', N'Active', NULL, NULL)
INSERT [dbo].[Packages] ([id], [pname], [season], [theme], [duration], [location], [details], [subpack], [cost], [photo], [username], [status], [hotelname], [hoteldetails]) VALUES (8, N'Goa', N'Summer', N'Adventure', 5, N'Mulund beach', N'good', N'Justin church', 20000, N'pk_8.jpg', N'raj', N'Active', NULL, NULL)
/****** Object:  Table [dbo].[Feedback]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Feedback](
	[id] [int] NOT NULL,
	[details] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[travel_username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pid] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Feedback] ([id], [details], [username], [travel_username], [pid]) VALUES (1, N'it was awesome tour.', N'rani', N'purple', N'5')
INSERT [dbo].[Feedback] ([id], [details], [username], [travel_username], [pid]) VALUES (2, N'it was awesome tour.', N'rani', N'purple', N'5')
INSERT [dbo].[Feedback] ([id], [details], [username], [travel_username], [pid]) VALUES (3, N'Awesome Tour', N'rani', N'raj', N'1')
INSERT [dbo].[Feedback] ([id], [details], [username], [travel_username], [pid]) VALUES (4, N'it is best pakage', N'mayuresh', N'raj', N'6')
/****** Object:  Table [dbo].[Booking]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pid] [int] NULL,
	[regdate] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[bookdate] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[feedback_allow_date] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Booking] ON
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (5, N'mayuresh', 5, N'06/04/2017', N'08/04/2017', N'20/04/2017')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (6, N'mayuresh', 3, N'06/04/2017', N'06/04/2017', N'12/04/2017')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (8, N'amol', 7, N'11/04/2017', N'11/04/2017', N'15/04/2017')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (9, N'ram', 6, N'11/04/2017', N'11/04/2017', N'17/04/2017')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (10, N'ranjit', 2, N'11/04/2017', N'12/04/2017', N'20/04/2017')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (11, N'pranali', 5, N'10/02/2018', N'12/02/2018', N'24/02/2018')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (12, N'krishna', 2, N'22/03/2018', N'29/03/2018', N'06/04/2018')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (13, N'arun', 8, N'27/03/2018', N'28/03/2018', N'02/04/2018')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (14, N'radha', 6, N'27/03/2018', N'01/04/2018', N'07/04/2018')
INSERT [dbo].[Booking] ([id], [username], [pid], [regdate], [bookdate], [feedback_allow_date]) VALUES (15, N'viraj', 5, N'05/05/2018', N'07/05/2018', N'19/05/2018')
SET IDENTITY_INSERT [dbo].[Booking] OFF
/****** Object:  Table [dbo].[OtpData]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OtpData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OtpData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[otp] [int] NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_OtpData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[OtpData] ON
INSERT [dbo].[OtpData] ([id], [otp], [username], [status]) VALUES (1, 4818, N'raj', N'Pending')
INSERT [dbo].[OtpData] ([id], [otp], [username], [status]) VALUES (2, 7050, N'ram', N'Pending')
INSERT [dbo].[OtpData] ([id], [otp], [username], [status]) VALUES (3, 7212, N'ranjit', N'Pending')
SET IDENTITY_INSERT [dbo].[OtpData] OFF
/****** Object:  Table [dbo].[Registration]    Script Date: 04/13/2019 20:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Registration](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[gender] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[occupation] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[salary] [int] NULL,
	[address] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[mobile] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[qua] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[email] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pwd] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[photo] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[interest_status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (1, N'Amit Sawant', N'Male', N'Software Engineer', 25000, N'Rathi Nagar', N'9865856885', N'MCA', N'amit@gmail.com', N'amit', N'amit', N'p_1.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (2, N'Manoj Tiwari', N'Male', N'Software Engineer', 25000, N'Kathora Naka Amravati', N'9865745522', N'MCA', N'manoj@gmail.com', N'manoj', N'manu', N'p_2.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (3, N'Rani Patel', N'Female', N'Software Engineer', 45000, N'Kathora Naka', N'9865324578', N'MCA', N'rani@gmail.com', N'rani', N'rani', N'p_3.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (4, N'Mayuresh Patel', N'Male', N'Software Engineer', 40000, N'Rathi Nagar', N'9865225545', N'ME', N'mayur@gmail.com', N'mayuresh', N'm123', N'p_4.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (5, N'Amol Rana', N'Male', N'Software Engineer', 25000, N'Ravi Nagar', N'9503351933', N'MCA', N'amolrana@gmail.com', N'amol', N'123', N'DummyPhoto.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (6, N'Ram Pradhan', N'Male', N'Software Engineer', 20000, N'Rathi Nagar', N'8983692376', N'Mcom', N'rampradhan@gmail.com', N'ram', N'seeta', N'p_6.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (7, N'Ranjit Tarale', N'Male', N'Software Engineer', 450000, N'Ravi Nagar', N'8149168160', N'BE', N'ranjit@gmail.com', N'ranjit', N'ranjit', N'p_7.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (8, N'Arun Pratap', N'Male', N'Clerk', 40000, N'Rathi Nagar', N'7845125544', N'Bcom', N'arun@gmail.com', N'arun', N'arun123', N'p_8.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (9, N'Pranali Jadhav', N'Female', N'Clerk', 35000, N'Ravi Nagar', N'7845125566', N'BCom', N'pranalijadhav@gmail.com', N'pranali', N'p123', N'p_9.jpg', NULL)
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (10, N'Sachin Deshmukh', N'Male', N'Clerk', 35000, N'Ravi Nagar', N'9503351933', N'Mcom', N'sachin@gmail.com', N'sachin', N'sachin123', N'p_10.jpg', N'Historical')
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (11, N'Radha Rane', N'Female', N'Clerk', 40000, N'rathi nagar', N'7387303968', N'Mcom', N'radha@gmail.com', N'radha', N'r1234', N'p_11.jpg', N'Historical')
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (12, N'Viraj Sahay', N'Male', N'Clerk', 35000, N'Ram Nagar', N'9503351933', N'Mcom', N'virajsahay@gmail.com', N'viraj', N'viraj', N'p_12.jpg', N'Adventure')
INSERT [dbo].[Registration] ([id], [name], [gender], [occupation], [salary], [address], [mobile], [qua], [email], [username], [pwd], [photo], [interest_status]) VALUES (13, N'Rushi Patil', N'Male', N'Clerk', 45000, N'Rathi nagar', N'9503351933', N'Mcom', N'rushi@gmail.com', N'rushi', N'rushi', N'p_13.jpg', N'Adventure')
