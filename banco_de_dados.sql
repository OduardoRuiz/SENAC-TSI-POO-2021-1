USE [master]
GO
/****** Object:  Database [projeto_vacina]    Script Date: 02/11/2020 21:42:38 ******/
CREATE DATABASE [projeto_vacina]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projeto_vacina', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\projeto_vacina.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projeto_vacina_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\projeto_vacina_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [projeto_vacina] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projeto_vacina].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projeto_vacina] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projeto_vacina] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projeto_vacina] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projeto_vacina] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projeto_vacina] SET ARITHABORT OFF 
GO
ALTER DATABASE [projeto_vacina] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [projeto_vacina] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projeto_vacina] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projeto_vacina] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projeto_vacina] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projeto_vacina] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projeto_vacina] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projeto_vacina] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projeto_vacina] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projeto_vacina] SET  DISABLE_BROKER 
GO
ALTER DATABASE [projeto_vacina] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projeto_vacina] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projeto_vacina] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projeto_vacina] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projeto_vacina] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projeto_vacina] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [projeto_vacina] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projeto_vacina] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [projeto_vacina] SET  MULTI_USER 
GO
ALTER DATABASE [projeto_vacina] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projeto_vacina] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projeto_vacina] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projeto_vacina] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projeto_vacina] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projeto_vacina] SET QUERY_STORE = OFF
GO
USE [projeto_vacina]
GO
/****** Object:  Table [dbo].[Admini]    Script Date: 02/11/2020 21:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admini](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cpf] [varchar](15) NOT NULL,
	[senha] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cadastro]    Script Date: 02/11/2020 21:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cadastro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](240) NOT NULL,
	[cpf] [varchar](15) NOT NULL,
	[sus] [varchar](20) NULL,
	[senha] [char](60) NOT NULL,
	[foto] [varchar](100) NULL,
	[mdEscuro] [varchar](10) NULL,
 CONSTRAINT [PK_Cadastro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrousel]    Script Date: 02/11/2020 21:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrousel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imagem] [varchar](250) NOT NULL,
	[idAdmin] [int] NOT NULL,
 CONSTRAINT [PK_Carrousel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 02/11/2020 21:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereco](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cep] [varchar](10) NOT NULL,
	[rua] [varchar](250) NOT NULL,
	[numero] [varchar](100) NOT NULL,
	[complemento] [varchar](100) NOT NULL,
	[bairro] [varchar](100) NOT NULL,
	[estado] [varchar](3) NOT NULL,
	[cidade] [varchar](100) NOT NULL,
	[idCadastro] [int] NOT NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 02/11/2020 21:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imagem] [varchar](250) NOT NULL,
	[texto] [varchar](300) NOT NULL,
	[link] [varchar](250) NOT NULL,
	[idAdmin] [int] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacina]    Script Date: 02/11/2020 21:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacina](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bcg] [varchar](10) NULL,
	[hepatiteb] [varchar](10) NULL,
	[pentavalente] [varchar](10) NULL,
	[vip] [varchar](10) NULL,
	[vorh] [varchar](10) NULL,
	[pneumococica10] [varchar](10) NULL,
	[meningococicac] [varchar](10) NULL,
	[pentavalente2] [varchar](10) NULL,
	[vip2] [varchar](10) NULL,
	[vorh2] [varchar](10) NULL,
	[pneumococica102] [varchar](10) NULL,
	[meningococicac2] [varchar](10) NULL,
	[pentavalente3] [varchar](10) NULL,
	[vip3] [varchar](10) NULL,
	[febreamarela] [varchar](10) NULL,
	[pneumococica10reforco] [varchar](10) NULL,
	[src] [varchar](10) NULL,
	[meningococicareforco] [varchar](10) NULL,
	[vop1] [varchar](10) NULL,
	[hepatitea] [varchar](10) NULL,
	[dtp1] [varchar](10) NULL,
	[scrv] [varchar](10) NULL,
	[dtp2] [varchar](10) NULL,
	[vop2] [varchar](10) NULL,
	[varicela] [varchar](10) NULL,
	[febreamarela2] [varchar](10) NULL,
	[hpv] [varchar](10) NULL,
	[hepatiteb3] [varchar](10) NULL,
	[duplaadulta3] [varchar](10) NULL,
	[tripliceviral2] [varchar](10) NULL,
	[febreamarela3] [varchar](10) NULL,
	[hpv2] [varchar](10) NULL,
	[meningococicacreforco] [varchar](10) NULL,
	[hepatiteb4] [varchar](10) NULL,
	[duplaadulta4] [varchar](10) NULL,
	[febreamarela4] [varchar](10) NULL,
	[tripliceviral] [varchar](10) NULL,
	[hepatiteb5] [varchar](10) NULL,
	[duplaadulta5] [varchar](10) NULL,
	[hepatiteb6] [varchar](10) NULL,
	[febreamarela5] [varchar](10) NULL,
	[duplaadulta6] [varchar](10) NULL,
	[tripliceviral3] [varchar](10) NULL,
	[idEndereco] [int] NOT NULL,
 CONSTRAINT [PK_Vacina] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Admin]    Script Date: 02/11/2020 21:42:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Admin] ON [dbo].[Admini]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cadastro]    Script Date: 02/11/2020 21:42:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cadastro] ON [dbo].[Cadastro]
(
	[cpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carrousel]  WITH CHECK ADD  CONSTRAINT [FK_Carrousel_Admini] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[Admini] ([id])
GO
ALTER TABLE [dbo].[Carrousel] CHECK CONSTRAINT [FK_Carrousel_Admini]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Cadastro] FOREIGN KEY([idCadastro])
REFERENCES [dbo].[Cadastro] ([id])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_Cadastro]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Admin] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[Admini] ([id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Admin]
GO
ALTER TABLE [dbo].[Vacina]  WITH CHECK ADD  CONSTRAINT [FK_Vacina_Endereco1] FOREIGN KEY([idEndereco])
REFERENCES [dbo].[Endereco] ([id])
GO
ALTER TABLE [dbo].[Vacina] CHECK CONSTRAINT [FK_Vacina_Endereco1]
GO
USE [master]
GO
ALTER DATABASE [projeto_vacina] SET  READ_WRITE 
GO
