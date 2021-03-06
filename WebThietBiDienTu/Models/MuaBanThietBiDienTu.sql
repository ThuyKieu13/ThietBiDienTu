USE [MuaBanThietBiDienTu]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayGiao] [datetime] NULL,
	[NgayDat] [datetime] NULL,
	[DaThanhToan] [nvarchar](50) NULL,
	[TinhTrangGiaoHang] [int] NULL CONSTRAINT [DF__DonHang__TinhTra__1BFD2C07]  DEFAULT ((0)),
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DienThoai] [char](10) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](max) NULL,
	[email] [varchar](50) NULL,
	[taikhoan] [varchar](50) NULL,
	[matkhau] [varchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DienThoai] [char](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomHang]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomHang](
	[MaNhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomHang] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/2/2020 3:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SLTon] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNhom] [int] NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (1, 27, 1, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [DaThanhToan], [TinhTrangGiaoHang], [MaKH], [MaNV]) VALUES (1, CAST(N'2020-12-17 00:00:00.000' AS DateTime), CAST(N'2020-12-02 01:21:04.103' AS DateTime), NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (1, N'Ngô Vũ Tú Phi', CAST(N'2000-06-15 00:00:00.000' AS DateTime), N'Nữ', N'0967810647', N'tuphi', N'tuphi', N'ngovutuphi15062000@gmail.com', N'Hồ Chí Minh')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (2, N'Huỳnh Thi Thanh Tuyền', CAST(N'2000-11-23 00:00:00.000' AS DateTime), N'Nữ', N'0912345678', N'tuyen', N'tuyen', N'htuyen2311@gmail.com', N'Lâm Đồng')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (3, N'Nguyễn Huỳnh Như', CAST(N'2000-11-16 00:00:00.000' AS DateTime), N'Nữ', N'0168746783', N'nhu', N'nhu', N'huynhnhu1611@gmail.com', N'Cần Thơ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (1, N'Samsung')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (2, N'LG')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (3, N'Sony')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (4, N'TCL')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (5, N'Beko')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (6, N'Elextrolux')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (7, N'Panasonic')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (8, N'Toshiba')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (9, N'Oppo')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (10, N'HP')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (11, N'Daikin')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (12, N'Sunhouse')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (13, N'Kangaroo')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (14, N'Philips')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (15, N'Dell')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (16, N'Asus')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (17, N'Lenovo')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (18, N'Xiaomi')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (19, N'Casio')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (20, N'Apple')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (21, N'Sanaky')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (22, N'Acer')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (23, N'Ariston')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (24, N'Mozard')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [email], [taikhoan], [matkhau], [DiaChi], [NgaySinh], [GioiTinh], [DienThoai]) VALUES (1, N'Nguyễn Văn A', N'nguyenvana123@gmail.com', N'nva', N'nva', N'Gò Vấp, Hồ Chí Minh', CAST(N'1990-12-24 00:00:00.000' AS DateTime), N'Nam', N'0912345678')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [email], [taikhoan], [matkhau], [DiaChi], [NgaySinh], [GioiTinh], [DienThoai]) VALUES (2, N'Bạch Tịnh Trần', N'tieuhoathuong@gmail.com', N'tieutinhtran', N'tieutinhtran', N'Bình Thạnh, Hồ Chí Minh', CAST(N'2000-06-15 00:00:00.000' AS DateTime), N'Nữ', N'0967810647')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [email], [taikhoan], [matkhau], [DiaChi], [NgaySinh], [GioiTinh], [DienThoai]) VALUES (3, N'Bạch Hi Cảnh', N'bachhicanhcn@gmail.com', N'bachhicanh', N'bachhicanh', N'Bình Thạnh, Hồ Chí Minh', CAST(N'1980-11-27 00:00:00.000' AS DateTime), N'Nam', N'0967382145')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhomHang] ON 

INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (1, N'<a hewTivi, Âm thanh')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (2, N'Máy lạnh')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (3, N'Tủ đông, Tủ lạnh')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (4, N'Laptop')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (5, N'Máy giặt')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (6, N'Điện gia dụng lớn')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (7, N'Điện gia dụng nhỏ')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (8, N'Đồng hồ')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (9, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[NhomHang] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (1, N'Smart Tivi LG 32 inch 32LM570BPTC', CAST(6650000 AS Decimal(18, 0)), N'Thiết kế màn hình 32 inch, nhỏ gọn.
Độ phân giải HD cho hình ảnh sắc nét, rõ ràng.
Hỗ trợ kết nối bluetooth với loa ngoài tiện lợi.
Công nghệ Active HDR và HDR Effect mang đến hình ảnh chân thật rõ nét.
Công nghệ Resolution Upscaler giúp nâng cấp những hình ảnh độ phân giải thấp lên gần bằng với HD.
Công nghệ âm thanh DTS Virtual:X cho âm thanh vòm trong trẻo.
Hệ điều hành WebOS 4.5 dễ sử dụng đi kèm kho ứng dụng phong phú.
Điều khiển tivi bằng điện thoại qua ứng dụng LG TV Plus.
Hỗ trợ chiếu màn hình điện thoại lên tivi với Screen Mirroring.', N'lg-32lm570bptc.jpg', 555, 2, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (2, N'Android Tivi Sony 4K 43 inch KD-43X8000G', CAST(10900000 AS Decimal(18, 0)), N'Kiểu dáng hiện đại, gọn gàng phù hợp với nhiều không gian nội thất như phòng ngủ, phòng khách.
Hình ảnh sắc nét với độ phân giải 4K .
Tái hiện dải màu phong phú, chân thực hơn cùng công nghệ màn hình chấm lượng tử TRILUMINOS.
Khả năng nâng cấp chất lượng hình ảnh độ phân giải thấp lên gần chuẩn 4K với công nghệ 4K X-Reality PRO.
Mang đến trải nghiệm âm thanh mạnh mẽ, sống động với công nghệ S-Force Front Surround.
Hệ điều hành Android 8.0 hiện đại cùng remote thông minh, Google Assistant điều khiển, tìm kiếm giọng nói tiếng Việt dễ dàng.
Hỗ trợ điều khiển TV bằng điện thoại qua ứng dụng Video & TV SideView và hỗ trợ chiếu màn hình điện thoại android lên TV dễ dàng.', N'tivi-sony-kd-43x8000g.jpg', 93, 3, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (3, N'Smart Tivi Samsung 43 inch UA43R6000', CAST(8690000 AS Decimal(18, 0)), N'Thiết kế nhỏ gọn đi cùng với màn hình 43 inch.
Độ phân giải Full HD rõ nét gấp 2 lần so với độ phân giải HD.
Màu sắc sống động với công nghệ PurColor.
Hình ảnh có độ tương phản cao với công nghệ Micro Dimming Pro.
Âm thanh vòm sống động với công nghệ Dolby Digital.
Hệ điều hành Tizen OS dễ sử dụng cùng với kho ứng dụng phong phú.
Remote thông minh hỗ trợ tìm kiếm giọng nói tiếng Việt 3 miền (chỉ hỗ trợ trên YouTube).
Điều khiển tivi bằng điện thoại với ứng dụng SmartThings.
Chiếu màn hình điện thoại lên tivi với tính năng Screen Mirroring.', N'tivi-samsung-ua43r6000.jpg', 150, 1, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (6, N'Cặp Loa Karaoke JBL MK 12', CAST(13900000 AS Decimal(18, 0)), N'Loa chính:Dài 58.8 cm - Rộng 35.5 cm - Cao 35.5 cm - Nặng 11 kg', N'Hinh1.JPG', 10, 21, 9, N'Loa')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (7, N'Smart Tivi Samsung 43 inch UA43R6000', CAST(7440000 AS Decimal(18, 0)), N'Màn hình:Full HD', N'Hinh2.JPG', 10, 1, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (8, N'Tủ lạnh Samsung Inverter 236 lít RT22M4032BY/SV', CAST(5690000 AS Decimal(18, 0)), N'Ngăn đông mềm trữ thịt cá không cần rã đông, Inverter tiết kiệm điện', N'Hinh3.JPG', 10, 1, 3, N'Tủ lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (9, N'Android Tivi Sony 4K 43 inch KD-43X8000H', CAST(12400000 AS Decimal(18, 0)), N'Màn hình:Ultra HD 4K, có HDR, Màn hình chấm lượng tử', N'Hinh4.JPG', 10, 3, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (10, N'Tủ lạnh Panasonic Inverter 368 lít NR-BX410WKVN', CAST(18090000 AS Decimal(18, 0)), N'Ngăn đông mềm trữ thịt cá không cần rã đông, Inverter tiết kiệm điện, Lấy nước ngoài kháng khuẩn, Lấy nước bên ngoài', N'Hinh5.JPG', 10, 7, 3, N'Tủ lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (11, N'Máy giặt Panasonic Inverter 9.5 Kg NA-FD95V1BRV', CAST(10990000 AS Decimal(18, 0)), N'Diệt khuẩn 99.99%, giặt sạch vết bẩn cứng đầu nhờ công nghệ nước nóng StainMaster+.', N'Hinh6.JPG', 10, 7, 5, N' Máy giặt')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (12, N'Máy sấy Electrolux 8 Kg EDV805JQWA', CAST(9490000 AS Decimal(18, 0)), N'Công nghệ sấy:Sấy thông hơi', N'Hinh7.JPG', 10, 6, 7, N'Máy sấy')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (13, N'Máy lạnh Panasonic Inverter 1 HP CU/CS-PU9WKH-8M', CAST(10590000 AS Decimal(18, 0)), N'Công suất lạnh:1 HP - 9.040 BTU', N'Hinh8.JPG', 10, 7, 2, N'Máy lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (14, N'Máy lạnh Samsung Inverter 1 HP AR10TYHYCWKNSV', CAST(8790000 AS Decimal(18, 0)), N'Công suất lạnh:1 HP - 9.400 BTU', N'Hinh9.JPG', 10, 1, 2, N'Máy lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (15, N'Máy lọc nước RO nóng lạnh Sunhouse SHR76210CK 10 lõi', CAST(7230000 AS Decimal(18, 0)), N'Hệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ', N'Hinh10.JPG', 10, 12, 7, N'Máy lọc nước')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (16, N'Máy nước nóng Ariston AURES SM45PE SBS VN 4500W', CAST(3990000 AS Decimal(18, 0)), N'Vòi sen 3 chế độ phun, Van cấp nước tích hợp 3 trong 1 (Khoá - Lọc - Mở)', N'Hinh11.JPG', 10, 23, 7, N'Máy nước nóng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (17, N'Nồi cơm điện Kangaroo 1.2 lít KG822 đỏ', CAST(560000 AS Decimal(18, 0)), N'Có xửng hấp, Nồi chống dính', N'Hinh12.JPG', 10, 13, 7, N'Nồi cơm')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (18, N'Máy xay Kangaroo KG3B6M', CAST(686000 AS Decimal(18, 0)), N'Xay sinh tố,Xay hạt,Xay thịt', N'Hinh13.JPG', 10, 13, 7, N'Máy xay đa năng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (19, N'Lò vi sóng Panasonic NN-GT35HMYUE 23 lít', CAST(2121000 AS Decimal(18, 0)), N'Rã đông, hâm, nấu, nướng', N'Hinh14.JPG', 10, 7, 7, N'Lò vi sóng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (20, N'Robot hút bụi Xiaomi Vacuum Mop Essential SKV4136GL', CAST(4193000 AS Decimal(18, 0)), N'Robot hút bụi không dây đẹp mắt, di chuyển linh hoạt đến mọi ngóc ngách trong nhà', N'Hinh15.JPG', 10, 18, 7, N'Robot hút bụi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (21, N'Máy lọc không khí Kangaroo KG30AP1', CAST(2765000 AS Decimal(18, 0)), N'Màng lọc thô, Màng lọc than hoạt tính, HEPA', N'Hinh16.JPG', 10, 13, 7, N'Máy lọc không khí')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (22, N'Bếp hồng ngoại Sanaky SNK-2103HGN', CAST(840000 AS Decimal(18, 0)), N'Nấu thông thường, Súp, Đun nước, Chiên, Nướng, Giữ ấm', N'Hinh17.JPG', 10, 21, 7, N'Bếp hồng ngoại')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (23, N'Máy giặt LG Inverter 8.5 kg FV1408S4W', CAST(9790000 AS Decimal(18, 0)), N'Công nghệ giặt hơi nước Steam (cửa trước), Giặt 6 chuyển động', N'Hinh18.JPG', 10, 2, 5, N'Máy giặt')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (26, N'Laptop Acer Aspire A515 53 5112 i5 8265U/4GB+16GB/1TB/Win10 (NX.H6DSV.002)', CAST(10490000 AS Decimal(18, 0)), N'Màn hình:15.6 inch, Full HD (1920 x 1080)', N'Hinh21.JPG', 10, 22, 4, N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (27, N'Laptop Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', CAST(18890000 AS Decimal(18, 0)), N'Màn hình:13.3 inch, WXGA+(1440 x 900)', N'Hinh22.JPG', 10, 20, 4, N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (28, N'Laptop Asus VivoBook X509MA N4020/4GB/256GB/Win10 (BR271T)', CAST(6990000 AS Decimal(18, 0)), N'Màn hình:15.6 inch, HD (1366 x 768)', N'Hinh23.JPG', 10, 16, 4, N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (31, N'Máy giặt LG Inverter 9 kg FV1409S2W', CAST(11990000 AS Decimal(18, 0)), N'Công nghệ giặt hơi nước Steam (cửa trước), Công nghệ giặt tiết kiệm TurboWash, Giặt 6 chuyển động', N'Hinh26.JPG', 10, 2, 5, N'Máy giặt')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (32, N'Tủ đông Sanaky 260 lít VH-3699W1', CAST(6890000 AS Decimal(18, 0)), N'Lỗ thoát nước, Khoá cửa tủ, Giỏ đựng đồ', N'Hinh27.JPG', 10, 21, 3, N'Tủ đông')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (33, N'Tai nghe Bluetooth True Wireless Mozard TS13 Đen', CAST(650000 AS Decimal(18, 0)), N'Thiết kế gọn nhẹ, đẹp mắt, đeo vừa vặn.
Chất âm sống động, quyến rũ.
Kết nối nhanh, ổn định với công nghệ Bluetooth 5.0.
Thời gian sử dụng tối đa 5 giờ, sạc 2 giờ qua cổng Micro USB.', N'tai-nghe-bluetooth-true-wireless-mozard-ts13.jpg', 99, 24, 9, N'Tai nghe Bluetooth')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [KhachHang_Email_U]    Script Date: 12/2/2020 3:16:16 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [KhachHang_Email_U] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KhachHang_TaiKhoan_U]    Script Date: 12/2/2020 3:16:16 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [KhachHang_TaiKhoan_U] UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomHang] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomHang] ([MaNhom])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [chk_NgayGiao] CHECK  (([NgayGiao]>=[NgayDat] AND ([NgayGiao]-[NgayDat])<=(15)))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [chk_NgayGiao]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [CK__DonHang__TinhTra__239E4DCF] CHECK  (([TinhTrangGiaoHang]=(1) OR [TinhTrangGiaoHang]=(0)))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [CK__DonHang__TinhTra__239E4DCF]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD CHECK  (([TinhTrangGiaoHang]=(1) OR [TinhTrangGiaoHang]=(0)))
GO
