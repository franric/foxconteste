USE [foxcon]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 11/11/2021 18:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rule] [int] NOT NULL,
	[name] [varchar](104) NOT NULL,
	[salary] [decimal](10, 2) NOT NULL,
	[gender] [char](1) NOT NULL,
	[active] [char](1) NOT NULL,
	[created_at] [datetime] NULL,
	[modified_at] [timestamp] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rule]    Script Date: 11/11/2021 18:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rule](
	[id] [int] NOT NULL,
	[name] [varchar](54) NULL,
	[active] [char](1) NULL,
	[created_at] [datetime] NULL,
	[modifield_at] [timestamp] NULL,
 CONSTRAINT [PK_rule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_rule] FOREIGN KEY([id_rule])
REFERENCES [dbo].[rule] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_rule]
GO
