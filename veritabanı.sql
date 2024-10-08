USE [SporSalonu]
GO
/****** Object:  Table [dbo].[DiyetListesi]    Script Date: 16.04.2024 00:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiyetListesi](
	[DiyetID] [int] NOT NULL,
	[UyeID] [int] NULL,
	[DiyetAdi] [varchar](100) NULL,
	[Aciklama] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiyetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 16.04.2024 00:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonelID] [int] NOT NULL,
	[Ad] [varchar](50) NULL,
	[Soyad] [varchar](50) NULL,
	[Departman] [varchar](50) NULL,
	[Maas] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programlar]    Script Date: 16.04.2024 00:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programlar](
	[ProgramID] [int] NOT NULL,
	[ProgramAdi] [varchar](100) NULL,
	[Aciklama] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satislar]    Script Date: 16.04.2024 00:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satislar](
	[SatisID] [int] NOT NULL,
	[UrunID] [int] NULL,
	[UyeID] [int] NULL,
	[PersonelID] [int] NULL,
	[Tarih] [datetime] NULL,
	[Miktar] [int] NULL,
	[ToplamTutar] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 16.04.2024 00:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] NOT NULL,
	[UrunAdi] [varchar](100) NULL,
	[Fiyat] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 16.04.2024 00:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[UyeID] [int] NOT NULL,
	[Ad] [varchar](50) NULL,
	[Soyad] [varchar](50) NULL,
	[DogumTarihi] [date] NULL,
	[Cinsiyet] [char](1) NULL,
	[Telefon] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[KayitTarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (1, 1, N'Zayıflama', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (2, 3, N'Bulk', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (3, 5, N'Bulk', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (4, 2, N'Kilo Alma', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (5, 13, N'Kilo Alma', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (6, 2, N'Atletik', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (7, 10, N'Atletik', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (8, 9, N'Zayıflama', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (9, 6, N'Zayıflama', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (10, 16, N'İdeal Kilo', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (11, 12, N'İdeal Kilo', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (12, 4, N'Bulk', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (13, 7, N'Kilo Alma', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (14, 8, N'Atletik', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (15, 11, N'Zayıflama', N'Elinizdeki verilen programa bakınız')
INSERT [dbo].[DiyetListesi] ([DiyetID], [UyeID], [DiyetAdi], [Aciklama]) VALUES (16, 14, N'Zayıflama', N'Elinizdeki verilen programa bakınız')
GO
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (1, N'Eren', N'Şerefoğlu', N'Müdür', CAST(28000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (2, N'Emirhan', N'Kaya', N'Müdür Y.', CAST(26000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (3, N'Enes', N'Mungan', N'Müdür Y.', CAST(26000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (4, N'Mertcan', N'Kızıldağ', N'Müdür Y.', CAST(26000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (5, N'Hatice', N'Işık', N'Satış Temsilcisi', CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (6, N'Kenan', N'Hayal', N'Satış Temsilcisi', CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (7, N'Leyla', N'Mecnun', N'İnsan Kaynakları', CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Personeller] ([PersonelID], [Ad], [Soyad], [Departman], [Maas]) VALUES (8, N'İsmail', N'Kelle', N'Muhasebe', CAST(20000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (1, N'1 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (2, N'2 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (3, N'3 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (4, N'4 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (5, N'5 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (6, N'6 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (7, N'7 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (8, N'8 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (9, N'9 nolu program', N'Program kılavuzuna bakınız.')
INSERT [dbo].[Programlar] ([ProgramID], [ProgramAdi], [Aciklama]) VALUES (10, N'10 nolu program', N'Program kılavuzuna bakınız.')
GO
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (1, N'Protein Tozu 1KG', CAST(450.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (2, N'Protein Tozu 500 GR', CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (3, N'Protein Tozu 250GR', CAST(175.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (4, N'Protein Tozu Tek Kullanımlık', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (5, N'Kreatin', CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (6, N'Lastik', CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (7, N'Atlama İpi', CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (8, N'Spor Atlet', CAST(125.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (9, N'Spor Eldiven', CAST(175.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (10, N'Spor Ayakkabısı', CAST(839.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (11, N'Spor Havlusu', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (12, N'Su', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (13, N'Enerji İçeceği', CAST(16.00 AS Decimal(10, 2)))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (14, NULL, NULL)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat]) VALUES (15, NULL, NULL)
GO
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (1, N'Emirhan', N'Kaya', CAST(N'1997-11-10' AS Date), N'E', N'534854625', N'adkmasdkak@hotmail.com', CAST(N'2024-01-10' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (2, N'Enes', N'Mungan', CAST(N'2000-03-21' AS Date), N'K', N'545581258', N'adkmasdkak@hotmail.com', CAST(N'2024-01-05' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (3, N'Mertcan', N'Kızıldağ', CAST(N'1995-04-20' AS Date), N'K', N'597155205', N'adkmasdkak@hotmail.com', CAST(N'2024-01-25' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (4, N'Hatice', N'Hayran', CAST(N'1999-07-31' AS Date), N'E', N'595482106', N'adkmasdkak@hotmail.com', CAST(N'2024-02-01' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (5, N'Emine', N'Kuş', CAST(N'2003-04-30' AS Date), N'E', N'547523648', N'adkmasdkak@hotmail.com', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (6, N'İsmail', N'Asi', CAST(N'2002-06-25' AS Date), N'E', N'532145698', N'adkmasdkak@hotmail.com', CAST(N'2024-02-29' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (7, N'Lüle', N'Burgaz', CAST(N'2002-08-10' AS Date), N'K', N'521236456', N'adkmasdkak@hotmail.com', CAST(N'2024-03-03' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (8, N'Sema', N'Mukaddes', CAST(N'2001-05-18' AS Date), N'K', N'520251452', N'adkmasdkak@hotmail.com', CAST(N'2024-03-02' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (9, N'Lale', N'Seçilmez', CAST(N'2000-01-01' AS Date), N'K', N'536542215', N'adkmasdkak@hotmail.com', CAST(N'2024-03-05' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (10, N'Kadir', N'Topbaş', CAST(N'1996-02-09' AS Date), N'E', N'532145691', N'adkmasdkak@hotmail.com', CAST(N'2024-03-11' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (11, N'Ekrem', N'İmamoğlu', CAST(N'1895-06-06' AS Date), N'K', N'534854620', N'adkmasdkak@hotmail.com', CAST(N'2024-03-16' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (12, N'Özgür', N'Özel', CAST(N'1984-09-07' AS Date), N'E', N'536542218', N'adkmasdkak@hotmail.com', CAST(N'2024-03-22' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (13, N'Recep', N'Erdoğan', CAST(N'1952-10-13' AS Date), N'K', N'532145663', N'adkmasdkak@hotmail.com', CAST(N'2024-04-03' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (14, N'Memati', N'Baş', CAST(N'2005-12-15' AS Date), N'E', N'532144529', N'adkmasdkak@hotmail.com', CAST(N'2024-04-06' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (15, N'Polat', N'Alemdar', CAST(N'1998-01-02' AS Date), N'K', N'536542227', N'adkmasdkak@hotmail.com', CAST(N'2024-04-12' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (16, N'Deneme', N'Deeeee', CAST(N'1998-02-03' AS Date), N'E', N'12414', N'asdsadasdas', CAST(N'2024-04-24' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (17, N'Calısıyor', N'MUUUU', CAST(N'1995-02-03' AS Date), N'E', N'12414', N'asdsadasdas', CAST(N'2024-12-03' AS Date))
INSERT [dbo].[Uyeler] ([UyeID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Email], [KayitTarihi]) VALUES (18, N'eren', N'', CAST(N'1900-01-01' AS Date), N' ', N'', N'', CAST(N'2024-03-13' AS Date))
GO
ALTER TABLE [dbo].[DiyetListesi]  WITH CHECK ADD FOREIGN KEY([UyeID])
REFERENCES [dbo].[Uyeler] ([UyeID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personeller] ([PersonelID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([UyeID])
REFERENCES [dbo].[Uyeler] ([UyeID])
GO
