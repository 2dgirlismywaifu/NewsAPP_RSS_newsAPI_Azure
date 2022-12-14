USE [newsapp-android]
GO
/****** Object:  Table [dbo].[IMAGE_INFORMATION]    Script Date: 22/12/2022 00:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGE_INFORMATION](
	[image_id] [int] NOT NULL,
	[source_id] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_IMAGE_INFORMATION] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC,
	[source_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS_DETAIL]    Script Date: 22/12/2022 00:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS_DETAIL](
	[source_id] [int] NOT NULL,
	[url_type] [nvarchar](255) NOT NULL,
	[url] [nvarchar](max) NULL,
 CONSTRAINT [PK_NEWS_HEALTH_DETAIL] PRIMARY KEY CLUSTERED 
(
	[source_id] ASC,
	[url_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS_SOURCE]    Script Date: 22/12/2022 00:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS_SOURCE](
	[source_id] [int] NOT NULL,
	[source_name] [nvarchar](255) NULL,
	[information] [nvarchar](max) NULL,
 CONSTRAINT [PK_NEWS_SOURCE] PRIMARY KEY CLUSTERED 
(
	[source_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYNC_SUBSCRIBE]    Script Date: 22/12/2022 00:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYNC_SUBSCRIBE](
	[sync_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[source_id] [int] NOT NULL,
 CONSTRAINT [SYNC_SUBSCRIBE_PK] PRIMARY KEY CLUSTERED 
(
	[sync_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_INFORMATION]    Script Date: 22/12/2022 00:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_INFORMATION](
	[user_id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
	[birthday] [date] NULL,
	[gender] [nvarchar](max) NULL,
	[avatar] [image] NULL,
 CONSTRAINT [USER_INFORMATION_PK] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_PASSLOGIN]    Script Date: 22/12/2022 00:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_PASSLOGIN](
	[user_id] [int] NOT NULL,
	[email] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[nick_name] [nvarchar](max) NULL,
	[sync_settings] [bit] NULL,
 CONSTRAINT [USER_PASSLOGIN_PK] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image]) VALUES (5368, 665297, N'https://play-lh.googleusercontent.com/vBgE9AG3HAKIDiXTiRMNxWkyALhcFipv-lPsgszEduzf2VcnqmOaGvLtAYOHry41-PA')
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image]) VALUES (6436, 629603, N'https://play-lh.googleusercontent.com/6eBVmDIQNXsUd06jK9sRRdUEHsp4oiI7jwFFZq4ccFpY3Jc1nAsRMv0pnH__mYYExak')
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image]) VALUES (9333, 749896, N'https://play-lh.googleusercontent.com/DCDX3C-F2-jY0zs6SScwbLjQbdsf5boJ3o6x0zr77Md3RLLVRPD1-tloKsgp6pJ6Bjc')
GO
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Breaking News', N'https://vnexpress.net/rss/tin-moi-nhat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Education', N'https://vnexpress.net/rss/giao-duc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Health', N'https://vnexpress.net/rss/suc-khoe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Law', N'https://vnexpress.net/rss/phap-luat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Life Style', N'https://vnexpress.net/rss/gia-dinh.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'News', N'https://vnexpress.net/rss/thoi-su.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Science', N'https://vnexpress.net/rss/khoa-hoc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Sport', N'https://vnexpress.net/rss/the-thao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'Travel', N'https://vnexpress.net/rss/du-lich.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (629603, N'World', N'https://vnexpress.net/rss/the-gioi.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Breaking News', N'https://soha.vn/thoi-su-xa-hoi.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Health', N'https://soha.vn/song-khoe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Law', N'https://soha.vn/phap-luat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Life Style', N'https://soha.vn/doi-song.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'News', N'https://soha.vn/thoi-su-xa-hoi.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Science', N'https://soha.vn/cong-nghe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Sport', N'https://soha.vn/the-thao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'Travel', N'https://soha.vn/kham-pha.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (665297, N'World', N'https://soha.vn/quoc-te.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Breaking News', N'https://nld.com.vn/tin-moi-nhat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Education', N'https://nld.com.vn/giao-duc-khoa-hoc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Health', N'https://nld.com.vn/suc-khoe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Law', N'https://nld.com.vn/phap-luat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Life Style', N'https://nld.com.vn/ly-tuong-song.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'News', N'https://nld.com.vn/thoi-su.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Science', N'https://nld.com.vn/cong-nghe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Sport', N'https://nld.com.vn/the-thao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'Travel', N'https://nld.com.vn/du-lich-xanh.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url]) VALUES (749896, N'World', N'https://nld.com.vn/thoi-su-quoc-te.rss')
GO
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [information]) VALUES (629603, N'VNExpress', N'VNExpress la trang tin tuc tong hop truc thuoc tap doan FPT VietNam')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [information]) VALUES (665297, N'Soha News', N'Bao Soha truc thuoc cong ty co phan VCCrop')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [information]) VALUES (749896, N'Nguoi Lao Dong News', N'Bao nguoi lao dong truc thuoc - Thanh uy TP.Ho Chi Minh')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [information]) VALUES (840656, N'Tuoi tre News', N'Báo Tuổi Trẻ là cơ quan ngôn luận của Thành đoàn Đoàn Thanh niên Cộng sản Hồ Chí Minh TP')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [information]) VALUES (847629, N'Thanh Nien New', N'Báo Thanh Niên là một tờ nhật báo Việt Nam có trụ sở tại Thành phố Hồ Chí Minh')
GO
ALTER TABLE [dbo].[IMAGE_INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_IMAGE_INFORMATION_NEWS_SOURCE] FOREIGN KEY([source_id])
REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[IMAGE_INFORMATION] CHECK CONSTRAINT [FK_IMAGE_INFORMATION_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[NEWS_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_NEWS_DETAIL_NEWS_SOURCE] FOREIGN KEY([source_id])
REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[NEWS_DETAIL] CHECK CONSTRAINT [FK_NEWS_DETAIL_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]  WITH CHECK ADD  CONSTRAINT [FK_SYNC_SUBSCRIBE_NEWS_SOURCE] FOREIGN KEY([source_id])
REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE] CHECK CONSTRAINT [FK_SYNC_SUBSCRIBE_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]  WITH CHECK ADD  CONSTRAINT [FK_SYNC_SUBSCRIBE_USER_PASSLOGIN] FOREIGN KEY([user_id])
REFERENCES [dbo].[USER_PASSLOGIN] ([user_id])
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE] CHECK CONSTRAINT [FK_SYNC_SUBSCRIBE_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[USER_INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_USER_INFORMATION_USER_PASSLOGIN] FOREIGN KEY([user_id])
REFERENCES [dbo].[USER_PASSLOGIN] ([user_id])
GO
ALTER TABLE [dbo].[USER_INFORMATION] CHECK CONSTRAINT [FK_USER_INFORMATION_USER_PASSLOGIN]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NORMAL LOGIN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_PASSLOGIN'
GO
