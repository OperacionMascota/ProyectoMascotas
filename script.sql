USE [master]
GO
/****** Object:  Database [OperacionMascota]    Script Date: 13/01/2017 7:23:58 ******/
CREATE DATABASE [OperacionMascota]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OperacionMascota', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OperacionMascota.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OperacionMascota_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OperacionMascota_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OperacionMascota] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OperacionMascota].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OperacionMascota] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OperacionMascota] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OperacionMascota] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OperacionMascota] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OperacionMascota] SET ARITHABORT OFF 
GO
ALTER DATABASE [OperacionMascota] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OperacionMascota] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OperacionMascota] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OperacionMascota] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OperacionMascota] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OperacionMascota] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OperacionMascota] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OperacionMascota] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OperacionMascota] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OperacionMascota] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OperacionMascota] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OperacionMascota] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OperacionMascota] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OperacionMascota] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OperacionMascota] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OperacionMascota] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OperacionMascota] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OperacionMascota] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OperacionMascota] SET  MULTI_USER 
GO
ALTER DATABASE [OperacionMascota] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OperacionMascota] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OperacionMascota] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OperacionMascota] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OperacionMascota] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OperacionMascota]
GO
/****** Object:  Table [dbo].[Abandonados]    Script Date: 13/01/2017 7:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Abandonados](
	[id_Abandonados] [bigint] IDENTITY(1,1) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
	[Aban_Crear] [varchar](50) NULL,
	[Aban_Eliminar] [varchar](50) NULL,
	[Aban_Modificar] [varchar](50) NULL,
	[FAban_Crear] [date] NULL,
	[FAban_Eliminar] [date] NULL,
	[FAban_Modificar] [date] NULL,
 CONSTRAINT [PK_Abandonados] PRIMARY KEY CLUSTERED 
(
	[id_Abandonados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adopcion]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adopcion](
	[id_Adopcion] [bigint] IDENTITY(1,1) NOT NULL,
	[Adopcion] [bigint] NULL,
	[TipoAdopcion] [varchar](50) NULL,
	[Adop_Crear] [varchar](50) NULL,
	[Adop_Eliminar] [varchar](50) NULL,
	[Adop_Modificar] [varchar](50) NULL,
	[FAdop_Crear] [date] NULL,
	[FAdop_Eliminar] [date] NULL,
	[FAdop_Modificar] [date] NULL,
 CONSTRAINT [PK_Adopcion] PRIMARY KEY CLUSTERED 
(
	[id_Adopcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id_ciudad] [bigint] IDENTITY(1,1) NOT NULL,
	[ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comuna](
	[id_Comuna] [bigint] NOT NULL,
	[Comuna] [varchar](50) NULL,
 CONSTRAINT [PK_Comuna] PRIMARY KEY CLUSTERED 
(
	[id_Comuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Donacones]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Donacones](
	[id_Donaciones] [bigint] IDENTITY(1,1) NOT NULL,
	[TipoDonaciones] [bigint] NULL,
	[FotoBoleta] [varbinary](max) NULL,
	[FotoBoleta2] [varbinary](max) NULL,
	[FotoBoleta3] [varbinary](max) NULL,
	[Don_Crear] [varchar](50) NULL,
	[Don_Eliminar] [varchar](50) NULL,
	[Don_Modificar] [varchar](50) NULL,
	[FDon_Crear] [date] NULL,
	[FDon_Eliminar] [date] NULL,
	[FDon_Modificar] [date] NULL,
 CONSTRAINT [PK_Donacones] PRIMARY KEY CLUSTERED 
(
	[id_Donaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mascota](
	[id_Mascota] [bigint] NOT NULL,
	[NombreMascota] [varchar](50) NULL,
	[raza] [varchar](50) NULL,
	[sexo] [varchar](50) NULL,
	[tamaño] [varchar](50) NULL,
	[FotoMascota] [varbinary](max) NULL,
	[FotoMascota2] [varbinary](max) NULL,
	[FotoMascota3] [varbinary](max) NULL,
	[Masc_Crear] [varchar](50) NULL,
	[Masc_Eliminar] [varchar](50) NULL,
	[Masc_Modificar] [varchar](50) NULL,
	[FMasc_Crear] [date] NULL,
	[FMasc_Eliminar] [date] NULL,
	[FMasc_Modificar] [date] NULL,
 CONSTRAINT [PK_Mascota] PRIMARY KEY CLUSTERED 
(
	[id_Mascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[id_Pais] [bigint] IDENTITY(1,1) NOT NULL,
	[Pais] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[id_Persona] [bigint] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Rut] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Sexo_Per] [varchar](50) NULL,
	[Per_Crear] [varchar](50) NULL,
	[Per_Eliminar] [varbinary](50) NULL,
	[Per_Modificar] [varbinary](50) NULL,
	[FPer_Crear] [date] NULL,
	[FPer_Eliminar] [date] NULL,
	[FPer_Modificar] [date] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region](
	[id_region] [bigint] NOT NULL,
	[region] [varchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seguimiento]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seguimiento](
	[id_Seguimiento] [bigint] IDENTITY(1,1) NOT NULL,
	[Seguimiento] [varchar](50) NULL,
	[ListaNegra] [varchar](50) NULL,
 CONSTRAINT [PK_Seguimiento] PRIMARY KEY CLUSTERED 
(
	[id_Seguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPersona]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPersona](
	[id_TipoPersona] [bigint] NOT NULL,
	[TipoPersona] [nchar](10) NULL,
 CONSTRAINT [PK_TipoPersona] PRIMARY KEY CLUSTERED 
(
	[id_TipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[id_Ubicacion] [bigint] NOT NULL,
	[Ubicacion] [varchar](50) NULL,
	[Longitud] [float] NULL,
	[Latitud] [float] NULL,
 CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[id_Ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 13/01/2017 7:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_Usuario] [bigint] NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Adopcion]  WITH CHECK ADD  CONSTRAINT [FK_Adopcion_Mascota] FOREIGN KEY([id_Adopcion])
REFERENCES [dbo].[Mascota] ([id_Mascota])
GO
ALTER TABLE [dbo].[Adopcion] CHECK CONSTRAINT [FK_Adopcion_Mascota]
GO
ALTER TABLE [dbo].[Adopcion]  WITH CHECK ADD  CONSTRAINT [FK_Adopcion_Persona] FOREIGN KEY([Adopcion])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
ALTER TABLE [dbo].[Adopcion] CHECK CONSTRAINT [FK_Adopcion_Persona]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Ubicacion] FOREIGN KEY([id_ciudad])
REFERENCES [dbo].[Ubicacion] ([id_Ubicacion])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Ubicacion]
GO
ALTER TABLE [dbo].[Comuna]  WITH CHECK ADD  CONSTRAINT [FK_Comuna_Ubicacion] FOREIGN KEY([id_Comuna])
REFERENCES [dbo].[Ubicacion] ([id_Ubicacion])
GO
ALTER TABLE [dbo].[Comuna] CHECK CONSTRAINT [FK_Comuna_Ubicacion]
GO
ALTER TABLE [dbo].[Donacones]  WITH CHECK ADD  CONSTRAINT [FK_Donacones_Persona] FOREIGN KEY([TipoDonaciones])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
ALTER TABLE [dbo].[Donacones] CHECK CONSTRAINT [FK_Donacones_Persona]
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascota_Abandonados] FOREIGN KEY([id_Mascota])
REFERENCES [dbo].[Abandonados] ([id_Abandonados])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascota_Abandonados]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Seguimiento] FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Seguimiento] ([id_Seguimiento])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Seguimiento]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Ubicacion] FOREIGN KEY([id_region])
REFERENCES [dbo].[Ubicacion] ([id_Ubicacion])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Ubicacion]
GO
ALTER TABLE [dbo].[TipoPersona]  WITH CHECK ADD  CONSTRAINT [FK_TipoPersona_Persona] FOREIGN KEY([id_TipoPersona])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
ALTER TABLE [dbo].[TipoPersona] CHECK CONSTRAINT [FK_TipoPersona_Persona]
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD  CONSTRAINT [FK_Ubicacion_Mascota] FOREIGN KEY([id_Ubicacion])
REFERENCES [dbo].[Mascota] ([id_Mascota])
GO
ALTER TABLE [dbo].[Ubicacion] CHECK CONSTRAINT [FK_Ubicacion_Mascota]
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD  CONSTRAINT [FK_Ubicacion_Pais] FOREIGN KEY([id_Ubicacion])
REFERENCES [dbo].[Pais] ([id_Pais])
GO
ALTER TABLE [dbo].[Ubicacion] CHECK CONSTRAINT [FK_Ubicacion_Pais]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
USE [master]
GO
ALTER DATABASE [OperacionMascota] SET  READ_WRITE 
GO
