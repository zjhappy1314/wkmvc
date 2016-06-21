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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CODETYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʾ�ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'NAMETEXT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CODEVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�Ϊ���루0��1�ǣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'ISCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID��ʹ��ʱע��ISCODEΪ0��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE', @level2type=N'COLUMN',@level2name=N'PARENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_CODE_AREA', @level2type=N'COLUMN',@level2name=N'LEVELS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű�ţ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ҵ��ȼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'BUSINESSLEVEL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����߱��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'CREATEPERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'PARENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ϵͳ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'FK_BELONGSYSTEM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ID������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'PARENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ALIAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'MODULETYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Զ���ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ICON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'MODULEPATH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�չʾ��0��1�ǣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ISSHOW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'LEVELS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_MODULE', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ȩ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��ֵ����ӦSYS_CODE��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'PERVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'ICON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_PERMISSION', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'POSTNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'POSTTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'SHOWORDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'CREATEUSERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'FK_DEPARTMENT_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'FK_POST_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_USER', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_USER', @level2type=N'COLUMN',@level2name=N'FK_USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_POST_USER', @level2type=N'COLUMN',@level2name=N'FK_POST_DEPARTMENTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ROLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��Զ��壨0��1�ǣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ISCUSTOM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'ROLEDESC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID������SYS_USER��ID��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'CREATEPERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE_PERMISSION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE_PERMISSION', @level2type=N'COLUMN',@level2name=N'ROLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ȨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ROLE_PERMISSION', @level2type=N'COLUMN',@level2name=N'PERMISSIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'SITEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������¼ϵͳ��0��1�ǣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'IS_LOGIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ�Խ��û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'DOCKUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ�Խ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'DOCKPASS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_SYSTEM', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_DEPARTMENT', @level2type=N'COLUMN',@level2name=N'DEPARTMENT_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_PERMISSION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_PERMISSION', @level2type=N'COLUMN',@level2name=N'FK_USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ȨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_PERMISSION', @level2type=N'COLUMN',@level2name=N'FK_PERMISSIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_ROLE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_ROLE', @level2type=N'COLUMN',@level2name=N'FK_USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USER_ROLE', @level2type=N'COLUMN',@level2name=N'FK_ROLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ�񣬱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'POSTCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�칫�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'OFFICEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'EMAILADDRESS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڶ��ֻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'SECONDPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڸ�״̬������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'WORKCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա𣬱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'SEXCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'BIRTHDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���壬����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'NATIONCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'IDNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'MARRYCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'IDENTITYCODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ᣬ���루������TBCode_Area��CodeValue��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'HomeTown'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'ACCOUNTLOCATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'XUELI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ�ƣ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'ZHICHENG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵԺУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'GRADUATIONSCHOOL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'SPECIALTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭԭ�ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHOTOOLDNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ���ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHOTONEWNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'PHOTOTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ�ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'RESUMEOLDNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'RESUMENEWNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'RESUMETYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵأ����루������TBCode_Area��CodeValue��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'HuJiSuoZaiDi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ɳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'HUJIPAICHUSUO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'WORKDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���빫˾ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'JINRUDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ƺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'CARNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'΢�Ź����˺Ŷ�Ӧ��OpenID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'WEBCHATOPENID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'CREATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'CREATEUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'UPDATEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_USERINFO', @level2type=N'COLUMN',@level2name=N'UPDATEUSER'
GO