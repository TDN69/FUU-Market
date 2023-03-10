USE [prn_yarn_towel_management]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [CK__product__quantit__6A30C649]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [CK__product__quantit__534D60F1]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [CK__product__price__693CA210]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [CK__product__price__52593CB8]
GO
ALTER TABLE [dbo].[account] DROP CONSTRAINT [CK__account__account__68487DD7]
GO
ALTER TABLE [dbo].[account] DROP CONSTRAINT [CK__account__account__5165187F]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK__user__user_type___6754599E]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK__user__user_type___5070F446]
GO
ALTER TABLE [dbo].[transaction_detail] DROP CONSTRAINT [FK__transacti__trans__2C3393D0]
GO
ALTER TABLE [dbo].[transaction_detail] DROP CONSTRAINT [FK__transacti__produ__2B3F6F97]
GO
ALTER TABLE [dbo].[transaction] DROP CONSTRAINT [FK__transacti__user___66603565]
GO
ALTER TABLE [dbo].[transaction] DROP CONSTRAINT [FK__transacti__user___4D94879B]
GO
ALTER TABLE [dbo].[transaction] DROP CONSTRAINT [FK__transacti__trans__656C112C]
GO
ALTER TABLE [dbo].[transaction] DROP CONSTRAINT [FK__transacti__trans__4CA06362]
GO
ALTER TABLE [dbo].[role_account] DROP CONSTRAINT [FK__role_acco__role___6477ECF3]
GO
ALTER TABLE [dbo].[role_account] DROP CONSTRAINT [FK__role_acco__role___4BAC3F29]
GO
ALTER TABLE [dbo].[role_account] DROP CONSTRAINT [FK__role_acco__accou__6383C8BA]
GO
ALTER TABLE [dbo].[role_account] DROP CONSTRAINT [FK__role_acco__accou__4AB81AF0]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__status__47DBAE45]
GO
ALTER TABLE [dbo].[transaction] DROP CONSTRAINT [DF__transacti__statu__412EB0B6]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [DF__product__status__3A81B327]
GO
ALTER TABLE [dbo].[account] DROP CONSTRAINT [DF__account__status__37A5467C]
GO
/****** Object:  Index [UQ__account__4F5C27E79CF35376]    Script Date: 3/26/2022 9:44:25 AM ******/
ALTER TABLE [dbo].[account] DROP CONSTRAINT [UQ__account__4F5C27E79CF35376]
GO
/****** Object:  Table [dbo].[user_type]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_type]') AND type in (N'U'))
DROP TABLE [dbo].[user_type]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[transaction_type]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[transaction_type]') AND type in (N'U'))
DROP TABLE [dbo].[transaction_type]
GO
/****** Object:  Table [dbo].[transaction_detail]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[transaction_detail]') AND type in (N'U'))
DROP TABLE [dbo].[transaction_detail]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[transaction]') AND type in (N'U'))
DROP TABLE [dbo].[transaction]
GO
/****** Object:  Table [dbo].[role_account]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role_account]') AND type in (N'U'))
DROP TABLE [dbo].[role_account]
GO
/****** Object:  Table [dbo].[role]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[account]    Script Date: 3/26/2022 9:44:25 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account]') AND type in (N'U'))
DROP TABLE [dbo].[account]
GO
/****** Object:  Table [dbo].[account]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_username] [nvarchar](50) NOT NULL,
	[account_password] [nvarchar](50) NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](150) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_account]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_account](
	[account_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_type_id] [int] NULL,
	[user_id] [int] NULL,
	[total] [money] NULL,
	[total_paid] [money] NULL,
	[dateCreated] [date] NULL,
	[status] [bit] NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction_detail]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[transaction_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_transaction_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction_type]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction_type](
	[transaction_type_id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_type_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_type_id] [int] NULL,
	[user_name] [nvarchar](300) NOT NULL,
	[user_phone] [nvarchar](20) NULL,
	[user_address] [nvarchar](200) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_type]    Script Date: 3/26/2022 9:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_type](
	[user_type_id] [int] IDENTITY(1,1) NOT NULL,
	[user_type_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([account_id], [account_username], [account_password], [status]) VALUES (7, N'son', N'12345678', 1)
INSERT [dbo].[account] ([account_id], [account_username], [account_password], [status]) VALUES (8, N'admin', N'12345678', 1)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_name], [quantity], [price], [status]) VALUES (1, N'cold sheet', 5, 100.0000, 0)
INSERT [dbo].[product] ([product_id], [product_name], [quantity], [price], [status]) VALUES (2, N'water pipe', 12, 10000.0000, 1)
INSERT [dbo].[product] ([product_id], [product_name], [quantity], [price], [status]) VALUES (3, N'Roll steel', 10, 100000.0000, 1)
INSERT [dbo].[product] ([product_id], [product_name], [quantity], [price], [status]) VALUES (4, N'coban roll', 100, 1000.0000, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [role_name]) VALUES (1, N'Employee')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
INSERT [dbo].[role_account] ([account_id], [role_id]) VALUES (7, 1)
INSERT [dbo].[role_account] ([account_id], [role_id]) VALUES (8, 2)
GO
SET IDENTITY_INSERT [dbo].[transaction] ON 

INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (7, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (24, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (25, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (26, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (27, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (28, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (29, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (30, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (31, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (32, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (33, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (34, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (35, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (36, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (37, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (38, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (39, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (40, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (41, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (42, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (43, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (44, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (45, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (46, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (47, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (48, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (49, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (50, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (51, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (52, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (53, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (54, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (55, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (56, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (57, 1, 1, 10000.0000, 100.0000, CAST(N'2022-03-25' AS Date), 1, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (58, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (59, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (60, 1, 1, 500.0000, 40.0000, CAST(N'2022-03-25' AS Date), 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (61, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (62, 2, 3, 10000.0000, 10.0000, CAST(N'2022-03-25' AS Date), 1, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (63, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (64, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (65, 1, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (66, 2, NULL, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (67, 2, 3, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (68, 1, 1, NULL, NULL, NULL, 0, 7)
INSERT [dbo].[transaction] ([transaction_id], [transaction_type_id], [user_id], [total], [total_paid], [dateCreated], [status], [account_id]) VALUES (69, 1, NULL, NULL, NULL, NULL, 0, 7)
SET IDENTITY_INSERT [dbo].[transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[transaction_detail] ON 

INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (3, 1, 7, 5, 50.0000)
INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (4, 2, 24, 1, 50.0000)
INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (5, 1, 25, 1, 50.0000)
INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (6, 4, 57, 10, 10000.0000)
INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (7, 1, 60, 5, 500.0000)
INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (8, 2, 62, 1, 10000.0000)
INSERT [dbo].[transaction_detail] ([id], [product_id], [transaction_id], [quantity], [price]) VALUES (9, 3, 67, 100, 10000000.0000)
SET IDENTITY_INSERT [dbo].[transaction_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[transaction_type] ON 

INSERT [dbo].[transaction_type] ([transaction_type_id], [transaction_type_name]) VALUES (1, N'import')
INSERT [dbo].[transaction_type] ([transaction_type_id], [transaction_type_name]) VALUES (2, N'export')
SET IDENTITY_INSERT [dbo].[transaction_type] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [user_type_id], [user_name], [user_phone], [user_address], [status]) VALUES (1, 1, N'son', N'111111111', N'cam trung', 1)
INSERT [dbo].[user] ([user_id], [user_type_id], [user_name], [user_phone], [user_address], [status]) VALUES (2, 2, N'ha', N'111111111', N'ha noi', 1)
INSERT [dbo].[user] ([user_id], [user_type_id], [user_name], [user_phone], [user_address], [status]) VALUES (3, 2, N'son', N'111111111', N'ha noi', 1)
INSERT [dbo].[user] ([user_id], [user_type_id], [user_name], [user_phone], [user_address], [status]) VALUES (4, 2, N'khanh', N'222222222', N'ha noi', 1)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_type] ON 

INSERT [dbo].[user_type] ([user_type_id], [user_type_name]) VALUES (1, N'provider')
INSERT [dbo].[user_type] ([user_type_id], [user_type_name]) VALUES (2, N'buyer')
SET IDENTITY_INSERT [dbo].[user_type] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__account__4F5C27E79CF35376]    Script Date: 3/26/2022 9:44:25 AM ******/
ALTER TABLE [dbo].[account] ADD UNIQUE NONCLUSTERED 
(
	[account_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[transaction] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[role_account]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[role_account]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[role_account]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_account]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD FOREIGN KEY([transaction_type_id])
REFERENCES [dbo].[transaction_type] ([transaction_type_id])
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD FOREIGN KEY([transaction_type_id])
REFERENCES [dbo].[transaction_type] ([transaction_type_id])
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[transaction_detail]  WITH CHECK ADD  CONSTRAINT [FK__transacti__produ__2B3F6F97] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[transaction_detail] CHECK CONSTRAINT [FK__transacti__produ__2B3F6F97]
GO
ALTER TABLE [dbo].[transaction_detail]  WITH CHECK ADD  CONSTRAINT [FK__transacti__trans__2C3393D0] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[transaction] ([transaction_id])
GO
ALTER TABLE [dbo].[transaction_detail] CHECK CONSTRAINT [FK__transacti__trans__2C3393D0]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([user_type_id])
REFERENCES [dbo].[user_type] ([user_type_id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([user_type_id])
REFERENCES [dbo].[user_type] ([user_type_id])
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD CHECK  ((len([account_password])>=(8)))
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD CHECK  ((len([account_password])>=(8)))
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD CHECK  (([quantity]>=(0)))
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD CHECK  (([quantity]>=(0)))
GO
