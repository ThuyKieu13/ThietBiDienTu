CREATE DATABASE MuaBanThietBiDienTu
USE [MuaBanThietBiDienTu]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/4/2020 2:22:48 AM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/4/2020 2:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayGiao] [datetime] NULL,
	[NgayDat] [datetime] NULL,
	[DaThanhToan] [nvarchar](50) NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/4/2020 2:22:48 AM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/4/2020 2:22:48 AM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/4/2020 2:22:48 AM ******/
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
/****** Object:  Table [dbo].[NhomHang]    Script Date: 12/4/2020 2:22:48 AM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/4/2020 2:22:48 AM ******/
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
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (1, N'Lê Thị Thúy Kiều', CAST(N'2000-06-15 00:00:00.000' AS DateTime), N'Nữ', N'0345017160', N'Kieu', N'thuykieu', N'thuykieu131420@gmail.com', N'Hồ Chí Minh')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (2, N'Lê Thị thùy Lâm', CAST(N'2000-08-27 00:00:00.000' AS DateTime), N'Nữ', N'0986436773', N'Lam', N'thuylam', N'thuylam123@gmail.com', N'Lâm Đồng')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (3, N'Nguyễn Văn Cường', CAST(N'2000-11-16 00:00:00.000' AS DateTime), N'Nữ', N'0168787464', N'Cuong', N'vancuong', N'vancuong123@gmail.com', N'Cần Thơ')
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
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (25, N'Kingston')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (26, N'Corsair
')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (27, N'Logitech')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [email], [taikhoan], [matkhau], [DiaChi], [NgaySinh], [GioiTinh], [DienThoai]) VALUES (1, N'Nguyễn Văn A', N'nguyenvana123@gmail.com', N'nva', N'nva', N'Gò Vấp, Hồ Chí Minh', CAST(N'1990-12-24 00:00:00.000' AS DateTime), N'Nam', N'0912345678')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [email], [taikhoan], [matkhau], [DiaChi], [NgaySinh], [GioiTinh], [DienThoai]) VALUES (2, N'Bạch Tịnh Trần', N'tieuhoathuong@gmail.com', N'tieutinhtran', N'tieutinhtran', N'Bình Thạnh, Hồ Chí Minh', CAST(N'2000-06-15 00:00:00.000' AS DateTime), N'Nữ', N'0967810647')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [email], [taikhoan], [matkhau], [DiaChi], [NgaySinh], [GioiTinh], [DienThoai]) VALUES (3, N'Bạch Hi Cảnh', N'bachhicanhcn@gmail.com', N'bachhicanh', N'bachhicanh', N'Bình Thạnh, Hồ Chí Minh', CAST(N'1980-11-27 00:00:00.000' AS DateTime), N'Nam', N'0967382145')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhomHang] ON 

INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (1, N'Tivi, Âm thanh')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (2, N'Máy lạnh')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (3, N'Tủ đông, Tủ lạnh')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (4, N'Laptop')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (5, N'Máy giặt')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (6, N'Điện gia dụng lớn')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (7, N'Điện gia dụng nhỏ')
INSERT [dbo].[NhomHang] ([MaNhom], [TenNhomHang]) VALUES (8, N'Phụ kiện')
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
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (4, N'Tai nghe Bluetooth True Wireless LG HBS-FN6', CAST(3490000 AS Decimal(18, 0)), N'Thiết kế nhỏ gọn, thanh lịch với 2 màu trắng, đen.
Trang bị hộp sạc UVnano giúp tiêu diệt 99.9% vi khuẩn.
Công nghệ âm thanh Meridian mang đến âm thanh chất lượng cao.
Chuẩn Bluetooth 5.0 kết nối mượt mà đến 10 m.
Đạt chuẩn IPX4 chống thấm mồ hôi và tia nước bắn.
Thời gian sử dụng đến 18 giờ, 6 giờ với tai nghe và thêm 12 giờ với hộp sạc.
Sạc nhanh 5 phút có thể sử dụng đến 60 phút.
Tùy chỉnh với ứng dụng TONE Free.', N'tai-nghe-bluetooth-true-wireless-lg-trang.jpg', 93, 2, 8, N'Tai nghe Bluetooth')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (5, N'USB KINGSTON DT100G3 16GB 3.0', CAST(160000 AS Decimal(18, 0)), N'Dung lượng ổ cứng:16GB
Thương hiệu:Kingston
Sản xuất tại:China
Đơn vị sản xuất:KINGSTON TECHNOLOGY INTERNATIONAL LIMITED
Nhập khẩu và phân phối:CTY TNHH PHÂN PHỐI FPT
Model:3.0 DT100G3 – 16GB
Thời gian bảo hành:1 năm chính hãng.', N'USB-Kingston-16GB-3.0.jpg', 102, 25, 8, N'USB')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (6, N'Loa Bluetooth MozardX BM01 Đen', CAST(1500000 AS Decimal(18, 0)), N'Thiết kế gọn nhẹ, thời trang tiện lợi cho việc mang đi.
Có đèn Led đổi màu cực kì nổi bật.
Công nghệ Bluetooth V5.0 cho kết nối ổn định, mượt mà lên đến 10 m.
Trang bị khả năng chống thấm nước IPX5.
Tích hợp công nghệ TWS giúp bạn có thể kết nối 2 loa cùng lúc (chỉ tương thích với loa MozardX BM01).
Dung lượng pin 3.000 mAh, công suất 40W cho âm thanh sống động.', N'loa-bluetooth-mozardx-bm01-den.jpg', 102, 24, 8, N'Loa')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (7, N'Smart Tivi Samsung 43 inch UA43R6000', CAST(7440000 AS Decimal(18, 0)), N'Màn hình:Full HD', N'Hinh2.JPG', 10, 1, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (8, N'Tủ lạnh Samsung Inverter 236 lít RT22M4032BY/SV', CAST(5690000 AS Decimal(18, 0)), N'Ngăn đông mềm trữ thịt cá không cần rã đông, Inverter tiết kiệm điện', N'Hinh3.JPG', 10, 1, 3, N'Tủ lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (9, N'Android Tivi Sony 4K 43 inch KD-43X8000H', CAST(12400000 AS Decimal(18, 0)), N'Màn hình:Ultra HD 4K, có HDR, Màn hình chấm lượng tử', N'Hinh4.JPG', 10, 3, 1, N'Tivi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (10, N'Tủ lạnh Panasonic Inverter 368 lít NR-BX410WKVN', CAST(18090000 AS Decimal(18, 0)), N'Ngăn đông mềm trữ thịt cá không cần rã đông, Inverter tiết kiệm điện, Lấy nước ngoài kháng khuẩn, Lấy nước bên ngoài', N'Hinh5.JPG', 10, 7, 3, N'Tủ lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (11, N'Máy giặt Panasonic Inverter 9.5 Kg NA-FD95V1BRV', CAST(10990000 AS Decimal(18, 0)), N'Diệt khuẩn 99.99%, giặt sạch vết bẩn cứng đầu nhờ công nghệ nước nóng StainMaster+.', N'Hinh6.JPG', 10, 7, 5, N' Máy giặt')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (12, N'Máy sấy Electrolux 8 Kg EDV805JQWA', CAST(9490000 AS Decimal(18, 0)), N'Công nghệ sấy:Sấy thông hơi', N'Hinh7.JPG', 10, 6, 7, N'Máy sấy')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (13, N'Máy lạnh Panasonic Inverter 1 HP CU/CS-PU9WKH-8M', CAST(10590000 AS Decimal(18, 0)), N'Công suất lạnh:1 HP - 9.040 BTU', N'Hinh8.JPG', 10, 7, 2, N'Máy lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (14, N'Máy lạnh Samsung Inverter 1 HP AR10TYHYCWKNSV', CAST(8790000 AS Decimal(18, 0)), N'Công suất lạnh:1 HP - 9.400 BTU', N'Hinh9.JPG', 10, 1, 2, N'Máy lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (15, N'Máy lọc nước RO nóng lạnh Sunhouse SHR76210CK 10 lõi', CAST(7230000 AS Decimal(18, 0)), N'Hệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ', N'Hinh10.JPG', 10, 12, 7, N'Máy lọc nước')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (16, N'Máy nước nóng Ariston AURES SM45PE SBS VN 4500W', CAST(3990000 AS Decimal(18, 0)), N'Vòi sen 3 chế độ phun, Van cấp nước tích hợp 3 trong 1 (Khoá - Lọc - Mở)', N'Hinh11.JPG', 10, 23, 6, N'Máy nước nóng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (17, N'Nồi cơm điện Kangaroo 1.2 lít KG822 đỏ', CAST(560000 AS Decimal(18, 0)), N'Có xửng hấp, Nồi chống dính', N'Hinh12.JPG', 10, 13, 7, N'Nồi cơm')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (18, N'Máy xay Kangaroo KG3B6M', CAST(686000 AS Decimal(18, 0)), N'Xay sinh tố,Xay hạt,Xay thịt', N'Hinh13.JPG', 10, 13, 7, N'Máy xay đa năng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (19, N'Lò vi sóng Panasonic NN-GT35HMYUE 23 lít', CAST(2121000 AS Decimal(18, 0)), N'Rã đông, hâm, nấu, nướng', N'Hinh14.JPG', 10, 7, 7, N'Lò vi sóng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (20, N'Robot hút bụi Xiaomi Vacuum Mop Essential SKV4136GL', CAST(4193000 AS Decimal(18, 0)), N'Robot hút bụi không dây đẹp mắt, di chuyển linh hoạt đến mọi ngóc ngách trong nhà', N'Hinh15.JPG', 10, 18, 7, N'Robot hút bụi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (21, N'Máy lọc không khí Kangaroo KG30AP1', CAST(2765000 AS Decimal(18, 0)), N'Màng lọc thô, Màng lọc than hoạt tính, HEPA', N'Hinh16.JPG', 10, 13, 7, N'Máy lọc không khí')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (22, N'Bếp hồng ngoại Sanaky SNK-2103HGN', CAST(840000 AS Decimal(18, 0)), N'Nấu thông thường, Súp, Đun nước, Chiên, Nướng, Giữ ấm', N'Hinh17.JPG', 10, 21, 7, N'Bếp hồng ngoại')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (23, N'Máy giặt LG Inverter 8.5 kg FV1408S4W', CAST(9790000 AS Decimal(18, 0)), N'Công nghệ giặt hơi nước Steam (cửa trước), Giặt 6 chuyển động', N'Hinh18.JPG', 10, 2, 5, N'Máy giặt')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (24, N'Chuột Bluetooth Gaming Corsair Harpoon RGB Đen', CAST(1390000 AS Decimal(18, 0)), N'Thiết kế gọn nhẹ, vừa lòng bàn tay.
Sử dụng công nghệ không dây SlipStream, độ trễ 1ms.
6 nút bấm có thể lập trình.
Đèn led RGB tùy chỉnh hiệu ứng theo ý muốn.
Mắt đọc Pixart 3325 cho độ chính xác cao 10.000 DPI.
Switch Omron độ bền 50 triệu lần nhấn.', N'chuot-bluetooth-gaming-corsair-harpoon-rgb-den.jpg', 234, 26, 8, N'Chuột máy tính')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (25, N'Chuột Gaming Logitech G502 Hero Đen', CAST(1599000 AS Decimal(18, 0)), N'Logitech G502 có thiết kế thoải mái kèm theo trọng lượng nhẹ, với tay cầm cao su giúp tăng thêm khả năng di chuột của bạn.
Cảm biến HERO 16K thế hệ mới, cảm biến tiên tiến nhất với khả năng theo dõi 1:1, 400+ IPS và độ nhạy DPI tối đa 100-16,000 cùng tính năng làm mượt, lọc và tăng tốc.
Với 11 nút có thể lập trình qua HUB G, độ phân giải cảm biến 100-16000 DPI, tốc độ báo cáo USB: 1000 Hz (1ms).
Thời gian phản hồi 1ms, G502 nhanh hơn gấp 8 lần so với các chuột tiêu chuẩn không được thiết kế đặc biệt để chơi game.
Chuột chơi game Logitech G502 là sự lựa chọn hàng đầu đối với các game thủ.
Thương hiệu Logitech đến từ Thụy Sĩ - Nổi tiếng toàn cầu trong lĩnh vực sản xuất phụ kiện máy tính.', N'chuot-gaming-logitech-g502-hero-den.jpg', 107, 27, 8, N'Chuột máy tính')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (26, N'Laptop Acer Aspire A515 53 5112 i5 8265U/4GB+16GB/1TB/Win10 (NX.H6DSV.002)', CAST(10490000 AS Decimal(18, 0)), N'Màn hình:15.6 inch, Full HD (1920 x 1080)', N'Hinh21.JPG', 10, 22, 4, N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (27, N'Laptop Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', CAST(18890000 AS Decimal(18, 0)), N'Màn hình:13.3 inch, WXGA+(1440 x 900)', N'Hinh22.JPG', 10, 20, 4, N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (28, N'Laptop Asus VivoBook X509MA N4020/4GB/256GB/Win10 (BR271T)', CAST(6990000 AS Decimal(18, 0)), N'Màn hình:15.6 inch, HD (1366 x 768)', N'Hinh23.JPG', 10, 16, 4, N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (29, N'Chuột Gaming Logitech G402 Hyperion Fury Đen', CAST(790000 AS Decimal(18, 0)), N'Thương hiệu Logitech đến từ Thụy Sĩ - Nổi tiếng toàn cầu trong lĩnh vực sản xuất phụ kiện máy tính.
Thiết kế cổ điển được các game thủ yêu thích, tối ưu hóa từ trong ra ngoài để có trọng lượng nhẹ, bền và thoải mái.
Chuột chơi game Logitech G402 được trang bị nút chỉnh DPI tiện lợi, cùng với nút "ngắm" chuyên dụng cho các tựa game bắn súng.
Cảm biến động cơ hybrid 8 nút lập trình, USB tốc độ cao , bộ xử lý ARM 32-bit giúp kết nối và click chuột với tốc độ cao chỉ sau 0,1 giây.
Độ phân giải cảm biến 240-4000 dpi, tốc độ báo cáo USB: 1000 Hz (1ms).
Chuột chơi game Logitech G402 là sự lựa chọn hàng đầu đối với các game thủ.', N'chuot-gaming-logitech-g402-hyperion-fury-den.jpg', 19, 27, 8, N'Chuột máy tính')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (30, N'Chuột Gaming Corsair Harpoon RGB Pro Đen', CAST(450000 AS Decimal(18, 0)), N'Kiểu dáng thể thao, hình dạng đường viền thoải mái.
Tay cầm bên cao su, trọng lượng chỉ 85g, dễ di chuyển.
Điều khiển chuột chính xác với cảm biến quang học 12.000 DPI.
Cho hơn 20 triệu lần nhấp với công tắc Omron hiệu suất cao.', N'chuot-gaming-corsair-harpoon-rgb-pro-den.jpg', 10, 26, 8, N'Chuột máy tính')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (31, N'Máy giặt LG Inverter 9 kg FV1409S2W', CAST(11990000 AS Decimal(18, 0)), N'Công nghệ giặt hơi nước Steam (cửa trước), Công nghệ giặt tiết kiệm TurboWash, Giặt 6 chuyển động', N'Hinh26.JPG', 10, 2, 5, N'Máy giặt')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (32, N'Tủ đông Sanaky 260 lít VH-3699W1', CAST(6890000 AS Decimal(18, 0)), N'Lỗ thoát nước, Khoá cửa tủ, Giỏ đựng đồ', N'Hinh27.JPG', 10, 21, 3, N'Tủ đông')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (33, N'Tai nghe Bluetooth True Wireless Mozard TS13 Đen', CAST(650000 AS Decimal(18, 0)), N'Thiết kế gọn nhẹ, đẹp mắt, đeo vừa vặn.
Chất âm sống động, quyến rũ.
Kết nối nhanh, ổn định với công nghệ Bluetooth 5.0.
Thời gian sử dụng tối đa 5 giờ, sạc 2 giờ qua cổng Micro USB.', N'tai-nghe-bluetooth-true-wireless-mozard-ts13.jpg', 99, 24, 8, N'Tai nghe Bluetooth')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (34, N'Máy nước nóng Beko BWI35S2D-213 3500W', CAST(3250000 AS Decimal(18, 0)), N'Thiết kế tinh tế, mỏng và nhẹ phù hợp với nhiều nhà tắm.
Nước nóng nhanh nhờ cơ chế làm nóng trực tiếp và công suất 3500 W.
Hoạt động tốt kể cả những nơi có nguồn nước yếu nhờ có bơm trợ lực.
An toàn về nhiệt, không bị bỏng nhờ bộ ổn định nhiệt kép được tích hợp trong máy.
Vỏ chống thấm nước IP25 chống bụi, chống nước hiệu quả.
Tránh rò rỉ, chập cháy, an toàn về điện nhờ cầu dao ELCB.
Cảm biến lưu lượng nước giúp ổn định lượng nước trong máy, bảo vệ tăng tuổi thọ cho sản phẩm.
Vòi sen đi kèm có 5 chế độ phun tiện lợi.', N'beko-bwi35s2d.jpg', 78, 5, 6, N'Máy nước nóng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (35, N'Máy nước nóng Ariston 20 lít SL2 20 RS 2.5 FE - DMX', CAST(3490000 AS Decimal(18, 0)), N'Vỏ chống thấm nước chuẩn IPX1 hiện đại.
Hệ thống an toàn đồng bộ TSS - Bảo vệ làn da và tránh xa tai nạn điện.
Công nghệ Ion Bạc Ag+ giúp khử trùng, mang lại nguồn nước nóng sạch khuẩn.
Trang bị 2 đèn báo hiệu nước đang đun và nước đã sẵn sàng sử dụng.
Thanh đốt làm từ đồng chất lượng cao, cho khả năng làm nóng nhanh hơn.
Lòng bình được tráng lớp men Titan ngăn chặn nước ăn mòn và gây rò rỉ bên trong bình chứa.
Thêm 10% lượng nước nóng nhờ công nghệ Flexomix.', N'may-nuoc-nong-ariston-sl2.jpg', 96, 23, 6, N'Máy nước nóng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (36, N'Máy lạnh Samsung Inverter 1.5 HP AR13TYHYCWKNSV', CAST(10590000 AS Decimal(18, 0)), N'Tiết kiệm điện, làm lạnh nhanh nhờ công nghệ Digital Inverter và chế độ Eco.
Vệ sinh dễ dàng với lưới lọc bụi bẩn Easy Filter.
Loại bỏ vi khuẩn, mùi hôi bởi màng lọc kháng khuẩn Ag+.
Hơi lạnh lan toả đều và xa với tính năng tự động đảo gió 4 hướng.
Mang lại không gian thoáng đãng, thoải mái khi độ ẩm tăng cao với chế độ hút ẩm.
Độ bền cao, vận hành hiệu quả nhờ chức năng tự làm sạch.
Tiện lợi cùng chế độ tự khởi động lại khi có điện.', N'samsung-ar13tyhycwknsv.jpg', 54, 1, 2, N'Máy lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (37, N'Máy lạnh LG Inverter 1.5 HP V13ENH', CAST(10140000 AS Decimal(18, 0)), N'Công nghệ Dual Inverter tiết kiệm điện hơn 70%, vận hành êm ái.
Chế độ Jet Cool làm lạnh nhanh hơn 40%, nhanh chóng hạ 5 độ C chỉ trong vòng 3 phút.
Chế độ thổi gió dễ chịu Comfort Air.
Tính năng tự động làm sạch giúp máy lạnh luôn khô thoáng, sạch sẽ.
Chẩn đoán lỗi thông minh giúp dễ dàng kiểm tra tình trạng máy.
Chế độ ngủ đêm - Tự điều chỉnh nhiệt độ phù hợp với thân nhiệt và môi trường.
Tính năng tự khởi động lại khi có điện - Ghi nhớ các chế độ hiện có, không cần cài đặt lại.', N'may-lanh-lg-v13enh.jpg', 13, 2, 2, N'Máy lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (38, N'Tủ lạnh Samsung Inverter 647 lít RS62R5001M9/SV', CAST(19400000 AS Decimal(18, 0)), N'Thiết kế tối giản, màu xám sang trọng.
Tiết kiệm điện năng hiệu quả với công nghệ Digital Inverter.
Hơi lạnh lan tỏa đồng đều đến mọi nơi thông qua công nghệ làm lạnh dạng vòm.
Loại bỏ mùi hôi khó chịu nhờ bộ lọc khử mùi than hoạt tính.
Thiết kế viền siêu mỏng, mở rộng không gian lưu trữ với công nghệ SpaceMax.
Chuông báo cửa mở tránh lãng phí điện.', N'tu-lanh-samsung-rs62r5001m9-sv.jpg', 2, 2, 3, N'Tủ lạnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [HinhAnh], [SLTon], [MaNCC], [MaNhom], [Loai]) VALUES (39, N'Laptop Asus VivoBook Gaming F571GT i5 9300H/8GB/32GB+512GB/120Hz/4GB GTX1650/Win10', CAST(21790000 AS Decimal(18, 0)), N'Asus VivoBook Gaming F571GT i5 (AL851T) được trang bị phần cứng ấn tượng, thiết kế tối giản, gọn nhẹ. Trang bị bộ vi xử lý Intel Core i5 thế hệ 9, card đồ họa rời NVIDIA GeForce GTX 1650 4 GB cho hiệu năng ổn định, phù hợp với nhu cầu làm việc cao và giải trí với các tựa game.', N'asus-vivobook-gaming-f571gt-i5.jpg', 127, 16, 4, N'Laptop')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [KhachHang_Email_U]    Script Date: 12/4/2020 2:22:48 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [KhachHang_Email_U] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KhachHang_TaiKhoan_U]    Script Date: 12/4/2020 2:22:48 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [KhachHang_TaiKhoan_U] UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF__DonHang__TinhTra__1BFD2C07]  DEFAULT ((0)) FOR [TinhTrangGiaoHang]
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
