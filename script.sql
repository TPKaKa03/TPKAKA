USE [master]
GO
/****** Object:  Database [DONETHAT9]    Script Date: 3/27/2024 11:29:35 PM ******/
CREATE DATABASE [DONETHAT9]
 CONTAINMENT = NONE


ALTER DATABASE [DONETHAT9] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DONETHAT9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DONETHAT9] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DONETHAT9] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DONETHAT9] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DONETHAT9] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DONETHAT9] SET ARITHABORT OFF 
GO
ALTER DATABASE [DONETHAT9] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DONETHAT9] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DONETHAT9] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DONETHAT9] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DONETHAT9] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DONETHAT9] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DONETHAT9] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DONETHAT9] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DONETHAT9] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DONETHAT9] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DONETHAT9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DONETHAT9] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DONETHAT9] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DONETHAT9] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DONETHAT9] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DONETHAT9] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DONETHAT9] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DONETHAT9] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DONETHAT9] SET  MULTI_USER 
GO
ALTER DATABASE [DONETHAT9] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DONETHAT9] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DONETHAT9] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DONETHAT9] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DONETHAT9] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DONETHAT9] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DONETHAT9', N'ON'
GO
ALTER DATABASE [DONETHAT9] SET QUERY_STORE = ON
GO
ALTER DATABASE [DONETHAT9] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DONETHAT9]
GO
/****** Object:  Table [dbo].[A]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A](
	[X] [int] NULL,
	[Y] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountPercent] [int] NULL,
	[DiscountCode] [nvarchar](50) NULL,
	[CreateDiscountDate] [datetime] NOT NULL,
	[UserID] [int] NULL,
	[DiscountStatus] [bit] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imglink]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imglink](
	[imgid] [int] IDENTITY(1,1) NOT NULL,
	[imglink] [nvarchar](50) NULL,
	[productid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[imgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[content] [nvarchar](max) NULL,
	[image] [nvarchar](500) NULL,
	[groupId] [int] NOT NULL,
	[Newsname] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[NGroupId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderitems]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderitems](
	[orderitemid] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[foodid] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[subtotal] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderitemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NOT NULL,
	[orderdate] [date] NOT NULL,
	[totalamount] [decimal](10, 2) NOT NULL,
	[statuspayment] [tinyint] NULL,
	[statusorder] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[categoryid] [int] NOT NULL,
	[totalproduct] [int] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NOT NULL,
	[email] [varchar](50) NULL,
	[facebook] [varchar](50) NULL,
	[password] [varchar](150) NULL,
	[phone] [varchar](30) NULL,
	[fullname] [nvarchar](50) NULL,
	[image] [nvarchar](500) NULL,
	[dob] [date] NULL,
	[address] [nvarchar](500) NULL,
	[addressId] [int] NULL,
	[gmailid] [varchar](80) NULL,
	[facebookid] [varchar](80) NULL,
	[status] [tinyint] NULL,
	[codeverify] [varchar](15) NULL,
	[bio] [nvarchar](max) NULL,
 CONSTRAINT [PK__user__CBA1B25744C2E00A] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userrole]    Script Date: 3/27/2024 11:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userrole](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[A] ([X], [Y]) VALUES (1, 2)
INSERT [dbo].[A] ([X], [Y]) VALUES (2, 3)
INSERT [dbo].[A] ([X], [Y]) VALUES (3, 4)
INSERT [dbo].[A] ([X], [Y]) VALUES (4, 1)
INSERT [dbo].[A] ([X], [Y]) VALUES (4, 2)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([categoryid], [categoryname]) VALUES (1, N'Cupcake')
INSERT [dbo].[Categories] ([categoryid], [categoryname]) VALUES (2, N'Butter')
INSERT [dbo].[Categories] ([categoryid], [categoryname]) VALUES (3, N'Cake')
INSERT [dbo].[Categories] ([categoryid], [categoryname]) VALUES (4, N'Biscuit')
INSERT [dbo].[Categories] ([categoryid], [categoryname]) VALUES (5, N'Donut')
INSERT [dbo].[Categories] ([categoryid], [categoryname]) VALUES (6, N'Banhdauxanh')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[imglink] ON 

INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (1, N'donutkemtrungtraxanh.jpg', 1)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (2, N'donutsocolanutella.jpg', 2)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (3, N'donutmini.jpg', 3)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (4, N'donutnhanmut.jpg', 4)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (5, N'donutsocola.jpg', 5)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (6, N'donutkhoailangcotdua.jpg', 6)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (7, N'tea_biscuit.jpg', 7)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (8, N'layer_biscuit.jpg', 8)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (9, N'nougat_biscuit.jpg', 9)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (10, N'biscuit_trung_muoi.jpg', 10)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (11, N'savoury_biscuit.jpg', 11)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (12, N'soda_biscuit.jpg', 12)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (13, N'cream_biscuit.jpg', 13)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (14, N'banhkemtienca.jpg', 14)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (15, N'banhkemtraicay.jpg', 15)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (16, N'banhkemoto.jpg', 16)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (17, N'banh_kem_dong_tien.jpg', 17)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (18, N'tiramisu_trai_tim.jpg', 18)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (19, N'tiramisu_mouse.jpg', 19)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (20, N'red_velvet_mouse.jpg', 20)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (21, N'passion_mouse.jpg', 21)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (22, N'chocolate_mouse.jpg', 22)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (23, N'butter-cookies-LU.jpg', 23)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (24, N'cowhead-butter-cookies.jpg', 24)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (25, N'banh-quy-bo-hollanda.jpg', 25)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (26, N'banh-quy-bo-no-brand.jpg', 26)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (27, N'banh-quy-bo-cheesemen.jpg', 32)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (28, N'butter-cookies-kokola.jpg', 33)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (29, N'banh-danisa.jpg', 34)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (30, N'cupckae-sau-rieng.jpg', 35)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (31, N'cupcake-sua-chua.jpg', 36)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (32, N'cupcake-oreo.jpg', 37)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (33, N'cupcake-to-chim.jpg', 38)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (34, N'cupcake-hokkaido.jpg', 39)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (35, N'cupcake-viet-quat.jpg', 40)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (36, N'cupcake-tra-xanh.jpg', 41)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (37, N'cupcake-ca-rot.jpg', 42)
INSERT [dbo].[imglink] ([imgid], [imglink], [productid]) VALUES (38, N'cupcake-bo.jpg', 43)
SET IDENTITY_INSERT [dbo].[imglink] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (28, 48, N'Bạn đã bao giờ đặt chân vào thế giới tuyệt vời của chiếc bánh mới "Chocolate Dream" chưa? Hãy tưởng tượng một không gian ẩm thực nơi hòa quyện giữa hương vị tinh tế và nghệ thuật làm bánh. Chiếc bánh này không chỉ đơn thuần là một sản phẩm, mà còn là một tác phẩm nghệ thuật, một cảm xúc đặc biệt từng lớp bánh.<br>
<br>
Bắt đầu từ lớp bánh mềm mịn, nhẹ nhàng tan chảy trong miệng, "Chocolate Dream" không chỉ là một chiếc bánh mà còn là một trải nghiệm, là một hành trình đưa bạn đến những đỉnh cao của sự sáng tạo ẩm thực. Lớp bánh mềm mịn như nhung, chứa đựng bí mật của sự ngon miệng, tạo nên cảm giác êm dịu và tinh tế từng lớp.<br>
<br>
Chưa kể đến hương vị đặc trưng của sô cô la, "Chocolate Dream" chính là sự hòa quyện của những hạt sô cô la đen lấp lánh trên bề mặt bánh. Những viên hạt nhỏ này không chỉ là điểm nhấn thú vị mà còn là biểu tượng của sự chất lượng và sự tinh tế trong cách làm bánh. Mỗi viên hạt sô cô la đều được đặt cẩn thận, tạo nên một hình ảnh độc đáo và lôi cuốn, khiến cho mỗi chiếc bánh trở nên độc đáo và không thể nhầm lẫn.<br>
<br>
Hãy tưởng tượng mình đang bước chân vào một không gian ẩm thực đầy mê hoặc, nơi mỗi chiếc bánh là một tác phẩm nghệ thuật được chế tác bởi đôi bàn tay tài năng và đam mê của đầu bếp. "Chocolate Dream" không chỉ là một tên gọi, mà là một mơ ước, là niềm khao khát khám phá hương vị đặc trưng, làm cho mỗi ẩm thực tạm dừng để trải nghiệm một điểm dừng đặc biệt.<br>
<br>
Hãy để "Chocolate Dream" trở thành nguồn cảm hứng cho những thời điểm quan trọng trong cuộc sống của bạn. Dù là trong những buổi tiệc lớn, hay những khoảnh khắc tĩnh lặng, chiếc bánh này sẽ luôn làm cho bữa tiệc trở nên trang trọng và đẳng cấp. Bạn sẽ không chỉ thưởng thức hương vị, mà còn đắm chìm trong không khí của sự kiện, của niềm vui và hạnh phúc.<br>
<br>
Nếu bạn chưa từng bắt gặp "Chocolate Dream" trước đây, hãy để bản thân trải qua một cuộc phiêu lưu ẩm thực đầy sáng tạo và hấp dẫn. Mỗi miếng bánh là một câu chuyện kể về sự nghiệp của đầu bếp và tình yêu thương đặt vào từng chiếc bánh. Bạn sẽ không chỉ thưởng thức một chiếc bánh, mà còn hiểu rõ về câu chuyện, về quá trình sáng tạo và đam mê mà "Chocolate Dream" mang lại.<br>
<br>
Hãy để mỗi người chúng ta trở thành một người truyền cảm hứng, người mang đến những trải nghiệm độc đáo và không gì sánh kịp với chiếc bánh "Chocolate Dream". Mỗi miếng bánh là một chuyến phiêu lưu mới, là một khám phá về hương vị, là một đẳng cấp mới về ẩm thực. Và dưới đèn sáng bừng, "Chocolate Dream" tỏa sáng như một ngôi sao, thu hút mọi ánh nhìn và làm dậy lên niềm tự hào của mỗi người yêu ẩm thực.', N'newcake1.jpg', 1, N'Bánh Chocolate Dream')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (29, 48, N'Khám phá một thế giới ẩm thực đầy sáng tạo và tinh tế với chiếc bánh mới "Velvet Delight". Đây không chỉ là một chiếc bánh, mà là một trải nghiệm tuyệt vời, một hành trình qua những hương vị và cảm xúc tinh tế.<br>
<br>
Lớp bánh mềm mịn của "Velvet Delight" là bí mật của sự êm dịu và quyến rũ. Khi bạn cắn một miếng, cảm giác mềm mại, nhẹ nhàng mà vẫn giữ được độ đàn hồi, tạo nên một trải nghiệm thăng hoa khó cưỡng. Hương vị của lớp bánh này là sự kết hợp hoàn hảo giữa độ ngọt vừa phải và độ béo của kem phô mai, làm cho từng miếng bánh trở nên hấp dẫn và khó quên.<br>
<br>
Không chỉ dừng lại ở lớp bánh, chiếc "Velvet Delight" là một tác phẩm nghệ thuật ẩm thực đẹp mắt. Lớp kem phô mai béo ngon không chỉ là điểm nhấn về hương vị mà còn là bí mật tạo nên độ mềm mại cho bánh. Sự hòa quyện giữa lớp bánh và kem phô mai tạo nên một đối tác hài hòa trên đào đường ẩm thực, khiến cho mỗi miếng bánh trở nên độc đáo và ngon miệng.<br>
<br>
Đặc biệt, đám kem tươi màu sắc là điểm nhấn cuối cùng làm cho "Velvet Delight" trở nên nổi bật giữa thế giới bánh ngọt. Những viên kem nhỏ được sắp xếp một cách tỉ mỉ và sáng tạo trên bề mặt bánh, tạo nên một hình ảnh đẹp mắt như một bức tranh nghệ thuật. Mỗi viên kem mang theo một màu sắc riêng biệt, tạo nên một bức tranh màu sắc sống động và tươi mới, làm cho chiếc bánh trở nên hấp dẫn và thú vị ngay từ cái nhìn đầu tiên.<br>
<br>
Nếu bạn muốn tận hưởng hương vị độc đáo và thăng hoa của "Velvet Delight", hãy chuẩn bị cho mình một chuyến phiêu lưu ẩm thực. Mỗi miếng bánh là một bí mật, là một câu chuyện về sự sáng tạo và đam mê. Bạn sẽ không chỉ là người thưởng thức hương vị, mà còn là nhà thưởng thức nghệ thuật, khi mỗi miếng bánh trở thành một tác phẩm độc đáo, làm cho không gian xung quanh bạn trở nên tinh tế và sang trọng.<br>
<br>
Hãy để "Velvet Delight" làm cho mỗi bữa tiệc trở nên đặc biệt và đẳng cấp. Dù là trong những dịp lễ tết, hay những buổi gặp gỡ bạn bè, chiếc bánh này sẽ làm cho không khí trở nên ấm cúng và vui vẻ. Mỗi miếng bánh là một câu chuyện, là một điểm nhấn cho bữa tiệc, làm cho mỗi bữa ăn trở nên đầy đủ và phong cách.<br>
<br>
"Velvet Delight" không chỉ là một chiếc bánh, mà là một trải nghiệm ẩm thực đẳng cấp, là hành trình qua những hương vị tinh tế và độc đáo. Hãy để bản thân bạn trở nên phong cách và độc đáo hơn với chiếc bánh ngọt này. Mỗi miếng bánh là một cơ hội để thưởng thức và trải nghiệm, là một mảnh ghép hoàn hảo cho bữa tiệc của bạn, làm cho mỗi kỷ niệm trở nên đặc biệt và không gì sánh kịp.', N'newcake2.jpg', 1, N'Bánh Velvet Delight')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (30, 48, N'Hãy bắt đầu hành trình thưởng thức với chiếc bánh mới đầy quyến rũ, "Fruit Paradise". Mở ra một thế giới của hương thơm và hương vị, chiếc bánh này không chỉ làm say đắm vị giác mà còn làm phong phú dinh dưỡng cho cơ thể bạn. Dưới đây là một hành trình tuyệt vời qua những hạt cầu vồng của trái cây và sự êm dịu của lớp bánh mềm mịn.<br>
<br>
Bí mật của "Fruit Paradise" bắt đầu từ lớp bánh mềm mịn, như một chiếc đệm êm dịu cho những loại trái cây tươi ngon sẽ được phủ lên trên cùng. Khi bạn chạm vào bánh, sự mềm mại và nhẹ nhàng của lớp bánh tỏa ra, tạo nên một cảm giác thoải mái từng lớp từng lớp. Đây không chỉ là việc thưởng thức hương vị, mà còn là một trải nghiệm đích thực của sự êm dịu và ấm áp.<br>
<br>
Lớp trái cây tươi ngon phủ trên bề mặt bánh như một bức tranh tinh tế, đưa bạn đến những thung lũng trái cây hùng vĩ. Dưa hấu mát lạnh, dâu tây đỏ tươi, kiwi chua ngọt, vàng óng của nho, tất cả những hương vị này kết hợp lại tạo nên một sân khấu đa dạng, phong phú và thơ mộng. Mỗi miếng trái cây là một hạt ngọc nhỏ, giữ lại toàn bộ tinh khiết và hương thơm tự nhiên.<br>
<br>
Khám phá "Fruit Paradise" không chỉ là một hành trình của khẩu phần ẩm thực mà còn là một hành trình của sức khỏe. Trái cây không chỉ đem lại hương vị đặc trưng mà còn chứa đựng nhiều dưỡng chất quan trọng, làm tăng cường sức khỏe và sự tươi mới cho cơ thể. Hơn nữa, mỗi miếng bánh là một cơ hội để cung cấp cho cơ thể bạn những loại vitamin và khoáng chất cần thiết.<br>
<br>
Để tăng thêm sự hoàn hảo cho "Fruit Paradise", chiếc bánh này được chế biến và trang trí một cách tỉ mỉ như một tác phẩm nghệ thuật. Sự kết hợp của những hạt cầu vồng trái cây và lớp bánh mềm mịn tạo nên một cảm giác tươi mới và đầy sức sống. Những viên đường màu nổi bật, như những bông hoa tinh tế, tô điểm thêm vẻ đẹp của chiếc bánh, làm cho mỗi lớp bánh trở nên sống động và thu hút.<br>
<br>
Nếu bạn muốn tận hưởng một trải nghiệm ẩm thực độc đáo và tuyệt vời, "Fruit Paradise" chắc chắn là lựa chọn hoàn hảo. Không chỉ làm hài lòng khẩu vị của bạn, mà còn làm cho mỗi bữa ăn trở nên phong cách và sang trọng. Hãy để "Fruit Paradise" làm cho mỗi dịp lễ, hội nghị hoặc buổi tiệc của bạn trở nên đặc biệt và ý nghĩa hơn.<br>
<br>
Cuối cùng, hãy để mỗi miếng bánh "Fruit Paradise" làm cho bạn cảm nhận hương vị tự nhiên của trái cây, làm cho từng khoảnh khắc trở nên quý giá và đong đầy sức sống. Mỗi miếng bánh không chỉ là một phần của bữa ăn, mà còn là một trải nghiệm ẩm thực độc đáo và phong cách. "Fruit Paradise" - hành trình đến với vùng đất của sự tươi mới và hương vị trái cây tuyệt vời!', N'newcake3.jpg', 1, N'Bánh Fruit Paradise')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (31, 48, N'Khám phá một hành trình ngọt ngào và phong cách với chiếc bánh độc đáo - "Caramel Bliss". Đây không chỉ là một chiếc bánh mà còn là một trải nghiệm độc đáo, nơi mỗi miếng bánh là một cảm xúc mới, một chuyến phiêu lưu vào thế giới của hương vị và độ béo ngon.<br>
<br>
Bí mật của "Caramel Bliss" bắt đầu từ lớp bánh mềm mịn, như một ôm êm dịu của sự êm dịu. Khi bạn cắn một miếng, lớp bánh mềm tan trong miệng, tạo nên một trải nghiệm mềm mại và đặc trưng của chiếc bánh. Đây không chỉ là việc thưởng thức hương vị, mà còn là một chuyến phiêu lưu qua sự êm dịu và ngọt ngào.<br>
<br>
Lớp caramel đậm đà là điểm nhấn quan trọng, làm cho "Caramel Bliss" trở thành một điểm độc đáo trong thế giới bánh ngọt. Khi caramel chảy dày đặc, như một dòng chảy vàng ngọt ngào, tạo nên một hòa quyện hương vị vô cùng hấp dẫn. Đây không chỉ là một lớp phủ, mà là một phần quan trọng tạo nên đặc trưng và sự khác biệt cho chiếc bánh.<br>
<br>
"Caramel Bliss" không chỉ là một bữa ăn, mà là một trải nghiệm độc đáo và phong cách. Sự kết hợp giữa lớp bánh mềm mịn và lớp caramel đậm đà tạo nên một hương vị ngọt ngào và đặc trưng, làm cho mỗi miếng bánh trở nên hấp dẫn và khó quên. Chiếc bánh này chính là lựa chọn hoàn hảo cho những ai đang tìm kiếm sự ngon miệng và độc đáo trong thế giới bánh ngọt.<br>
<br>
Hãy để "Caramel Bliss" làm ngọt đời bạn, làm cho mỗi khoảnh khắc trở nên ấm áp và ý nghĩa. Dù là trong những dịp lễ tết, hay những buổi gặp gỡ bạn bè, chiếc bánh này sẽ làm cho không khí trở nên ấm cúng và vui vẻ. Mỗi miếng bánh là một cảm xúc mới, là một cơ hội để tận hưởng hương vị tuyệt vời và đắm chìm trong sự êm dịu của caramel.<br>
<br>
Khám phá "Caramel Bliss" không chỉ là việc thưởng thức một chiếc bánh, mà còn là việc trải nghiệm một hành trình qua sự sáng tạo và đam mê. Mỗi miếng bánh là một tác phẩm nghệ thuật, là một biểu tượng của sự ngọt ngào và hương vị đặc trưng. Để "Caramel Bliss" làm cho mỗi bữa tiệc, mỗi sự kiện trở nên phong cách và sang trọng.<br>
<br>
Cuối cùng, hãy để "Caramel Bliss" làm nổi bật ngày của bạn, làm cho mỗi buổi tiệc trở nên đặc biệt và tràn đầy niềm vui. Với chiếc bánh này, mỗi khoảnh khắc là một dịp để tận hưởng, để thưởng thức và để chia sẻ niềm hạnh phúc. "Caramel Bliss" - sự hòa quyện của hương vị, làm cho mỗi ngày trở nên ngọt ngào và đặc biệt!', N'newcake4.jpg', 1, N'Bánh Caramel Bliss')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (32, 48, N'Bước vào một thế giới của sự sang trọng và thưởng thức với chiếc bánh "Red Velvet Fantasy". Không chỉ là một chiếc bánh, đây là một tác phẩm nghệ thuật ẩm thực, nơi mỗi miếng bánh là một điểm nhấn độc đáo, một hành trình qua những hương vị đẳng cấp và hấp dẫn.<br>
<br>
Bí mật của "Red Velvet Fantasy" bắt đầu từ lớp bánh đỏ ngọc, như làn áo lụa tinh tế tạo nên vẻ đẹp quyến rũ. Khi bạn chạm vào lớp bánh mềm mịn, cảm giác êm dịu và nhẹ nhàng trải qua đầu ngón tay, tạo nên một cảm nhận mềm mại và sang trọng. Lớp bánh đỏ ngọc không chỉ là về màu sắc, mà còn là về hương vị đặc trưng, là điểm nhấn quan trọng làm cho chiếc bánh trở nên độc đáo và đặc biệt.<br>
 
 
<br>
Lớp kem phô mai béo ngon phủ trên bề mặt bánh như một lớp áo làm cho "Red Velvet Fantasy" trở nên thêm phần đặc biệt. Hương vị ngon lành và béo ngon của kem phô mai hòa quyện với vị cảm nhận của bánh, tạo nên một hòa quyện đặc biệt và đẳng cấp. Đây không chỉ là sự kết hợp của hai thành phần, mà là một tình yêu đẹp giữa hương vị bánh và kem phô mai, tạo nên một sự hoàn hảo không thể phá vỡ.<br>
<br>
"Red Velvet Fantasy" không chỉ là một chiếc bánh, mà là một trải nghiệm thưởng thức đẳng cấp. Mỗi miếng bánh là một chuyến phiêu lưu qua thế giới của sự sáng tạo và hương vị độc đáo. Khám phá "Red Velvet Fantasy" không chỉ là việc thưởng thức một sản phẩm ẩm thực, mà còn là việc hiểu rõ về quá trình sáng tạo và đam mê của những người làm bánh.<br>
<br>
Để "Red Velvet Fantasy" mang đến cho bạn một trải nghiệm đẳng cấp, chiếc bánh này được chế biến và trang trí một cách tỉ mỉ. Bạn không chỉ cảm nhận hương vị tinh tế, mà còn trải qua một hành trình ngắm nhìn sự hòa quyện giữa màu sắc và hình ảnh, làm cho từng miếng bánh trở nên như một bức tranh nghệ thuật.<br>
<br>
Không gian lịch lãm và sang trọng trở nên tràn ngập khi "Red Velvet Fantasy" xuất hiện. Dù là trong những bữa tiệc lớn, những buổi họp quan trọng, hay những dịp lễ tết, chiếc bánh này sẽ làm cho không khí trở nên trang trọng và quyến rũ. Mỗi miếng bánh không chỉ là một phần của bữa tiệc, mà còn là một biểu tượng của sự đẳng cấp và văn minh.<br>
<br>
Cuối cùng, hãy để "Red Velvet Fantasy" làm cho mỗi bữa tiệc của bạn trở nên đặc biệt và không thể quên. Mỗi miếng bánh là một cảm nhận mới về hương vị, là một chuyến phiêu lưu mới trong thế giới đầy sáng tạo và tinh tế của ẩm thực. "Red Velvet Fantasy" không chỉ là một chiếc bánh, mà là một trải nghiệm, là một ký ức đẹp đẽ và đầy ấn tượng.', N'newcake5.jpg', 1, N'Bánh Red Velvet Fantasy')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (33, 48, N'a', N'Home', 16, N'Home')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (34, 48, N'a', N'Shop', 16, N'Shop')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (35, 48, N'a', N'Page', 16, N'Page')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (36, 48, N'a', N'News', 16, N'News')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (39, 48, N'a', N'time', 17, N'8:00 AM - 10:00 PM')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (40, 48, N'a', N'address', 18, N'Ha Noi')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (41, 48, N'a', N'mail', 19, N'thangkaka317@gmail.com')
INSERT [dbo].[News] ([ID], [Userid], [content], [image], [groupId], [Newsname]) VALUES (42, 48, N'a', N'phone', 20, N'0795245399')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsCategory] ON 

INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (1, N'New Cake')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (2, N'Trending')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (3, N'Recipes')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (4, N'Guides')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (5, N'Video')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (6, N'New Cake')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (7, N'Trending')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (8, N'Recipes')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (9, N'Guides')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (10, N'Video')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (11, N'Trending')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (12, N'Recipes')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (13, N'Guides')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (14, N'Video')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (15, N'banner')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (16, N'menu')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (17, N'Time')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (18, N'Address')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (19, N'Mail')
INSERT [dbo].[NewsCategory] ([NGroupId], [name]) VALUES (20, N'Phone')
SET IDENTITY_INSERT [dbo].[NewsCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Orderitems] ON 

INSERT [dbo].[Orderitems] ([orderitemid], [orderid], [foodid], [quantity], [subtotal]) VALUES (1, 22, 1, 1, CAST(15000.00 AS Decimal(10, 2)))
INSERT [dbo].[Orderitems] ([orderitemid], [orderid], [foodid], [quantity], [subtotal]) VALUES (2, 23, 2, 5, CAST(25000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Orderitems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (3, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'CANCEL', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (4, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (5, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (6, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (7, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (8, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (9, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (10, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (11, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (12, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (13, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (14, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (15, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (16, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (17, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (18, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (19, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (20, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (21, 48, CAST(N'2024-02-20' AS Date), CAST(100.00 AS Decimal(10, 2)), 0, N'Approved', NULL, NULL)
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (22, 122, CAST(N'2024-03-22' AS Date), CAST(15000.00 AS Decimal(10, 2)), 0, N'processing', N'0961175596', N'hòa lạc, thạch thất hà nội')
INSERT [dbo].[Orders] ([orderid], [customerid], [orderdate], [totalamount], [statuspayment], [statusorder], [phone], [address]) VALUES (23, 123, CAST(N'2024-03-27' AS Date), CAST(25000.00 AS Decimal(10, 2)), 1, N'processing', N'0795245399', N'b n bbn')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (1, N'Donut Trà Xanh', N'Bánh donut trà xanh tỏa hương thơm nức mũi, bột bánh thì mềm xốp, béo bùi của bơ sữa quyện đều vào bột trà xanh thanh mát. Bạn chỉ cần cắn 1 cái là cảm nhận được vị ngon xuất sắc luôn đấy!', CAST(15000.00 AS Decimal(10, 2)), 4, 19, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (2, N'Donut Khoai Lang mini', N'Lớp đường giòn tan áo đều bên ngoài lớp bột bánh mềm, dai nhẹ lại còn bùi ngọt, thơm lừng vị khoai lang thì ai mà không "đổ" cơ chứ!', CAST(5000.00 AS Decimal(10, 2)), 4, 5, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (3, N'Donut Socola Oreo', N'Vị ngọt vừa phải hòa quyện cùng vị đắng của socola và oreo thơm ngất ngây, kết hợp cùng bột bánh mềm, xốp, chắc chắn sẽ làm hài lòng các tín đồ ăn ngọt đấy!', CAST(15000.00 AS Decimal(10, 2)), 4, 14, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (4, N'Donut Kem Trứng', N'Vỏ bánh thì xốp, mềm, ăn lèm cùng với nhân kem trứng ngọt vừa phải, béo ngậy cực hấp dẫn. Đảm bảo ai thưởng thức qua cũng sẽ thích mê ngay từ miếng đầu tiên đấy!', CAST(15000.00 AS Decimal(10, 2)), 4, 13, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (5, N'Donut Lá Cẩm', N'Bánh bên ngoài giòn nhẹ, trong thì mềm, ngọt vừa phải. Bánh sở hữu màu tím nhạt rất đẹp mắt. Chuẩn bị thêm 1 ly sữa tươi và thưởng thức cùng bánh donut lá cẩm là hoàn thành bữa sáng rồi.', CAST(15000.00 AS Decimal(10, 2)), 4, 2, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (6, N'Donut Kem Trứng Trà Xanh', N'Ẩn bên trong lớp vỏ bánh giòn nhẹ, mềm xốp là lớp nhân kem trứng trà xanh đắng nhẹ, ngọt ngọt, béo béo rất vừa vặn đã "gây nghiện" cho rất nhiều người hảo ngọt đấy nhé!', CAST(1500.00 AS Decimal(10, 2)), 4, 4, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (7, N'Donut Socola Nutella', N'Sự kết hợp tuyệt vời giữa lớp bột bánh mềm, xốp lại thơm ngất ngây mùi quế bên cạnh nhân socola nutella tan chảy đắng ngọt vừa phải chắc chắn sẽ khiến bạn thích mê đấy!', CAST(15000.00 AS Decimal(10, 2)), 4, 30, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (8, N'Donut Mini', N'Dù là bánh mini nhưng hương vị và độ hấp dẫn cũng không hề kém cạnh gì loại bánh size thường. Cốt bánh mềm, xốp dai nhẹ, ngọt vừa phải lại bùi béo làm người thưởng thức càng ăn càng nghiện đấy nhé!', CAST(5000.00 AS Decimal(10, 2)), 4, 16, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (9, N'Donut Nhân Mứt', N'Bánh donut nướng mềm, thớ bánh hơi dai nhẹ, cắn 1 cái là cảm nhận ngay nhân mứt trái cây chua chua ngọt ngọt bên trong đang từ từ trào ra cực bắt vị khiến bạn ăn một lần là nhớ mãi không thôi.', CAST(15000.00 AS Decimal(10, 2)), 4, 23, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (10, N'Donut Socola', N'Một trong những phiên bản bánh được nhiều người biết đến nhất của bánh donut chính là bánh donut phủ socola béo ngọt pha chút vị đắng nhẹ cực tròn vị.', CAST(15000.00 AS Decimal(10, 2)), 4, 12, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (11, N'Donut Khoai Lang Cốt Dừa', N'Bánh donut khoai lang nước cốt dừa có thành phẩm thơm nức mũi cùng vỏ bánh vàng ươm, giòn rụm, cắn 1 cái là tan ngay trong miệng. Món ăn vặt này mà ăn cùng kem trứng hoặc tương ớt là một sự kết hợp vô cùng hoàn hảo đấy nhé!', CAST(15000.00 AS Decimal(10, 2)), 4, 10, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (12, N'Gullon Tea Biscuit', N'Gullon không đường “Tea biscuit Petit” là một sản phẩm của hãng Gullón một thương hiệu nổi tiếng đến từ Tây Ban Nha. Bánh với thành phần tự nhiên giúp cung cấp các dưỡng chất thiết yếu cho cơ thể, và đặc biệt hơn với việc sử dụng đường isomalt và các chất có hàm lượng chất xơ cao giúp cơ thể không tăng đường huyết sau khi ăn, giảm nồng độ colesterol trong máu, bánh rất thích hợp với những người ăn kiêng.', CAST(62000.00 AS Decimal(10, 2)), 3, 9, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (13, N'Bánh Quy Nhật Layer Biscuit Nho/Dâu/Dứa', N'Bánh Bích Quy Layer thơm ngon - giòn rụm, điểm thêm những miếng hoa quả khô được làm từ những trái cây tươi ngon nhất tạo ra một hương vị đầy lôi cuốn.', CAST(32000.00 AS Decimal(10, 2)), 3, 8, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (14, N'Bánh Nougat Bsicuit Kẹp Sữa Bò Yuki & Love', N'Bánhthơm ngon, giòn tan, hương vị hành lá độc đáo kết hợp với vị thơm lừng của sữa tươi.', CAST(98000.00 AS Decimal(10, 2)), 3, 3, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (15, N'Bánh quy nhân trứng muối Đài Loan', N'Bánh quy tròn xốp giòn, kẹp giữa là lớp nhân trứng muối dẻo dẻo, bánh có vị mặn ngọt đậm đà quyện cùng mạch nha khiến bạn không thể ngừng thưởng thức.', CAST(75000.00 AS Decimal(10, 2)), 3, 4, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (16, N'Bánh Savoury', N'Bánh được phun chất béo, muối hay hương vị sau khi nướng lúc bánh còn nóng. Có thể phun lên trên 1 mặt hoặc 2 mặt. Chất béo phun lên mặt bánh nhằm giữ mùi không bị mất đi sau khi nướng và tăng thêm hương vị thơm ngon cho bánh.', CAST(35000.00 AS Decimal(10, 2)), 3, 5, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (17, N'Bánh Soda Cracker', N'Soda cracker không có cấu trúc phân lớp như Cream cracker. Trên bề mặt bánh thường được phun rưới dầu và muối bột. Rìa bánh thường màu trắng và được bẻ ra sau khi nướng.', CAST(35000.00 AS Decimal(10, 2)), 3, 7, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (18, N'Bánh Biscuit Cream', N'Cream cracker là loại bánh không ngọt, lạt hay mặn lắm. Bánh mỏng, hơi mềm, giòn nhưng không quá cứng, dễ bong vỡ thành từng mảnh khi cắn, bẻ. Thường ăn cùng với bơ, phomat, thịt nguội… Bánh có cấu trúc phân lớp.', CAST(35000.00 AS Decimal(10, 2)), 3, 19, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (19, N'Bánh Kem Tiên Cá', N'Để đảm bảo độ tươi của kem chúng tôi khuyến khích khách hàng đến mua trực tiếp tại cửa hàng !', CAST(300000.00 AS Decimal(10, 2)), 2, 5, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (20, N'Bánh Kem Trái Cây', N'Để đảm bảo độ tươi của kem chúng tôi khuyến khích khách hàng đến mua trực tiếp tại cửa hàng !', CAST(300000.00 AS Decimal(10, 2)), 2, 8, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (21, N'Cupcake Bơ', N'Bánh cupcake bơ có mùi thơm và vị đặc trưng từ thịt quả bơ hòa quyện cùng socola ngọt đắng ngon miệng.', CAST(10000.00 AS Decimal(10, 2)), 5, 20, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (22, N'Bánh Kem Đồng Tiền', N'Để đảm bảo độ tươi của kem chúng tôi khuyến khích khách hàng đến mua trực tiếp tại cửa hàng !', CAST(300000.00 AS Decimal(10, 2)), 2, 14, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (23, N'Bánh Tiramisu Trái Tim', N'Bánh gồm 3 lớp bông lan socola + 2 lớp nhân kem sữa tươi phomai', CAST(290000.00 AS Decimal(10, 2)), 2, 24, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (24, N'Tiramisu Mouse Cheesecake', N'Bánh gồm 3 lớp bông lan socola + 2 lớp nhân kem sữa tươi phomai', CAST(395000.00 AS Decimal(10, 2)), 2, 1, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (25, N'Red Velvet Mouse Cheesecake', N'Bánh gồm 3 lớp bông lan socola + 2 lớp nhân kem sữa tươi phomai', CAST(395000.00 AS Decimal(10, 2)), 2, 0, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (26, N'Passion Mouse Cheesecake', N'Bánh gồm 3 lớp bông lan socola + 2 lớp nhân kem sữa tươi phomai', CAST(395000.00 AS Decimal(10, 2)), 2, 9, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (27, N'Chocolate Mouse Cheesecake', N'Bánh gồm 3 lớp bông lan socola + 2 lớp nhân kem sữa tươi phomai', CAST(395000.00 AS Decimal(10, 2)), 2, 3, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (28, N'Bánh quy bơ thập cẩm công thức Pháp LU', N'Bánh quy bơ Pháp giòn rụm, thơm ngon và chứa nhiều dưỡng chất cho cơ thể. Bánh quy bơ thập cẩm công thức Pháp LU gói tiện lợi, kích thích vị giác với sữa béo, tạo nên sự ngon miệng khi ăn. Bánh LU chứa hàm lượng canxi cao giúp xương chắc khỏe và chứa chất xơ giúp hỗ trợ tiêu hóa. Sản phẩm được đóng hộp đẹp mắt, tiện lợi và dễ dàng sử dụng, hoặc mang theo khi đi làm, đi dã ngoại,....', CAST(77000.00 AS Decimal(10, 2)), 1, 5, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (29, N'Cowhead Bánh Quy - Butter Cookies', N'Cowhead Bánh Quy - Butter Cookies là loại bánh quy bơ được sản xuất trên quy trình hiện đại tại Malaysia và rất được ưa chuộng trong thị trường bánh tại quê nhà Malaysia', CAST(80000.00 AS Decimal(10, 2)), 1, 6, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (30, N'Bánh Quy Hollanda', N'Bánh quy bơ Hollanda chính hãng lấy từ công ty  chất lượng đảm bảo . Phù hợp làm quà tết cho gia đình , bạn bè , người thân , đồng nghiệp ', CAST(90000.00 AS Decimal(10, 2)), 1, 7, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (31, N'Bánh quy Bơ NoBrand', N'có hương vị thơm ngon, giòn béo, hợp khẩu vị người Việt. Bánh được làm từ các nguyên liệu cao cấp: bột mì, bơ, đường, bột cacao, bột sữa, hương vani... giúp bổ sung năng lượng và chất dinh dưỡng hợp lý cho cả gia đình bạn.', CAST(50000.00 AS Decimal(10, 2)), 1, 8, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (32, N'Bánh quy bơ [USA] PEPPERIDGE FARM Butter Cookies ', N'Bánh phô mai Chessmen thương hiệu Pepperidge Farm có vị giòn của bánh quy kết hợp với vị mềm ngọt, thơm mát của kem tươi. Bánh có màu vàng đẹp mắt, khuôn chữ nhật với các hình bánh phong phú, ngộ nghĩnh, là món ăn ưa thích của nhiều người, đặc biệt là các em nhỏ.', CAST(138000.00 AS Decimal(10, 2)), 1, 9, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (33, N'Bánh xô Kokola Crackers', N'Bánh được đóng gói trong một thùng nhựa được thiết kế rất đẹp mắt, sang trọng và chắc chắn, có quai xách tiện dụng. Thích hợp làm quà tặng.', CAST(65000.00 AS Decimal(10, 2)), 1, 10, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (34, N'Bánh quy bơ Danisa', N'Bánh Quy Bơ Danisa được sản xuất theo công nghệ Châu  u của Đan Mạch, đã qua các khâu kiểm tra nghiêm ngặt, mang đậm chất hoàng gia quý phái. Bánh Danisa đảm bảo chất lượng an toàn, không có đường hóa học, không chứa hóa chất độc hại, mang đến sự an tâm cho bạn.', CAST(270000.00 AS Decimal(10, 2)), 1, 11, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (35, N'Cupcake Sầu Riêng', N'Bánh Cupcake sầu riêng là món ăn khá hấp dẫn thường được người thưởng thức mê hoặc bởi vẻ ngoài đẹp mắt cùng hương vị ngây ngất của sầu riêng.', CAST(10000.00 AS Decimal(10, 2)), 5, 12, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (36, N'Cupcake Sữa Chua', N'Thưởng thức bánh cupcake sữa chua với một ly trà nóng hay cà phê tuỳ thích. Các dịp đặc biệt, bạn có thể làm món bánh này dành tặng cho những người yêu thương hay trong tiệc trà chiều cùng bạn bè cũng rất thích hợp đấy.', CAST(10000.00 AS Decimal(10, 2)), 5, 13, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (37, N'Cupcake Oreo', N'Có nhiều loại bánh cupcake khác nhau, được biến tấu với những nguyên liệu, màu sắc riêng biệt. Ngoài dâu, trà xanh, hay kem trứng,… những chiếc bánh quy oreo cũng được sử dụng để làm mới lạ món bánh cupcake.', CAST(10000.00 AS Decimal(10, 2)), 5, 14, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (38, N'Cupcake Tổ Chim', N'Bánh cupcake tổ chim thật đáng yêu và đầy màu sắc. Hãy cùng mang những niềm vui nho nhỏ đến cho bé trong gia đình với món bánh này nhé!', CAST(10000.00 AS Decimal(10, 2)), 5, 15, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (39, N'Cupcake Hokkaido', N'Bánh Hokkaido Cupcake là loại bánh lai giữa bông lan kem sữa và bánh cupcake. Sự kết hợp giữa nhân kem béo ngậy và phần bánh bông lan mềm mại tạo thành điểm nhấn khó quên cho món bánh độc đáo này.', CAST(10000.00 AS Decimal(10, 2)), 5, 16, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (40, N'Cupcake Việt Quất', N'Bánh muffin việt quất yaourt vừa là món bánh ngon ăn chơi, cũng thích hợp làm bữa ăn nhẹ giữa giờ, vị chua ngọt cùng beo béo của sữa chua sẽ xoa dịu cái bụng đói ngay lập tức.', CAST(10000.00 AS Decimal(10, 2)), 5, 17, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (41, N'Cupcake Trà Xanh', N'Trong thời gian gần đây, bột trà xanh đã trở nên quen thuộc với nhiều người Việt và ngày càng thịnh hành. Đặc điểm nổi trội của loại bột này là có hàm lượng dưỡng chất và vitamin dồi dào nên rất tốt cho sức khỏe. Các axitamin của bột trà xanh có công dụng trợ tim, giãn nở huyết quản, lợi tiểu.', CAST(10000.00 AS Decimal(10, 2)), 5, 18, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (42, N'Cupcake Cà Rốt', N'Bánh cupcake cà rốt mềm xốp với vị ngọt dịu, chua nhẹ và mùi thơm đặc trưng của cà rốt hứa hẹn sẽ làm say đắm trái tim của bất kì ai. Bánh cà rốt không chỉ ngon mà còn chứa rất nhiều chất dinh dưỡng, đặc biệt là vitamin sẽ là vị cứu tinh của những ai ghét cà rốt.', CAST(10000.00 AS Decimal(10, 2)), 5, 19, 0)
INSERT [dbo].[Products] ([productid], [name], [description], [price], [categoryid], [totalproduct], [status]) VALUES (43, N'Cupcake Bơ', N'Bánh cupcake bơ có mùi thơm và vị đặc trưng từ thịt quả bơ hòa quyện cùng socola ngọt đắng ngon miệng.', CAST(1000000.00 AS Decimal(10, 2)), 5, 20, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (48, 1, N'testmail@gmail.com', N'pt', N'1', N'1234567891', N'Phạm Văn Thắng', N'1.png', CAST(N'2003-01-17' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value', 1, N'2', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (49, 2, N'duongpc@gmail.com', N'dt', N'1', N'123456789', N'Trịnh Đức Dương ', N'screenflow3.png', CAST(N'2003-06-23' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (50, 2, N'duong23062003@gmail.com', N'dt', N'1', N'123456789', N'Nguyễn Quý Dương ', N'2.png', CAST(N'2003-06-23' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (53, 2, N'linhlinh01@gmail.com', N'pt', N'2', N'123456789', N'Linh', N'2.png', CAST(N'2003-09-01' AS Date), N'Nam Định', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (56, 2, N'nguyentungduong03@gmail.com', N'pt', N'2', N'123456789', N'Dương Dương ', N'4.jpg', CAST(N'2003-09-01' AS Date), N'Hải Phòng', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (58, 3, N'linh05@gmail.com', N'pt', N'2', N'123456789', N'Linh Linh', N'1.png', CAST(N'2003-09-01' AS Date), N'Hải Phòng', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (59, 3, N'nguyentungduong06@gmail.com', N'pt', N'2', N'123456789', N'Linh Linh', N'2.png', CAST(N'2003-09-01' AS Date), N'Hải Phòng', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (60, 3, N'nguyentungduong07@gmail.com', N'pt', N'2', N'123456789', N'Dương in', N'', CAST(N'2003-09-01' AS Date), N'Hải Phòng', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (61, 3, N'nguyentungduong08@gmail.com', N'pt', N'2', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hải Phòng', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (62, 3, N'trinhducduong@gmail.com', N'pt', N'2', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (63, 3, N'trinhducduong1@gmail.com', N'pt', N'2', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (64, 3, N'trinhducduong2@gmail.com', N'pt', N'2', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (65, 3, N'trinhducduong3@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (66, 3, N'trinhducduong3@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (67, 3, N'trinhducduong4@gmail.com', N'pt', N'3', N'123456789', N'Dương  ', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (68, 3, N'trinhducduong5@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (69, 3, N'nguyenduong@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (70, 3, N'nguyenduong1@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (71, 3, N'nguyenduong2@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (72, 3, N'nguyenduong3@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (73, 3, N'nguyenduong4@gmail.com', N'pt', N'3', N'123456789', N'Dương', N'1.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (74, 3, N'testupdate01@gmail.com', N'pt', N'1', N'123455', N'Dương dương', N'1.png', CAST(N'2000-01-12' AS Date), N'Nam Định', NULL, N'123', N'facebookid_value1', 1, N'3', N'bio_value')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (78, 3, N'nguyenduong5@gmail.com', N'null', N'null', N'123456789', N'Dương', N'20.png', CAST(N'2003-09-01' AS Date), N'Hà Nội', NULL, N'null', N'null', 1, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (79, 3, N'123@gmail.com', N'null', N'123456', N'12345', N'thang', N'1.png', CAST(N'2003-01-09' AS Date), N'Nam Định', NULL, N'null', N'null', 1, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (80, 3, N'123999@gmail.com', N'null', N'123456', N'12345', N'thang', N'1.png', CAST(N'2003-01-09' AS Date), N'Nam Định', NULL, N'null', N'null', 1, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (97, 3, N'thangpv19200311@gmail.com', N'null', N'123456', N'09687274922', N'Thang in', N'', CAST(N'1900-01-01' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (98, 3, N'thangpv1920031@gmail.com', N'null', N'123456@', N'0968727492', N'Thang', N'', CAST(N'1900-01-01' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (102, 3, N'thangpv1920033@gmail.com', N'null', N'123456', N'0968727493', N'Thang', N'background.jpg', CAST(N'1900-01-01' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (103, 3, N'thangpv1920039999@gmail.com', N'null', N'123456', N'0968727399', N'Thang', N'background.jpg', CAST(N'1900-01-01' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (104, 3, N'thangpv192003@gmaildsds.com', N'null', N'123456', N'0968727495', N'Thang', N'zalo.jpg', CAST(N'1900-01-01' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (107, 3, N'thangpv1920034444@gmail.com', N'null', N'123456', N'0968727499', N'Thang', N'4.jpg', CAST(N'1900-01-01' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (108, 3, N'thangpv192003@gmail.com111', N'null', N'123456', N'09687274921', N'KAKA', N'zalo.jpg', CAST(N'2024-01-12' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (109, 3, N'thangpv19200ddasdsad3@gmail.com', N'null', N'123456', N'0968727498', N'Thang', N'zalo.jpg', CAST(N'2024-01-22' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (110, 3, N't@gmail.com', N'null', N'12324555656', N'09687271234', N'thang', N'background.jpg', CAST(N'2024-01-23' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (111, 3, N'thangpv192003dasds@gmail.com', N'null', N'dasdsadsdasd', N'09687274111', N'Dương ', N'3.png', CAST(N'2024-01-27' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (115, 1, N'thangkaka317@gmail.com', N'null', N'25F9E794323B453885F5181F1B624D0B', NULL, N'Thắng', N'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png', NULL, N'null', NULL, N'null', N'null', 1, N'937', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (116, 1, N'thangpv192003@gmail.com', N'null', N'25F9E794323B453885F5181F1B624D0B', NULL, N'Thắng', N'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png', NULL, N'null', NULL, N'null', N'null', 1, N'174', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (117, 3, N'rollingdown216@gmail.com', N'null', N'6B96D41ECAF6FE390D2D7A2EE9E79A38', NULL, N'Quý Dương', N'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png', NULL, N'null', NULL, N'null', N'null', 1, N'7954', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (118, 3, N'thangpv1920031111@gmail.com', N'null', N'', N'0568727492', N'Phạm Thắng', N'ScreenFlow.png', CAST(N'2024-01-30' AS Date), N'Hoa Lac, Thach That , Ha Noi', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (120, 3, N'test1902@gmail.com', N'null', NULL, N'88888888888', N'kaka', N'zalo.jpg', CAST(N'2024-02-08' AS Date), N'ad', NULL, N'null', N'null', NULL, N'null', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (121, 3, N'geminithe2@gmail.com', N'null', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'Kaka', N'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png', NULL, N'null', NULL, N'null', N'null', 0, N'4353', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (122, 3, N'phuonglinh206203@gmail.com', N'null', N'E10ADC3949BA59ABBE56E057F20F883E', N'0961175596', N'Lê Thị Phương Linh', N'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png', NULL, N'null', NULL, N'null', N'null', 1, N'5275', N'null')
INSERT [dbo].[user] ([userid], [roleId], [email], [facebook], [password], [phone], [fullname], [image], [dob], [address], [addressId], [gmailid], [facebookid], [status], [codeverify], [bio]) VALUES (123, 1, N'cuberhp09@gmail.com', N'null', N'E10ADC3949BA59ABBE56E057F20F883E', N'0795245399', N'Nguyễn Tùng Dương', N'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png', NULL, N'null', NULL, N'null', N'null', 1, N'3572', N'null')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[userrole] ON 

INSERT [dbo].[userrole] ([roleid], [name]) VALUES (1, N'Admin')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (2, N'Staff')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (3, N'Customers')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (4, N'Guest')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (5, N'')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (6, N'')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (7, N'')
INSERT [dbo].[userrole] ([roleid], [name]) VALUES (8, N'')
SET IDENTITY_INSERT [dbo].[userrole] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [statuspayment]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [totalproduct]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__email__5FB337D6]  DEFAULT ('null') FOR [email]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__facebook__60A75C0F]  DEFAULT ('null') FOR [facebook]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__password__619B8048]  DEFAULT ('null') FOR [password]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__fullname__628FA481]  DEFAULT ('null') FOR [fullname]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__gmailid__656C112C]  DEFAULT ('null') FOR [gmailid]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__facebookid__66603565]  DEFAULT ('null') FOR [facebookid]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__codeverify__6754599E]  DEFAULT ('null') FOR [codeverify]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__bio__68487DD7]  DEFAULT ('null') FOR [bio]
GO
ALTER TABLE [dbo].[userrole] ADD  DEFAULT ('null') FOR [name]
GO
ALTER TABLE [dbo].[Discount]  WITH CHECK ADD  CONSTRAINT [FK_Discount_Products] FOREIGN KEY([UserID])
REFERENCES [dbo].[user] ([userid])
GO
ALTER TABLE [dbo].[Discount] CHECK CONSTRAINT [FK_Discount_Products]
GO
ALTER TABLE [dbo].[imglink]  WITH CHECK ADD FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([productid])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([groupId])
REFERENCES [dbo].[NewsCategory] ([NGroupId])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK__News__Userid__6E01572D] FOREIGN KEY([Userid])
REFERENCES [dbo].[user] ([userid])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK__News__Userid__6E01572D]
GO
ALTER TABLE [dbo].[Orderitems]  WITH CHECK ADD FOREIGN KEY([foodid])
REFERENCES [dbo].[Products] ([productid])
GO
ALTER TABLE [dbo].[Orderitems]  WITH CHECK ADD FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([orderid])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([customerid])
REFERENCES [dbo].[user] ([userid])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[Categories] ([categoryid])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK__user__roleId__693CA210] FOREIGN KEY([roleId])
REFERENCES [dbo].[userrole] ([roleid])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK__user__roleId__693CA210]
GO
USE [master]
GO
ALTER DATABASE [DONETHAT9] SET  READ_WRITE 
GO
