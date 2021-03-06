USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 5/19/2021 11:49:54 AM ******/
CREATE DATABASE [ShopOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TINHLE\MSSQL\DATA\ShopOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TINHLE\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopOnline', N'ON'
GO
ALTER DATABASE [ShopOnline] SET QUERY_STORE = OFF
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/19/2021 11:49:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 5/19/2021 11:49:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSX] [nvarchar](10) NOT NULL,
	[TenNhaSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/19/2021 11:49:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNhaSX] [nvarchar](10) NULL,
	[TenSP] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SLDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP02', N'Trung Bình')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP03', N'Sang Chảnh')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX01', N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX02', N'SamSumg')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX03', N'Xiaomi')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX04', N'Oppo')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(1 AS Numeric(18, 0)), N'LSP01', N'NSX01', N'IPHONE 6 16GB', N'Chưa xác định', N'1.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(2 AS Numeric(18, 0)), N'LSP01', N'NSX01', N'IPHONE 7 16GB', N'Chưa xác định', N'2.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(3 AS Numeric(18, 0)), N'LSP02', N'NSX01', N'IPHONE 8 16GB', N'Chưa xác định', N'3.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(4 AS Numeric(18, 0)), N'LSP03', N'NSX01', N'IPHONE X 16GB', N'Chưa xác định', N'4.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(5 AS Numeric(18, 0)), N'LSP01', N'NSX02', N'SAMSUNG GALAXY 1', N'Chưa xác định', N'5.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(6 AS Numeric(18, 0)), N'LSP01', N'NSX02', N'SAMSUNG GALAXY 2', N'Chưa xác định', N'6.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(7 AS Numeric(18, 0)), N'LSP02', N'NSX02', N'SAMSUNG GALAXY 3', N'Chưa xác định', N'7.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(8 AS Numeric(18, 0)), N'LSP03', N'NSX02', N'SAMSUNG GALAXY 4', N'Chưa xác định', N'8.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(9 AS Numeric(18, 0)), N'LSP01', N'NSX03', N'XIAOMI 1', N'Chưa xác định', N'9.png', NULL, NULL, NULL, NULL, 12222222, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(10 AS Numeric(18, 0)), N'LSP01', N'NSX03', N'XIAOMI 2', N'Chưa xác định', N'10.png', NULL, NULL, NULL, NULL, 12222222, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(11 AS Numeric(18, 0)), N'LSP02', N'NSX03', N'XIAOMI 3', N'Chưa xác định', N'11.png', NULL, NULL, NULL, NULL, 12222222, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (CAST(12 AS Numeric(18, 0)), N'LSP03', N'NSX03', N'XIAOMI 4', N'Chưa xác định', N'12.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SLDaBan]  DEFAULT ((0)) FOR [SLDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
