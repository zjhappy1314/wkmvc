USE [wkmvc_db]
GO
/****** Object:  Table [dbo].[SYS_CODE]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_CODE](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [CODETYPE] [nvarchar](50) NULL,
    [NAMETEXT] [nvarchar](200) NULL,
    [CODEVALUE] [nvarchar](100) NULL,
    [SHOWORDER] [int] NULL,
    [ISCODE] [int] NULL,
    [REMARK] [nvarchar](2000) NULL,
    [CREATEDATE] [datetime] NULL,
    [CREATEUSER] [nvarchar](36) NULL,
    [UPDATEDATE] [datetime] NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
    [PARENTID] [int] NULL,
 CONSTRAINT [PK_SYS_CODE] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_CODE_AREA]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CODE_AREA](
    [ID] [varchar](50) NOT NULL,
    [PID] [varchar](50) NOT NULL,
    [NAME] [nvarchar](200) NULL,
    [LEVELS] [tinyint] NOT NULL,
 CONSTRAINT [PK_SYS_CODE_AREA] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_DEPARTMENT]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_DEPARTMENT](
    [ID] [nvarchar](36) NOT NULL,
    [CODE] [nvarchar](100) NULL,
    [NAME] [nvarchar](200) NULL,
    [BUSINESSLEVEL] [int] NULL,
    [SHOWORDER] [int] NULL,
    [CREATEPERID] [nvarchar](36) NULL,
    [CREATEDATE] [date] NULL,
    [PARENTID] [nvarchar](36) NULL,
    [UPDATEDATE] [date] NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
    [PARENTCODE] [nvarchar](100) NULL,
 CONSTRAINT [PK_SYS_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_MODULE]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_MODULE](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [FK_BELONGSYSTEM] [nvarchar](36) NOT NULL,
    [PARENTID] [int] NOT NULL,
    [NAME] [nvarchar](50) NULL,
    [ALIAS] [nvarchar](50) NULL,
    [MODULETYPE] [int] NOT NULL,
    [ICON] [nvarchar](200) NULL,
    [MODULEPATH] [nvarchar](500) NULL,
    [ISSHOW] [int] NOT NULL,
    [SHOWORDER] [int] NOT NULL,
    [LEVELS] [int] NOT NULL,
    [IsVillage] [bit] NOT NULL,
    [CREATEUSER] [nvarchar](50) NULL,
    [CREATEDATE] [datetime] NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
    [UPDATEDATE] [datetime] NULL,
 CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_PERMISSION]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_PERMISSION](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [MODULEID] [int] NOT NULL,
    [NAME] [nvarchar](36) NULL,
    [PERVALUE] [nvarchar](100) NULL,
    [ICON] [nvarchar](50) NULL,
    [SHOWORDER] [int] NULL,
    [CREATEDATE] [date] NULL,
    [CREATEUSER] [nvarchar](36) NULL,
    [UPDATEDATE] [date] NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
 CONSTRAINT [PK_SYS_PERMISSION] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_POST]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_POST](
    [ID] [nvarchar](36) NOT NULL,
    [POSTNAME] [nvarchar](100) NULL,
    [POSTTYPE] [nvarchar](36) NOT NULL,
    [REMARK] [nvarchar](500) NULL,
    [SHOWORDER] [int] NULL,
    [CREATEUSERID] [int] NULL,
    [CREATEDATE] [datetime] NOT NULL,
    [UPDATEDATE] [datetime] NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
 CONSTRAINT [PK_SYS_POST] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_POST_DEPARTMENT]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_POST_DEPARTMENT](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [FK_DEPARTMENT_ID] [nvarchar](36) NOT NULL,
    [FK_POST_ID] [nvarchar](36) NOT NULL,
 CONSTRAINT [PK_SYS_POST_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_POST_USER]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_POST_USER](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [FK_USERID] [int] NOT NULL,
    [FK_POST_DEPARTMENTID] [int] NOT NULL,
 CONSTRAINT [PK_SYS_POST_USER] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_ROLE]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ROLE](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [ROLENAME] [nvarchar](50) NULL,
    [ISCUSTOM] [int] NOT NULL,
    [ROLEDESC] [nvarchar](1000) NULL,
    [CREATEPERID] [nvarchar](36) NOT NULL,
    [CREATEDATE] [datetime] NOT NULL,
    [UPDATEDATE] [datetime] NOT NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
 CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_ROLE_PERMISSION]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ROLE_PERMISSION](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [ROLEID] [int] NOT NULL,
    [PERMISSIONID] [int] NOT NULL,
 CONSTRAINT [PK_SYS_ROLE_PERMISSION] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SYSTEM]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SYSTEM](
    [ID] [nvarchar](36) NOT NULL,
    [NAME] [nvarchar](200) NULL,
    [SITEURL] [nvarchar](500) NULL,
    [IS_LOGIN] [tinyint] NULL,
    [DOCKUSER] [nvarchar](100) NULL,
    [DOCKPASS] [nvarchar](200) NULL,
    [CREATEDATE] [date] NULL,
    [REMARK] [nvarchar](2000) NULL,
 CONSTRAINT [PK_SYS_SYSTEM] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_USER_DEPARTMENT]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_USER_DEPARTMENT](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [USER_ID] [int] NOT NULL,
    [DEPARTMENT_ID] [nvarchar](36) NOT NULL,
 CONSTRAINT [PK_SYS_USER_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_USER_PERMISSION]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_USER_PERMISSION](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [FK_USERID] [int] NOT NULL,
    [FK_PERMISSIONID] [int] NOT NULL,
 CONSTRAINT [PK_SYS_USER_PERMISSION] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_USER_ROLE]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_USER_ROLE](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [FK_USERID] [int] NOT NULL,
    [FK_ROLEID] [int] NOT NULL,
 CONSTRAINT [PK_SYS_USER_ROLE] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_USERINFO]    Script Date: 2016/5/17 9:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_USERINFO](
    [ID] [int] NOT NULL,
    [USERID] [int] NOT NULL,
    [POSTCODE] [int] NULL,
    [PHONE] [nvarchar](200) NULL,
    [OFFICEPHONE] [nvarchar](200) NULL,
    [EMAILADDRESS] [nvarchar](200) NULL,
    [SECONDPHONE] [nvarchar](200) NULL,
    [WORKCODE] [int] NULL,
    [SEXCODE] [int] NULL,
    [BIRTHDAY] [datetime] NULL,
    [NATIONCODE] [int] NULL,
    [IDNUMBER] [nvarchar](18) NULL,
    [MARRYCODE] [int] NULL,
    [IDENTITYCODE] [int] NULL,
    [HomeTown] [nvarchar](200) NULL,
    [ACCOUNTLOCATION] [nvarchar](200) NULL,
    [XUELI] [int] NULL,
    [ZHICHENG] [int] NULL,
    [GRADUATIONSCHOOL] [nvarchar](200) NULL,
    [SPECIALTY] [nvarchar](200) NULL,
    [PHOTOOLDNAME] [nvarchar](200) NULL,
    [PHOTONEWNAME] [nvarchar](200) NULL,
    [PHOTOTYPE] [nvarchar](200) NULL,
    [RESUMEOLDNAME] [nvarchar](200) NULL,
    [RESUMENEWNAME] [nvarchar](200) NULL,
    [RESUMETYPE] [nvarchar](200) NULL,
    [HuJiSuoZaiDi] [nvarchar](200) NULL,
    [HUJIPAICHUSUO] [nvarchar](200) NULL,
    [WORKDATE] [datetime] NULL,
    [JINRUDATE] [datetime] NULL,
    [CARNUMBER] [nvarchar](200) NULL,
    [QQ] [nvarchar](15) NULL,
    [WEBCHATOPENID] [nvarchar](200) NULL,
    [CREATEDATE] [datetime] NULL,
    [CREATEUSER] [nvarchar](36) NULL,
    [UPDATEDATE] [datetime] NULL,
    [UPDATEUSER] [nvarchar](36) NULL,
 CONSTRAINT [PK_SYS_USERINFO] PRIMARY KEY CLUSTERED 
(
    [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SYS_MODULE]  WITH CHECK ADD  CONSTRAINT [FK_SYS_MODULE_SYSTEMID] FOREIGN KEY([FK_BELONGSYSTEM])
REFERENCES [dbo].[SYS_SYSTEM] ([ID])
GO
ALTER TABLE [dbo].[SYS_MODULE] CHECK CONSTRAINT [FK_SYS_MODULE_SYSTEMID]
GO
ALTER TABLE [dbo].[SYS_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_SYS_PERMISSION_MODULEID] FOREIGN KEY([MODULEID])
REFERENCES [dbo].[SYS_MODULE] ([ID])
GO
ALTER TABLE [dbo].[SYS_PERMISSION] CHECK CONSTRAINT [FK_SYS_PERMISSION_MODULEID]
GO
ALTER TABLE [dbo].[SYS_POST_DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_SYS_POST_DEPARTMENT_DPTID] FOREIGN KEY([FK_DEPARTMENT_ID])
REFERENCES [dbo].[SYS_DEPARTMENT] ([ID])
GO
ALTER TABLE [dbo].[SYS_POST_DEPARTMENT] CHECK CONSTRAINT [FK_SYS_POST_DEPARTMENT_DPTID]
GO
ALTER TABLE [dbo].[SYS_POST_DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_SYS_POST_DEPARTMENT_POSTID] FOREIGN KEY([FK_POST_ID])
REFERENCES [dbo].[SYS_POST] ([ID])
GO
ALTER TABLE [dbo].[SYS_POST_DEPARTMENT] CHECK CONSTRAINT [FK_SYS_POST_DEPARTMENT_POSTID]
GO
ALTER TABLE [dbo].[SYS_POST_USER]  WITH CHECK ADD  CONSTRAINT [FK_SYS_POST_USER_POSTDPTID] FOREIGN KEY([FK_POST_DEPARTMENTID])
REFERENCES [dbo].[SYS_POST_DEPARTMENT] ([ID])
GO
ALTER TABLE [dbo].[SYS_POST_USER] CHECK CONSTRAINT [FK_SYS_POST_USER_POSTDPTID]
GO
ALTER TABLE [dbo].[SYS_POST_USER]  WITH CHECK ADD  CONSTRAINT [FK_SYS_POST_USER_USERID] FOREIGN KEY([FK_USERID])
REFERENCES [dbo].[SYS_USER] ([ID])
GO
ALTER TABLE [dbo].[SYS_POST_USER] CHECK CONSTRAINT [FK_SYS_POST_USER_USERID]
GO
ALTER TABLE [dbo].[SYS_ROLE_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ROLE_PERMISSION_PERID] FOREIGN KEY([PERMISSIONID])
REFERENCES [dbo].[SYS_PERMISSION] ([ID])
GO
ALTER TABLE [dbo].[SYS_ROLE_PERMISSION] CHECK CONSTRAINT [FK_SYS_ROLE_PERMISSION_PERID]
GO
ALTER TABLE [dbo].[SYS_ROLE_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ROLE_PERMISSION_ROLEID] FOREIGN KEY([ROLEID])
REFERENCES [dbo].[SYS_ROLE] ([ID])
GO
ALTER TABLE [dbo].[SYS_ROLE_PERMISSION] CHECK CONSTRAINT [FK_SYS_ROLE_PERMISSION_ROLEID]
GO
ALTER TABLE [dbo].[SYS_USER_DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_DEPARTMENT_DPTID] FOREIGN KEY([DEPARTMENT_ID])
REFERENCES [dbo].[SYS_DEPARTMENT] ([ID])
GO
ALTER TABLE [dbo].[SYS_USER_DEPARTMENT] CHECK CONSTRAINT [FK_SYS_USER_DEPARTMENT_DPTID]
GO
ALTER TABLE [dbo].[SYS_USER_DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_DEPARTMENT_USERID] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[SYS_USER] ([ID])
GO
ALTER TABLE [dbo].[SYS_USER_DEPARTMENT] CHECK CONSTRAINT [FK_SYS_USER_DEPARTMENT_USERID]
GO
ALTER TABLE [dbo].[SYS_USER_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_PERMISSION_PERID] FOREIGN KEY([FK_PERMISSIONID])
REFERENCES [dbo].[SYS_PERMISSION] ([ID])
GO
ALTER TABLE [dbo].[SYS_USER_PERMISSION] CHECK CONSTRAINT [FK_SYS_USER_PERMISSION_PERID]
GO
ALTER TABLE [dbo].[SYS_USER_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_PERMISSION_USERID] FOREIGN KEY([FK_USERID])
REFERENCES [dbo].[SYS_USER] ([ID])
GO
ALTER TABLE [dbo].[SYS_USER_PERMISSION] CHECK CONSTRAINT [FK_SYS_USER_PERMISSION_USERID]
GO
ALTER TABLE [dbo].[SYS_USER_ROLE]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_ROLE_ROLEID] FOREIGN KEY([FK_ROLEID])
REFERENCES [dbo].[SYS_ROLE] ([ID])
GO
ALTER TABLE [dbo].[SYS_USER_ROLE] CHECK CONSTRAINT [FK_SYS_USER_ROLE_ROLEID]
GO
ALTER TABLE [dbo].[SYS_USER_ROLE]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_ROLE_USERID] FOREIGN KEY([FK_USERID])
REFERENCES [dbo].[SYS_USER] ([ID])
GO
ALTER TABLE [dbo].[SYS_USER_ROLE] CHECK CONSTRAINT [FK_SYS_USER_ROLE_USERID]
GO
ALTER TABLE [dbo].[SYS_USERINFO]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USERINFO_SYSUSERID] FOREIGN KEY([USERID])
REFERENCES [dbo].[SYS_USER] ([ID])
GO
ALTER TABLE [dbo].[SYS_USERINFO] CHECK CONSTRAINT [FK_SYS_USERINFO_SYSUSERID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CODETYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码显示文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'NAMETEXT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CODEVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为编码（0否1是）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'ISCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID（使用时注意ISCODE为0）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'PARENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'LEVELS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门编号，横向增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'BUSINESSLEVEL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'CREATEPERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'PARENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属系统' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'FK_BELONGSYSTEM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父ID，级联' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'PARENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ALIAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'MODULETYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ICON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'MODULEPATH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否展示（0否1是）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ISSHOW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'LEVELS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限值（对应SYS_CODE表）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'PERVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'ICON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'POSTNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'POSTTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'CREATEUSERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'FK_DEPARTMENT_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'FK_POST_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_USER', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_USER', @level2type=N'COLUMN',@level2name=N'FK_USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_USER', @level2type=N'COLUMN',@level2name=N'FK_POST_DEPARTMENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ROLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自定义（0否1是）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ISCUSTOM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ROLEDESC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者ID（关联SYS_USER的ID）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'CREATEPERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE_PERMISSION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE_PERMISSION', @level2type=N'COLUMN',@level2name=N'ROLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE_PERMISSION', @level2type=N'COLUMN',@level2name=N'PERMISSIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'SITEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许登录系统（0否1是）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'IS_LOGIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统对接用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'DOCKUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统对接密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'DOCKPASS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'DEPARTMENT_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_PERMISSION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_PERMISSION', @level2type=N'COLUMN',@level2name=N'FK_USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_PERMISSION', @level2type=N'COLUMN',@level2name=N'FK_PERMISSIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_ROLE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_ROLE', @level2type=N'COLUMN',@level2name=N'FK_USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_ROLE', @level2type=N'COLUMN',@level2name=N'FK_ROLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID，外键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'POSTCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办公电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'OFFICEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'EMAILADDRESS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'SECONDPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在岗状态，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'WORKCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'SEXCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'BIRTHDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'NATIONCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'IDNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'MARRYCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'IDENTITYCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯，编码（关联至TBCode_Area的CodeValue）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'HomeTown'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'ACCOUNTLOCATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'XUELI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职称，编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'ZHICHENG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业院校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'GRADUATIONSCHOOL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'SPECIALTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片原文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHOTOOLDNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片新文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHOTONEWNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片格式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHOTOTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简历原文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'RESUMEOLDNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简历新文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'RESUMENEWNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简历格式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'RESUMETYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍所在地，编码（关联至TBCode_Area的CodeValue）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'HuJiSuoZaiDi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍所在派出所' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'HUJIPAICHUSUO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'WORKDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加入公司时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'JINRUDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'CARNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信公众账号对应的OpenID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'WEBCHATOPENID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO