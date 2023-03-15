USE [HE-AirPollution-2022]
GO
/****** Object:  Table [dbo].[VehicleHistory]    Script Date: 05-June-2022 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleHistory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[vehicle_number] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[co2] [float] NOT NULL,
	[so2] [float] NOT NULL,
	[no2] [float] NOT NULL,
	[date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_VehicleHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleOwner]    Script Date: 05-June-2022 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleOwner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[owner_name] [varchar](200) NOT NULL,
	[email] [varchar](200) NOT NULL,
	[mobile] [varchar](15) NOT NULL,
	[vehicle_number] [nvarchar](50) NOT NULL,
	[warning_issued] [smallint] NOT NULL,
 CONSTRAINT [PK_VehicleOwner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[vehicle_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[VehicleHistory] ON 
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (1, N'AP 20 EJ 0303', N'Andhra Pradesh', N'Hyderabad', 4.8, 4.8, 17.4, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (2, N'AP 14 DT 8888', N'Andhra Pradesh', N'Hyderabad', 3.1, 3.1, 7, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (3, N'MH 26 H 5000', N'Maharashtra', N'Badlapur', 8.8, 6.2, 28.5, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (4, N'MH 07 FX 3435', N'Maharashtra', N'Badlapur', 11, 6.3, 14.7, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (5, N'WB 01 EH 2312', N'West Bengal', N'Uluberia', 5, 4.7, 7.5, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (6, N'WB 23 DX 2309', N'West Bengal', N'Uluberia', 7.6, 6.4, 25.7, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (7, N'WB 94 NW 5466', N'West Bengal', N'Uluberia', 8, 5.4, 17.1, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (8, N'HP 01 DT 8814', N'Himachal Pradesh', N'Damtal', 7.7, 4.7, 8.7, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (9, N'HP 02 ET 1814', N'Himachal Pradesh', N'Damtal', 6.3, 4.2, 23, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (10, N'HP 32 DE 5462', N'Himachal Pradesh', N'Damtal', 10.2, 4, 8.9, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (11, N'HP 38 BW 1111', N'Himachal Pradesh', N'Damtal', 3.6, 3.6, 18.6, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (12, N'HP 01 BW 2564', N'Himachal Pradesh', N'Damtal', 6.9, 3.9, 14.1, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (13, N'DL 70 BS 9663', N'Delhi', N'Delhi', 7.5, 5.6, 11.8, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (14, N'DL 19 K 9311', N'Delhi', N'Delhi', 2.2, 3.3, 19.3, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (15, N'DL 05 HS 4459', N'Delhi', N'Delhi', 1.5, 3.9, 8.2, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (16, N'DL 08 ER 1663', N'Delhi', N'Delhi', 6.5, 3.5, 12.1, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (17, N'DL 01 BR 8005', N'Delhi', N'Delhi', 8.9, 7.9, 10.2, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (18, N'MH 12 DE 1342', N'Maharashtra', N'Badlapur', 9, 6.2, 28.5, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (19, N'AP 38 CF 6758', N'Andhra Pradesh', N'Hyderabad', 5.1, 3.1, 7, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (20, N'AP 20 EJ 0303', N'Andhra Pradesh', N'Hyderabad', 4.8, 4.8, 17.4, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (21, N'AP 14 DT 8888', N'Andhra Pradesh', N'Hyderabad', 3.1, 3.1, 7, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (22, N'MH 26 H 5000', N'Maharashtra', N'Badlapur', 10, 6.2, 28.5, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (23, N'MH 07 FX 3435', N'Maharashtra', N'Badlapur', 11, 6.3, 14.7, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (24, N'WB 01 EH 2312', N'West Bengal', N'Uluberia', 5, 4.7, 7.5, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (25, N'WB 23 DX 2309', N'West Bengal', N'Uluberia', 7.6, 6.4, 25.7, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (26, N'WB 94 NW 5466', N'West Bengal', N'Uluberia', 8, 5.4, 17.1, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (27, N'HP 01 DT 8814', N'Himachal Pradesh', N'Damtal', 7.7, 4.7, 8.7, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (28, N'HP 02 ET 1814', N'Himachal Pradesh', N'Damtal', 6.3, 4.2, 23, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (29, N'HP 32 DE 5462', N'Himachal Pradesh', N'Damtal', 4.6, 4, 8.9, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (30, N'HP 38 BW 1111', N'Himachal Pradesh', N'Damtal', 3.6, 3.6, 18.6, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (31, N'HP 01 BW 2564', N'Himachal Pradesh', N'Damtal', 6.9, 3.9, 14.1, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (32, N'DL 70 BS 9663', N'Delhi', N'Delhi', 7.5, 5.6, 11.8, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (33, N'DL 19 K 9311', N'Delhi', N'Delhi', 2.2, 3.3, 19.3, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (34, N'DL 05 HS 4459', N'Delhi', N'Delhi', 1.5, 3.9, 8.2, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (35, N'DL 08 ER 1663', N'Delhi', N'Delhi', 6.5, 3.5, 12.1, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (36, N'DL 01 BR 8005', N'Delhi', N'Delhi', 8.9, 7.9, 10.2, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (37, N'MH 12 DE 1342', N'Maharashtra', N'Badlapur', 11, 6.2, 28.5, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (38, N'AP 38 CF 6758', N'Andhra Pradesh', N'Hyderabad', 5.1, 3.1, 7, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (39, N'AP 20 EJ 0303', N'Andhra Pradesh', N'Hyderabad', 4.8, 4.8, 17.4, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (40, N'AP 14 DT 8888', N'Andhra Pradesh', N'Hyderabad', 3.1, 3.1, 7, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (41, N'MH 26 H 5000', N'Maharashtra', N'Badlapur', 10, 6.2, 28.5, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (42, N'MH 07 FX 3435', N'Maharashtra', N'Badlapur', 11, 6.3, 14.7, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (43, N'WB 01 EH 2312', N'West Bengal', N'Uluberia', 5, 4.7, 7.5, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (44, N'WB 23 DX 2309', N'West Bengal', N'Uluberia', 7.6, 6.4, 25.7, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (45, N'WB 94 NW 5466', N'West Bengal', N'Uluberia', 8, 5.4, 17.1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (46, N'HP 01 DT 8814', N'Himachal Pradesh', N'Damtal', 7.7, 4.7, 8.7, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (47, N'HP 02 ET 1814', N'Himachal Pradesh', N'Damtal', 6.3, 4.2, 23, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (48, N'HP 32 DE 5462', N'Himachal Pradesh', N'Damtal', 8.2, 4, 8.9, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (49, N'HP 38 BW 1111', N'Himachal Pradesh', N'Damtal', 3.6, 3.6, 18.6, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (50, N'HP 01 BW 2564', N'Himachal Pradesh', N'Damtal', 6.9, 3.9, 14.1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (51, N'DL 70 BS 9663', N'Delhi', N'Delhi', 7.5, 5.6, 11.8, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (52, N'DL 19 K 9311', N'Delhi', N'Delhi', 2.2, 3.3, 19.3, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (53, N'DL 05 HS 4459', N'Delhi', N'Delhi', 1.5, 3.9, 8.2, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (54, N'DL 08 ER 1663', N'Delhi', N'Delhi', 6.5, 3.5, 12.1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (55, N'DL 01 BR 8005', N'Delhi', N'Delhi', 8.9, 7.9, 10.2, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (56, N'MH 12 DE 1342', N'Maharashtra', N'Badlapur', 9.5, 6.2, 28.5, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (57, N'AP 38 CF 6758', N'Andhra Pradesh', N'Hyderabad', 5.1, 3.1, 7, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (58, N'AP 20 EJ 0303', N'Andhra Pradesh', N'Hyderabad', 4.8, 4.8, 17.4, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (59, N'AP 14 DT 8888', N'Andhra Pradesh', N'Hyderabad', 3.1, 3.1, 7, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (60, N'MH 26 H 5000', N'Maharashtra', N'Badlapur', 10, 6.2, 28.5, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (61, N'MH 07 FX 3435', N'Maharashtra', N'Badlapur', 11, 6.3, 14.7, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (62, N'WB 01 EH 2312', N'West Bengal', N'Uluberia', 5, 4.7, 7.5, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (63, N'WB 23 DX 2309', N'West Bengal', N'Uluberia', 7.6, 6.4, 25.7, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (64, N'WB 94 NW 5466', N'West Bengal', N'Uluberia', 8, 5.4, 17.1, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (65, N'HP 01 DT 8814', N'Himachal Pradesh', N'Damtal', 7.7, 4.7, 8.7, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (66, N'HP 02 ET 1814', N'Himachal Pradesh', N'Damtal', 6.3, 4.2, 23, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (67, N'HP 32 DE 5462', N'Himachal Pradesh', N'Damtal', 5, 4, 8.9, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (68, N'HP 38 BW 1111', N'Himachal Pradesh', N'Damtal', 3.6, 3.6, 18.6, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (69, N'HP 01 BW 2564', N'Himachal Pradesh', N'Damtal', 6.9, 3.9, 14.1, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (70, N'DL 70 BS 9663', N'Delhi', N'Delhi', 7.5, 5.6, 11.8, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (71, N'DL 19 K 9311', N'Delhi', N'Delhi', 2.2, 3.3, 19.3, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (72, N'DL 05 HS 4459', N'Delhi', N'Delhi', 1.5, 3.9, 8.2, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (73, N'DL 08 ER 1663', N'Delhi', N'Delhi', 6.5, 3.5, 12.1, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (74, N'DL 01 BR 8005', N'Delhi', N'Delhi', 8.9, 7.9, 10.2, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (75, N'MH 12 DE 1342', N'Maharashtra', N'Badlapur', 9, 6.2, 28.5, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[VehicleHistory] ([ID], [vehicle_number], [state], [location], [co2], [so2], [no2], [date]) VALUES (76, N'AP 38 CF 6758', N'Andhra Pradesh', N'Hyderabad', 5.1, 3.1, 7, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[VehicleHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleOwner] ON 
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (1, N'Rohit Sharma', N'rohit.sharma@gmail.com', N'091-9875641235', N'AP 20 EJ 0303', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (2, N'Vicky Tripati', N'vicky@gmail.com', N'091-9987564648', N'AP 14 DT 8888', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (3, N'Akshay Malhotra', N'aks@gmail.com', N'091-9874545165', N'MH 26 H 5000', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (4, N'Bibin Philip', N'learning.with.bibin@gmail.com', N'091-8856478952', N'MH 07 FX 3435', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (5, N'Robin Henry', N'robin@gmail.com', N'091-8954878796', N'WB 01 EH 2312', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (6, N'Sunil Shetty', N'sunil24@gmail.com', N'091-6565897569', N'WB 23 DX 2309', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (7, N'Kiran Rao', N'kiran.rao@gmail.com', N'091-895759458', N'WB 94 NW 5466', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (8, N'Rajesh Sharma', N'rajsharma@gmail.com', N'091-8878628876', N'HP 01 DT 8814', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (9, N'Dipti Raval', N'dipti@gmail.com', N'091-8795478658', N'HP 02 ET 1814', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (10, N'Suman D.', N'suman@gmail.com', N'091-9856478657', N'HP 32 DE 5462', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (11, N'Sohail Khan', N'sohail.khan@gmail.com', N'091-9573988765', N'HP 38 BW 1111', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (12, N'Verma C.', N'verma@gmail.com', N'091-9895789456', N'HP 01 BW 2564', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (13, N'Vikram Seth', N'vikram_sheth@gmail.com', N'091-8798646382', N'DL 70 BS 9663', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (14, N'Rohit Shetty', N'rohit-shetty@gmail.com', N'091-9876879909', N'DL 19 K 9311', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (15, N'Priyank M.', N'priyank.m@gmail.com', N'091-6767878908', N'DL 05 HS 4459', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (16, N'Ramesh Vaidu', N'rameshvaidu@gmail.com', N'091-68908789309', N'DL 08 ER 1663', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (17, N'Kapil Sharma', N'kapil-sharma@gmail.com', N'091-8796596095', N'DL 01 BR 8005', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (18, N'Surya Singh', N'surya.singh@gmail.com', N'091-9870987654', N'MH 12 DE 1342', 0)
GO
INSERT [dbo].[VehicleOwner] ([ID], [owner_name], [email], [mobile], [vehicle_number], [warning_issued]) VALUES (19, N'Lucky Malhotra', N'lucky4u@gmail.com', N'091-8978095800', N'AP 38 CF 6758', 0)
GO
SET IDENTITY_INSERT [dbo].[VehicleOwner] OFF
GO
ALTER TABLE [dbo].[VehicleOwner] ADD  CONSTRAINT [DF_VehicleOwner_warning_issued]  DEFAULT ((0)) FOR [warning_issued]
GO
