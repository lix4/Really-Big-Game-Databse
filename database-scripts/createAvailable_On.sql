USE [ReallyBigGameDatabase]
GO

/****** Object:  Table [dbo].[Available_On]    Script Date: 2/18/2017 5:23:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Available_On](
	[Game_id] [int] NOT NULL,
	[PName] [char](20) NOT NULL,
 CONSTRAINT [PK_Available_On] PRIMARY KEY CLUSTERED 
(
	[Game_id] ASC,
	[PName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Available_On]  WITH CHECK ADD FOREIGN KEY([PName])
REFERENCES [dbo].[Platform] ([PName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Available_On]  WITH CHECK ADD  CONSTRAINT [FK_Available_On_Game] FOREIGN KEY([Game_id])
REFERENCES [dbo].[Game] ([Game_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Available_On] CHECK CONSTRAINT [FK_Available_On_Game]
GO
