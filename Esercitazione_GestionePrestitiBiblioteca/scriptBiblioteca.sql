USE [master]
GO
/****** Object:  Database [ITS_GestionePrestitiBiblioteca]    Script Date: 25/01/2021 12:44:59 ******/
CREATE DATABASE [ITS_GestionePrestitiBiblioteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITS_GestionePrestitiBiblioteca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ITS_GestionePrestitiBiblioteca.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ITS_GestionePrestitiBiblioteca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ITS_GestionePrestitiBiblioteca_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITS_GestionePrestitiBiblioteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET  MULTI_USER 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET QUERY_STORE = OFF
GO
USE [ITS_GestionePrestitiBiblioteca]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ITS_GestionePrestitiBiblioteca]
GO
/****** Object:  User [its]    Script Date: 25/01/2021 12:44:59 ******/
CREATE USER [its] FOR LOGIN [its] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [its]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[Codice] [int] NOT NULL,
	[Autore] [nvarchar](50) NOT NULL,
	[Titolo] [nvarchar](50) NOT NULL,
	[Editore] [nvarchar](50) NOT NULL,
	[Anno] [int] NULL,
	[Luogo] [nvarchar](50) NULL,
	[Pagine] [int] NOT NULL,
	[Classificazione] [nvarchar](50) NOT NULL,
	[Collocazione] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[Codice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestito]    Script Date: 25/01/2021 12:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestito](
	[IdPrestito] [int] IDENTITY(1,1) NOT NULL,
	[CodiceLibro] [int] NOT NULL,
	[Matricola] [int] NOT NULL,
	[DataPrestito] [datetime] NOT NULL,
	[DataRestituzione] [datetime] NULL,
 CONSTRAINT [PK_Prestito] PRIMARY KEY CLUSTERED 
(
	[IdPrestito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studente]    Script Date: 25/01/2021 12:45:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studente](
	[Matricola] [int] NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Classe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Studente] PRIMARY KEY CLUSTERED 
(
	[Matricola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202101132336233_InitialCreate', N'Esercitazione_GestionePrestitiBiblioteca.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED049EB69D35767CC1B427C89BC196D86D62244A9128C7DE205F96877C527E618B12A59678D1A55B7D7130C0A025164F158B4556B154F49FBFFF31FEFE25F0AD671C2724A467F6D1E8D0B63075438FD0C5999DB2F9B71FECEFBFFBFBDFC6975EF062FD58D09D703AE8499333FB89B1E8D47112F70907281905C48DC3249CB3911B060EF242E7F8F0F0DFCED1918301C2062CCB1A7F4E292301CE1EE071125217472C45FE4DE8613F11EFA1659AA15AB728C049845C7C665F2638760943FF0341F0E30F3861FCC77DCC7F30F291CC7C1232ECA2510E655BE73E4120E614FB73DB4294860CF12EA75F123C65714817D3085E20FFE135C24037477E82C5E04E97E45DC77978CCC7E92C3B16506E9AB030E80978742214E7C8DD5752BF5D2A16547B0953C05EF9A833F59ED9D71ECE5E7D0E7D5080CCF074E2C79CF8CCBE29599C27D12D66A3A2E32887BC8A01EE9730FE3AAA221E589DFB1D9486763C3AE4FF0EAC49EAB334C66714A72C46FE81759FC244BBFFC5AF0FE1574CCF4E8E66F3930FEFDE23EFE4FDBFF0C9BBEA4861AC40577B01AFEEE330C231C886E7E5F86DCBA9F773E48E65B74A9F5C2B604BB0666CEB06BD7CC274C19E60351D7FB0AD2BF282BDE28D30AE2F94C012834E2C4EE1F136F57D34F371D9EE34F2E4FF37703D7EF77E10AEB7E8992CB2A997F8C3C289615D7DC67ED69A3C91285F5EB5F97E1464577118F0E7BA7DE5AD8FD3308D5D3E98D048F280E2056675E9C6CED2783B9934871ADEAC0BD4FD376D2EA96ADE5A523EA0555642C162DBABA19077B37C3B5BDC7914C1E465A6C535D264703D3DD948823EB0BA022C8DEEA8ABD15150C65F790FBD0C10F107D8443B7081E0664EE20097A3FC1882C922DA5BE67B9424B08778FF41C95383E8F07300D1A7D84D6330ED294341B4716EF74F60B8B76930E32B667BBC069B9A875FC22BE4B230BEA4BCD7DA789F42F76B98B24BEA5D2086BF30B700E48F0F24E80E308838E7AE8B93E40A8C197B931062F702F09AB293E3DE707CF7DA751033F11109F4518CB4CF3E16A4CB48464FA1443306325D44D324EAA770416837510B52B3A83945ABA882ACAFA81CAC9BA482D22C6846D02A674E35588C98CDD0F0416206BBFF51E27ACEDBB41754D438851D12FF80298E611BF3EE116338A6CB19E8B26FEC2258C8A68F33DDB86FCA38FD88FC7468562BAD866C13187E3564B0FBBF1A3231E1F533F17854D2E1E85410037C277AFDA9AC7DCD49926D7B39D486B96DE6DBD9034CCBE53C49429764AB40933413298FBAFC10C359EDF98F7C34720E050606864EB8CB833730365B36AA3B7A817DCCB075EEE649C5094A5CE4A96A8401793D042B3CAA46B0652EA52EDC3F159E60E938E69D103F0425B0520965EAB220D42511F25BB524F5ECE8C2F8D84B1E72CB058E30E50C5B35D185B93E75C20528F94893D2A6A1B153B1B866433444ADA6396F0B6197F3AE6434B662932DB1B3C12E45FCB611C36CD6D8168CB359255D0430A6017761A0E2ACD2D500E483CBBE19A874623218A808A9B662A0758DEDC040EB2A7973069A1F51BBCEBF745EDD37F3AC1F94B7EFD61BD5B503DBACE963CF4C338F3DA10F831E3856CDF362C61BF10BD31CCE404E713E4B44A82B9B08079F62564FD92CE35D6D1CEA3483C846D404B834B41650F10151015216540FE18A5C5EA374228AE8015BE4DD1A61C5DE2FC1566C40C5AE7E48AD109A3FB7CAC6D9E9F4518EACB406C5C83B1D162A381A839037AFFAC03B28C594975515D32516EE130D57062626A341412D91AB4149C56006D752619AED5AD205647D42B2B5B424854F062D1583195C4BC246DB95A4090A7A84056BA9A8EEC2075A6C45A6A3F43665DBD8C98BAFC48BB163A8D21ADFA028227451A9DA126FAC695EB235F976DABF5C29C8311C37D1542D95D2969C5818A305965A8135487A45E2845D20866688E779265EA090697DAB61FB2F5856DDA73A89851F28A8F96FF151B8E767FF9A23562315C1E00A861FF07027CBB16B8C43DFDDE22576C847B126AD3F09FD34A0E6E8CBDC3BFFB857ED9FBF5111C68E24BF125D29AA5462E0FABC749A3575C56C6306CBC867F559344398E6A2885BABB3618A65CD28456AAB8A624A77ED6C564D21D0703329879EFD27B21561332B52D4BB5401C4AB9E1895920905ACD2D61DB55ED552C5ACB77447944A57AA9052530F29AB052A3521AB0D2BE11934AAA7E8CE412D49A9A2ABADDD9135C52955684DF30AD81A99E5B6EEA89AFA952AB0A6B93BF6B29845DE61F7D8E7190F449B717AF9817A3DAF67C0D8CC76398CD3ACD40D54812AAF7B6289CA00054CBCDF4B53339E2A37636A7992653D53336098F7ACDAE7F8FA96D5584360C6AC7D63AFB985A61A03335E3F83DEA8D928274E99A4E45E9E3CA513E6589CF6DA2F0B29C7BF9CC4B60A354248F09A301C8C38C168FAB33FF109E60EA020B84194CCC1F0F2BA12FBF8F0E858BA52B43FD77B9C24F17CCD69D974C7A73E675B2811A3CF28769F50AC166CAC71056609AAE4C2AFA9875FCEEC5FB35EA7595A85FFCA5E1F58D7C9174A7E4EA1E1214EB1F59B5A803ACC95800E97504A417F7B13B73BBAABFCFAA7C7BCEB817517C3723AB50E2545AF32FDF53B1FBDA4C9BBAE21CDCA3741DEEE6AAB5D96D0A24AAB65F5BB1133C206B9175148F94D805EFED15734EDDD87B51035F71B86C21B4485A6FB0BAB6019EF2E78F0C8B2BB0BFD06ABBFCBB08A68C67B0C84F607936F3174DF868A9E3BF4439AD3D436B6A44CCFAD55E06B9584EEDA3729C5E26B2D74B520BC07DCA045DFEB85286FAC987A30D7A9A9951E0C7B9776BFF102E97DA9895E06EDBB2D85DE66F573C377AABF54D1F31E94E969CA8E765FDABC6D5B33A587F7BC3EB45F01F39E199B70F3BB2F53DEB6B19912C47B6E6CBD8A91F7CCD676E53F776C699D5DE8CE4B8BD52A29C3671E5D16B9AD74384FB9C3F17F168211E411657EE3535FABD65467DBC2704962666A2E9293192B0B47E1AB5034B3ED3756E1F01B072B689AD91A4A4B9B788BFDBF91B7A069E66D28D8DC45D1B3B664525788DEB28F355565BDA522E7DA485A6AEADB62D6C66FF66FA9A67910A5D4568FE1EBF2DB29611E4425432E9D1E25CBEA8762F09D95BF3D09FE3B218B2504FF4B9414BB35AF59D25CD37958386F49A28244CAD0DC60863C70A9E7312373E43268E609E8ECCA7A96D4E39F4166D8BBA677298B520643C6C1CCAF25BC7810D0C43FABCBAECB3CBE8BF85332C410404CC213F777F4634A7CAF94FB4A93133240F0E842A47BF95C329EF65DBC9648B721ED0824D45706450F38887C004BEEE8143DE3556403F3FB8417C87D5D66004D20ED135157FBF882A0458C8244602CFBC323D8B017BC7CF77F2C54B08F82550000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'41513b53-fe45-4964-958c-7f5c8f5f586d', N'Amministratore')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e27208ea-14ba-422c-bc8e-56bda84021a1', N'Studente')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'37bbf255-4e25-4497-a02d-6255e58bab9b', N'SuperUser')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bd745785-f2c4-49c3-9a5f-08ae346c718d', N'41513b53-fe45-4964-958c-7f5c8f5f586d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'24fe4b9f-18db-4047-bc09-e31785d78263', N'e27208ea-14ba-422c-bc8e-56bda84021a1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'24fe4b9f-18db-4047-bc09-e31785d78263', N'studente@biblio.net', 0, N'AGoDTFVwKs7ZZ9p7oo8XiedTmDWp79ovHN425ABhKlDHFyJkW1ytkDMjmrIWT4Slnw==', N'54a21d0a-7312-423d-b0a1-99c28169949c', NULL, 0, 0, NULL, 1, 0, N'studente@biblio.net')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bd745785-f2c4-49c3-9a5f-08ae346c718d', N'admin@biblio.net', 0, N'AAiGgmcVpTzxsIQl3Ba1BQ6ukIYH6tYlITN6FRsYIdTHyCNOQCfCN3VtIZigg1wYig==', N'6569f5a2-68a4-40f6-b1db-89cdb04a5155', NULL, 0, 0, NULL, 1, 0, N'admin@biblio.net')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (1, N'Tami Oldham Ashcraf', N'Resta con me', N'Harpercollins Italia', 2012, N'Milano', 336, N'Biografico', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (2, N'Daniele Di Benedetti', N'Ricordati di sorridere', N'Mondadori', 2018, N'Milano', 279, N'Psicologia', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (3, N'J. K. Rowling', N'Harry Potter e il prigioniero di Azkaban', N'Salani', 2018, N'Roma', 389, N'Narrativa', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (4, N'Alessia Gazzola', N'Arabesque', N'Rl Libri', 2018, N'Milano', 352, N'Gialli', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (5, N'J. K. Rowling', N'Harry Potter e la camera dei segreti', N'Salani', 2018, N'Roma', 324, N'Narrativa', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (6, N'J. K. Rowling', N'Harry Potter e il calice di fuoco', N'Salani', 2018, N'Roma', 652, N'Narrativa', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (7, N'Trish Cook', N'Il sole a mezzanotte', N'Fabbri', 2018, N'Milano', 205, N'ROMANZO', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (8, N'Donato Carrisi', N'Il cacciatore del buio', N'Tea', 2018, N'Milano', 416, N'Gialli', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (9, N'Agatha Christie', N'Dieci piccoli indiani', N'Mondadori', 2014, N'Milano', 229, N'Gialli', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (10, N'Walter Bonatti', N'La montagna scintillante. Karakorum 1958', N'Solferino', 2017, N'Milano', 216, N'Viaggi', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (11, N'Gabriel García Márquez', N'Cent''anni di solitudine', N'Mondadori', 2018, N'Milano', 378, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (12, N'Robert Harris', N'Pompei', N'Mondadori', 2018, N'Milano', 294, N'Storico', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (13, N'John Ronald Reuel Tolkien', N'Il signore degli anelli', N'Bompiani', 2018, NULL, 1264, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (14, N'Danielle Steel', N'L''appartamento', N'Sperling & Kupfer', NULL, N'Milano', 364, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (20, N'Wilbur Smith', N'Come il mare', N'Tea', 2018, NULL, 390, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (38, N'Michael Crichton', N'Punto critico', N'GARZANTI', 2015, N'Milano', 432, N'ROMANZO', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (41, N'Dennis Lehane', N'Ogni nostra caduta', N'Tea', NULL, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (43, N'James Rollins', N'Amazzonia', N'Tea', NULL, NULL, 478, N'ROMANZO', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (44, N'Kathryn Hughes', N'La lettera', N'NORD', NULL, NULL, 352, N'ROMANZO', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (47, N'Carlo Lucarelli', N'Peccato mortale', N'Einaudi', NULL, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (53, N'Joseph Conrad', N'Cuore di Tenebra', N'Feltrinelli', NULL, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (56, N'Emilio Lussu', N'Un anno sull''altipiano', N'Einaudi', NULL, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (57, N'Mario Rigoni Stern', N'Il sergente nella neve', N'Einaudi', 2014, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (63, N'Giulio Bedeschi', N'Centomila gavette di ghiaccio', N'Mursia', 2011, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (68, N'Erich Maria Remarque', N'Niente di nuovo sul fronte occidentale', N'Neri Pozza', 2016, NULL, 0, N'ROMANZO', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (71, N'Daniel Defoe', N'Vita e avventure di Robinson Crusoe', N'Independently published', 2017, NULL, 0, N'Avventura', N'Scaffale A Ripiano 3')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (73, N'Robert Louis Stevenson', N'L’isola del tesoro', N'Dario Abate Editore', 2017, NULL, 0, N'Avventura', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (89, N'Alessandro Manzoni', N'I promessi sposi', N'Mondadori', 2011, N'Milano', 0, N'ROMANZO', N'Scaffale A Ripiano 1')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (101, N'Dante Alighieri', N'La Divina Commedia - Inferno', N'La Nuova Italia', NULL, NULL, 0, N'Poesia', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (102, N'Dante Alighieri', N'La Divina Commedia - Purgatorio', N'La Nuova Italia', NULL, NULL, 0, N'Poesia', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (103, N'Dante Alighieri', N'La Divina Commedia - Paradiso', N'La Nuova Italia', NULL, NULL, 0, N'Poesia', N'Scaffale A Ripiano 2')
INSERT [dbo].[Libro] ([Codice], [Autore], [Titolo], [Editore], [Anno], [Luogo], [Pagine], [Classificazione], [Collocazione]) VALUES (177, N'Miguel Cervantes', N'Don Chisciotte', N'Mondadori', 1995, N'Milano', 320, N'ROMANZO', N'Scaffale A Ripiano 1')
SET IDENTITY_INSERT [dbo].[Prestito] ON 

INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (2, 38, 11266, CAST(N'2021-01-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (3, 11, 11260, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (4, 11, 11261, CAST(N'2021-01-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (5, 7, 11259, CAST(N'2021-01-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (6, 8, 11263, CAST(N'2021-01-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (7, 10, 11270, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1002, 12, 11269, CAST(N'2021-01-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1003, 4, 11266, CAST(N'2021-01-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1004, 5, 11269, CAST(N'2020-12-28T00:00:00.000' AS DateTime), CAST(N'2021-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1005, 57, 11270, CAST(N'2020-12-28T00:00:00.000' AS DateTime), CAST(N'2021-01-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1006, 14, 11276, CAST(N'2020-11-23T00:00:00.000' AS DateTime), CAST(N'2021-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1007, 2, 11268, CAST(N'2020-12-23T00:00:00.000' AS DateTime), CAST(N'2021-01-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1008, 41, 11266, CAST(N'2020-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1009, 1, 11277, CAST(N'2020-12-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1010, 1, 11266, CAST(N'2021-01-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1011, 14, 11258, CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1012, 1, 11262, CAST(N'2020-12-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1015, 20, 11258, CAST(N'2021-01-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Prestito] ([IdPrestito], [CodiceLibro], [Matricola], [DataPrestito], [DataRestituzione]) VALUES (1016, 9, 11327, CAST(N'2020-12-28T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Prestito] OFF
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11258, N'Piero', N'Giuliani', N'giuliani.piero@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11259, N'Laura', N'De Stena', N'destena.laura@studenti.itis.net', N'2A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11260, N'Giulia', N'Caruso', N'caruso.giulia@studenti.itis.net', N'3B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11261, N'Francesco', N'Cocco', N'cocco.francesco@studenti.itis.net', N'4C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11262, N'Giulio', N'Marchese', N'marchese.giulio@studenti.itis.net', N'1B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11263, N'Mauro', N'Marchesato', N'marchesato.mauro@studenti.itis.net', N'4C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11264, N'Murizio', N'Conciello', N'conciello.murizio@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11265, N'Andrea', N'De Blasi', N'deblasi.andrea@studenti.itis.net', N'3B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11266, N'Lorena', N'Di Stefano', N'di stefano.lorena@studenti.itis.net', N'4D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11267, N'Maria', N'Balocco', N'balocco.maria@studenti.itis.net', N'1B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11268, N'Francesca', N'Barlocco', N'barlocco.francesca@studenti.itis.net', N'5A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11269, N'Giuliana', N'Casini', N'casini.giuliana@studenti.itis.net', N'5D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11270, N'Silvia', N'Sampietro', N'sampietro.silvia@studenti.itis.net', N'5A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11271, N'Simone', N'Cerrina', N'cerrina.simone@studenti.itis.net', N'5C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11272, N'Francesco', N'Cesco', N'cesco.francesco@studenti.itis.net', N'3B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11273, N'Roberto', N'Alibrando', N'alibrando.roberto@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11274, N'Roberta', N'Alibrandi', N'alibrandi.roberta@studenti.itis.net', N'4C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11275, N'Andrea', N'Cataldi', N'cataldi.andrea@studenti.itis.net', N'5A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11276, N'Anna', N'Carli', N'carli.anna@studenti.itis.net', N'3B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11277, N'Antonio', N'Carletto', N'carletto.antonio@studenti.itis.net', N'5D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11278, N'Lorena', N'Carlino', N'carlino.lorena@studenti.itis.net', N'5A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11279, N'Loretta', N'Carlini', N'carlini.loretta@studenti.itis.net', N'5C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11280, N'Roberto', N'Coluccio', N'coluccio.roberto@studenti.itis.net', N'3B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11281, N'Francesco', N'Gianfri', N'gianfri.francesco@studenti.itis.net', N'4C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11282, N'Alessandro', N'Giacobbe', N'giacobbe.alessandro@studenti.itis.net', N'5C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11283, N'Valerio', N'Cau', N'cau.valerio@studenti.itis.net', N'4C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11284, N'Andrea', N'Dattola', N'dattola.andrea@studenti.itis.net', N'4D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11285, N'Roberta', N'Dattilo', N'dattilo.roberta@studenti.itis.net', N'5A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11286, N'Alessandra', N'Dorianello', N'dorianello.alessandra@studenti.itis.net', N'1B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11287, N'Alessandro', N'Miglio', N'miglio.alessandro@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11288, N'Andrea', N'Maglie', N'maglie.andrea@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11289, N'Maria', N'Moglie', N'moglie.maria@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11290, N'Alessandra', N'Sturari', N'sturari.alessandra@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11291, N'Francesco', N'Sturello', N'sturello.francesco@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11292, N'Giuseppe', N'Zaccone', N'zaccone.giuseppe@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11293, N'Roberto', N'Zito', N'zito.roberto@studenti.itis.net', N'2A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11294, N'Alessandra', N'Zucco', N'zucco.alessandra@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11295, N'Francesca', N'Zazzera', N'zazzera.francesca@studenti.itis.net', N'3B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11296, N'Andrea', N'Paolillo', N'paolillo.andrea@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11297, N'Alessandra', N'Paone', N'paone.alessandra@studenti.itis.net', N'4C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11298, N'Simone', N'Paoletti', N'paoletti.simone@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11299, N'Gennaro', N'Pollo', N'pollo.gennaro@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11300, N'Anna', N'Capra', N'capra.anna@studenti.itis.net', N'1B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11301, N'Antonio', N'Cipro', N'cipro.antonio@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11302, N'Simone', N'Coppola', N'coppola.simone@studenti.itis.net', N'3A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11303, N'Andrea', N'Chiapello', N'chiapello.andrea@studenti.itis.net', N'2D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11304, N'Giacomo', N'Chieppa', N'chieppa.giacomo@studenti.itis.net', N'3A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11305, N'Silvia', N'Cosco', N'cosco.silvia@studenti.itis.net', N'2D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11306, N'Michele', N'Casco', N'casco.michele@studenti.itis.net', N'3A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11307, N'Paola', N'Ceppi', N'ceppi.paola@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11308, N'Mattia', N'Quazza', N'quazza.mattia@studenti.itis.net', N'1B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11309, N'Simone', N'Querio', N'querio.simone@studenti.itis.net', N'2D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11310, N'Andrea', N'Maiulati', N'maiulati.andrea@studenti.itis.net', N'2A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11311, N'Antonella', N'Mastello', N'mastello.antonella@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11312, N'Giacomo', N'Mostello', N'mostello.giacomo@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11313, N'Francesca', N'Mirenzi', N'mirenzi.francesca@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11314, N'Sofia', N'Morbelli', N'morbelli.sofia@studenti.itis.net', N'3A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11315, N'Paolo', N'Lo Presti', N'lopresti.paolo@studenti.itis.net', N'5C')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11316, N'Antonella', N'Nizar', N'nizar.antonella@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11317, N'Maurizio', N'Macr├¼', N'macr├¼.maurizio@studenti.itis.net', N'1B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11318, N'Giacomo', N'Rania', N'rania.giacomo@studenti.itis.net', N'2D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11319, N'Simone', N'Valentino', N'valentino.simone@studenti.itis.net', N'2D')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11320, N'Antonella', N'Giacometti', N'giacometti.antonella@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11321, N'Ilaria', N'Antonelli', N'antonelli.ilaria@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11322, N'Andrea', N'Occhiello', N'occhiello.andrea@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11323, N'Ilaria', N'Ombrello', N'ombrello.ilaria@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11324, N'Paolo', N'Aragona', N'aragona.paolo@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11325, N'Paola', N'Ali', N'ali.paola@studenti.itis.net', N'2A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11326, N'Sofia', N'Maffucci', N'maffucci.sofia@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11327, N'Vito', N'Conversano', N'conversano.vito@studenti.itis.net', N'3A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11328, N'Francesca', N'Capistrano', N'capistrano.francesca@studenti.itis.net', N'1A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11329, N'Sofia', N'Cocci', N'cocci.sofia@studenti.itis.net', N'5B')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11330, N'Simone', N'Porti', N'porti.simone@studenti.itis.net', N'2A')
INSERT [dbo].[Studente] ([Matricola], [Nome], [Cognome], [Email], [Classe]) VALUES (11331, N'Simone', N'Palermo', N'palermo.simone@studenti.itis.net', N'5B')
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25/01/2021 12:45:00 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 25/01/2021 12:45:00 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 25/01/2021 12:45:00 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 25/01/2021 12:45:00 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 25/01/2021 12:45:00 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25/01/2021 12:45:00 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Prestito]  WITH CHECK ADD  CONSTRAINT [FK_Prestito_Libro] FOREIGN KEY([CodiceLibro])
REFERENCES [dbo].[Libro] ([Codice])
GO
ALTER TABLE [dbo].[Prestito] CHECK CONSTRAINT [FK_Prestito_Libro]
GO
ALTER TABLE [dbo].[Prestito]  WITH CHECK ADD  CONSTRAINT [FK_Prestito_Studente] FOREIGN KEY([Matricola])
REFERENCES [dbo].[Studente] ([Matricola])
GO
ALTER TABLE [dbo].[Prestito] CHECK CONSTRAINT [FK_Prestito_Studente]
GO
USE [master]
GO
ALTER DATABASE [ITS_GestionePrestitiBiblioteca] SET  READ_WRITE 
GO
