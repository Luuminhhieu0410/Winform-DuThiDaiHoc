USE [DuThiDaiHoc]
GO
/****** Object:  Table [dbo].[DiemChuan]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemChuan](
	[MaNganh] [nvarchar](255) NOT NULL,
	[TenNganh] [nvarchar](255) NULL,
	[TongDiem] [float] NULL,
	[TenTruong] [nvarchar](255) NULL,
	[ChiTieu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemThi]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThi](
	[SoBD] [int] NULL,
	[DiemToan] [float] NULL,
	[DiemLy] [float] NULL,
	[DiemHoa] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTuong]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTuong](
	[MaDoiTuong] [nvarchar](255) NOT NULL,
	[TenDoiTuong] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoThiSinh]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoThiSinh](
	[SoBD] [int] NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[MaQueQuan] [nvarchar](255) NULL,
	[MaKhuVuc] [nvarchar](255) NULL,
	[MaUuTien] [nvarchar](255) NULL,
	[MaDoiTuong] [nvarchar](255) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[AnhSinhVien] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKhuVuc] [nvarchar](255) NOT NULL,
	[TenKhuVuc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenVong]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenVong](
	[MaNganh] [nvarchar](255) NULL,
	[TenNguyenVong] [nvarchar](255) NULL,
	[ThuTuNV] [int] NULL,
	[SoBD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueQuan]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueQuan](
	[MaQue] [nvarchar](255) NOT NULL,
	[TenQue] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UuTien]    Script Date: 10/23/2024 11:00:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UuTien](
	[MaUuTien] [nvarchar](255) NOT NULL,
	[TenUuTien] [nvarchar](255) NULL,
	[DiemUuTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaUuTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CD1', N'Cầu Đường', 22, N'Đại Học Giao Thông Vận Tải', 180)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CDT1', N'Cơ Điện Tử', 23.8, N'Đại Học Giao Thông Vận Tải', 240)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CDT2', N'Cơ Điện Tử', 23.1, N'Đại Điện Lực', 240)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CDT3', N'Cơ Điện Tử', 23.2, N'Đại Học Công Nghiệp', 240)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CK1', N'Cơ Khí', 22.7, N'Đại Học Điện Lực', 170)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CK2', N'Cơ Khí', 22.6, N'Đại Học Giao Thông Vận Tải', 170)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CK3', N'Cơ Khí', 22.5, N'Đại Học Công Nghiệp', 170)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'CT1', N'Công Trình', 23.5, N'Đại Học Giao Thông Vận Tải', 250)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'IT1', N'Công nghệ thông tin', 26, N'Đại Học Giao Thông Vận Tải', 500)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'IT2', N'Công nghệ thông tin', 25.9, N'Đại Học Công Nghiệp', 450)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'IT3', N'Công nghệ thông tin', 25.8, N'Đại Học Điện Lực', 440)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KHMT1', N'Khoa Học Máy Tính', 25.8, N'Đại Học Giao Thông Vận Tải', 330)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KHMT2', N'Khoa Học Máy Tính', 25.2, N'Đại Học Công Nghiệp', 320)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KHMT3', N'Khoa Học Máy Tính', 25.4, N'Đại Học Điện Lực', 350)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KT1', N'Kế Toán', 24.85, N'Đại Học Giao Thông Vận Tải', 400)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KT2', N'Kế Toán', 24.4, N'Đại Học Điện Lực ', 300)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KT3', N'Kế Toán', 24.55, N'Đại Học Công Nghiệp', 330)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KT4', N'Kế Toán', 24.25, N'Đại Học Thương Mại', 320)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KTE1', N'Kinh tế', 24.5, N'Đai Học Giao Thông Vận Tải', 600)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KTE2', N'Kinh tế', 24.4, N'Đai Học Công Nghiệp', 580)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'KTE3', N'Kinh tế', 24.3, N'Đai Học Điện Lực', 560)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'MK1', N'Marketing', 26, N'Đại Học Thương Mại', 560)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'MK2', N'Marketing', 24.7, N'Đại Học Giao Thông Vận Tải', 560)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'MK3', N'Marketing', 24.6, N'Đại Học Công Nghiệp', 540)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'MK4', N'Marketing', 24.5, N'Đại Học Điện Lực', 530)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'OT1', N'Kĩ Thuật Ô tô', 24.4, N'Đại Học Giao Thông Vận Tải', 220)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'OT2', N'Kĩ Thuật Ô tô', 24.3, N'Đại Học Công Nghiệp', 230)
INSERT [dbo].[DiemChuan] ([MaNganh], [TenNganh], [TongDiem], [TenTruong], [ChiTieu]) VALUES (N'OT3', N'Kĩ Thuật Ô tô', 24.2, N'Đại Học Điện Lực', 240)
GO
INSERT [dbo].[DiemThi] ([SoBD], [DiemToan], [DiemLy], [DiemHoa]) VALUES (1001, 8.5, 7.5, 10)
INSERT [dbo].[DiemThi] ([SoBD], [DiemToan], [DiemLy], [DiemHoa]) VALUES (1002, 9, 8.5, 7.5)
INSERT [dbo].[DiemThi] ([SoBD], [DiemToan], [DiemLy], [DiemHoa]) VALUES (1003, 7.5, 8, 7)
GO
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'DT01', N'Không')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'DT02', N'Dân tộc thiểu số')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'DT03', N'Con thương binh, bệnh binh')
GO
INSERT [dbo].[HoSoThiSinh] ([SoBD], [HoTen], [NgaySinh], [GioiTinh], [MaQueQuan], [MaKhuVuc], [MaUuTien], [MaDoiTuong], [MatKhau], [GhiChu], [AnhSinhVien]) VALUES (1001, N'Nguyễn Văn Tùng', CAST(N'2000-01-07T00:00:00.000' AS DateTime), N'Nam', N'Q06', N'KV02-NT', N'UT02', N'DT02', N'1234', N'', N'C:\Users\luu79\source\repos\DuThiDaiHoc\image\2.png')
INSERT [dbo].[HoSoThiSinh] ([SoBD], [HoTen], [NgaySinh], [GioiTinh], [MaQueQuan], [MaKhuVuc], [MaUuTien], [MaDoiTuong], [MatKhau], [GhiChu], [AnhSinhVien]) VALUES (1002, N'Trần Thị B', CAST(N'2002-10-22T00:00:00.000' AS DateTime), N'Nữ', N'Q02', N'KV02', N'UT02', N'DT02', N'123', N'', NULL)
INSERT [dbo].[HoSoThiSinh] ([SoBD], [HoTen], [NgaySinh], [GioiTinh], [MaQueQuan], [MaKhuVuc], [MaUuTien], [MaDoiTuong], [MatKhau], [GhiChu], [AnhSinhVien]) VALUES (1003, N'Lê Văn C', CAST(N'2004-01-18T00:00:00.000' AS DateTime), N'Nam', N'Q03', N'KV03', N'UT03', N'DT03', N'123', N'', NULL)
GO
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV01', N'Khu vực 1')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV02', N'Khu vực 2')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV02-NT', N'Khu vực 2 - Nông Thôn')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV03', N'Khu vực 3')
GO
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'KT4', N'K? Toán', 1, 1001)
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'OT1', N'Kĩ Thuật Ô Tô', 2, 1001)
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'CK3', N'Cơ Khí', 3, 1001)
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'KHMT3', N'Khoa Học Máy Tính', 1, 1002)
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'CK1', N'Cơ Khí', 4, 1001)
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'CK1', N'Cơ Khí', 2, 1002)
INSERT [dbo].[NguyenVong] ([MaNganh], [TenNguyenVong], [ThuTuNV], [SoBD]) VALUES (N'KTE3', N'Kinh tế', 5, 1001)
GO
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q01', N'Hà Nội')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q02', N'TP.HCM')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q03', N'Đà Nẵng')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q04', N'Hải Phòng')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q05', N'Cần Thơ')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q06', N'An Giang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q07', N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q08', N'Bắc Giang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q09', N'Bắc Kạn')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q10', N'Bạc Liêu')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q11', N'Bắc Ninh')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q12', N'Bến Tre')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q13', N'Bình Định')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q14', N'Bình Dương')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q15', N'Bình Phước')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q16', N'Bình Thuận')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q17', N'Cà Mau')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q18', N'Cao Bằng')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q19', N'Đắk Lắk')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q20', N'Đắk Nông')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q21', N'Điện Biên')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q22', N'Đồng Nai')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q23', N'Đồng Tháp')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q24', N'Gia Lai')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q25', N'Hà Giang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q26', N'Hà Nam')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q27', N'Hà Tĩnh')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q28', N'Hải Dương')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q29', N'Hậu Giang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q30', N'Hòa Bình')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q31', N'Hưng Yên')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q32', N'Khánh Hòa')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q33', N'Kiên Giang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q34', N'Kon Tum')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q35', N'Lai Châu')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q36', N'Lâm Đồng')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q37', N'Lạng Sơn')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q38', N'Lào Cai')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q39', N'Long An')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q40', N'Nam Định')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q41', N'Nghệ An')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q42', N'Ninh Bình')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q43', N'Ninh Thuận')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q44', N'Phú Thọ')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q45', N'Phú Yên')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q46', N'Quảng Bình')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q47', N'Quảng Nam')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q48', N'Quảng Ngãi')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q49', N'Quảng Ninh')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q50', N'Quảng Trị')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q51', N'Sóc Trăng')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q52', N'Sơn La')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q53', N'Tây Ninh')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q54', N'Thái Bình')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q55', N'Thái Nguyên')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q56', N'Thanh Hóa')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q57', N'Thừa Thiên Huế')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q58', N'Tiền Giang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q59', N'Trà Vinh')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q60', N'Tuyên Quang')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q61', N'Vĩnh Long')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q62', N'Vĩnh Phúc')
INSERT [dbo].[QueQuan] ([MaQue], [TenQue]) VALUES (N'Q63', N'Yên Bái')
GO
INSERT [dbo].[UuTien] ([MaUuTien], [TenUuTien], [DiemUuTien]) VALUES (N'UT01', N'không', 0)
INSERT [dbo].[UuTien] ([MaUuTien], [TenUuTien], [DiemUuTien]) VALUES (N'UT02', N'Ngành thiếu nhân lực', 1)
INSERT [dbo].[UuTien] ([MaUuTien], [TenUuTien], [DiemUuTien]) VALUES (N'UT03', N'học sinh giỏi quốc gia', 1.5)
GO
ALTER TABLE [dbo].[DiemThi]  WITH CHECK ADD  CONSTRAINT [FK_HoSoTT_SoBD] FOREIGN KEY([SoBD])
REFERENCES [dbo].[HoSoThiSinh] ([SoBD])
GO
ALTER TABLE [dbo].[DiemThi] CHECK CONSTRAINT [FK_HoSoTT_SoBD]
GO
ALTER TABLE [dbo].[HoSoThiSinh]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_MaDoiTuong] FOREIGN KEY([MaDoiTuong])
REFERENCES [dbo].[DoiTuong] ([MaDoiTuong])
GO
ALTER TABLE [dbo].[HoSoThiSinh] CHECK CONSTRAINT [FK_DoiTuong_MaDoiTuong]
GO
ALTER TABLE [dbo].[HoSoThiSinh]  WITH CHECK ADD  CONSTRAINT [FK_KhuVuc_MaKhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[HoSoThiSinh] CHECK CONSTRAINT [FK_KhuVuc_MaKhuVuc]
GO
ALTER TABLE [dbo].[HoSoThiSinh]  WITH CHECK ADD  CONSTRAINT [FK_QueQuan_MaQue] FOREIGN KEY([MaQueQuan])
REFERENCES [dbo].[QueQuan] ([MaQue])
GO
ALTER TABLE [dbo].[HoSoThiSinh] CHECK CONSTRAINT [FK_QueQuan_MaQue]
GO
ALTER TABLE [dbo].[HoSoThiSinh]  WITH CHECK ADD  CONSTRAINT [FK_UuTien_MaUuTien] FOREIGN KEY([MaUuTien])
REFERENCES [dbo].[UuTien] ([MaUuTien])
GO
ALTER TABLE [dbo].[HoSoThiSinh] CHECK CONSTRAINT [FK_UuTien_MaUuTien]
GO
ALTER TABLE [dbo].[NguyenVong]  WITH CHECK ADD FOREIGN KEY([SoBD])
REFERENCES [dbo].[HoSoThiSinh] ([SoBD])
GO
ALTER TABLE [dbo].[NguyenVong]  WITH CHECK ADD  CONSTRAINT [FK_DiemChuan_MaNguyenVong] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[DiemChuan] ([MaNganh])
GO
ALTER TABLE [dbo].[NguyenVong] CHECK CONSTRAINT [FK_DiemChuan_MaNguyenVong]
GO
