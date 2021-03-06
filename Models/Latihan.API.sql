USE [Latihan.API]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/02/2021 13:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[Id] [nvarchar](40) NOT NULL,
	[BillId] [nvarchar](40) NULL,
	[Name] [nvarchar](max) NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_BillDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [nvarchar](40) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[LanguangeId] [nvarchar](40) NULL,
	[CurrencyId] [nvarchar](40) NULL,
	[From] [nvarchar](max) NULL,
	[DestinationId] [nvarchar](40) NULL,
	[DateRecord] [datetime2](7) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[InvoiceDue] [nvarchar](max) NULL,
	[PurchaseOrderId] [nvarchar](40) NULL,
	[MeasurementId] [nvarchar](40) NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[DiscountName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[Id] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinations]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinations](
	[Id] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Destinations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languanges]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languanges](
	[Id] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Languanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measurements]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurements](
	[Id] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Measurements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
	[Id] [nvarchar](40) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_PurchaseOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](40) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210202070129_FirstDb', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210205140939_Trx', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210205153822_TrxDiscount', N'3.1.5')
GO
INSERT [dbo].[Currencies] ([Id], [Name], [Code]) VALUES (N'0E9C0E52-34B1-437C-B3FE-4976B0DFA8CE', N'United States Dollar', N'USD')
INSERT [dbo].[Currencies] ([Id], [Name], [Code]) VALUES (N'60BC353D-D022-449B-B5E9-305C88E8766B', N'Indonesia', N'IDR')
GO
INSERT [dbo].[Destinations] ([Id], [Name], [Detail], [Logo]) VALUES (N'A13C00F9-C3A7-49EF-A835-640050A9F5C1', N'Microsoft Indoneisa', N'Jl. Merdeka Barat', N'/images/ms.jpg')
INSERT [dbo].[Destinations] ([Id], [Name], [Detail], [Logo]) VALUES (N'C8AFBCDC-B08C-4B6D-9D46-869EC230FDDC', N'Google Indonesia', N'Jl. Gatot Subroto', N'/images/google.jpg')
GO
INSERT [dbo].[Languanges] ([Id], [Name]) VALUES (N'A9B0096D-6EA9-4C51-A302-8A3AC4FF6144', N'Englis (US)')
INSERT [dbo].[Languanges] ([Id], [Name]) VALUES (N'CCB86390-F783-41E0-A8E0-4154275D8CA3', N'Indonesia')
GO
INSERT [dbo].[Measurements] ([Id], [Name]) VALUES (N'7A54B83C-A35F-4059-9C8C-CB4C9DF5B1AC', N'Gr')
INSERT [dbo].[Measurements] ([Id], [Name]) VALUES (N'A23F6B59-04DE-46D7-B9CB-219F2AE3B281', N'Kg')
GO
INSERT [dbo].[PurchaseOrders] ([Id], [Code], [Name]) VALUES (N'3F60DE76-2F3C-4697-A94A-5A76AC734CD6', N'KU-456', N'PT Bina')
INSERT [dbo].[PurchaseOrders] ([Id], [Code], [Name]) VALUES (N'83847041-CCB1-42A3-8607-837E1DE20F35', N'FL-123', N'PT Jaya')
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DisplayName], [JobTitle], [EmailAddress]) VALUES (N'D3AA3DB3-1008-4D20-B384-010A77D8127E', N'Ahmad', N'Faizin', N'ahmad khoirul faizin', N'Programmer', N'faizin@gmail.com')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BillDetails_BillId]    Script Date: 06/02/2021 13:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_BillId] ON [dbo].[BillDetails]
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bills_CurrencyId]    Script Date: 06/02/2021 13:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Bills_CurrencyId] ON [dbo].[Bills]
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bills_DestinationId]    Script Date: 06/02/2021 13:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Bills_DestinationId] ON [dbo].[Bills]
(
	[DestinationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bills_LanguangeId]    Script Date: 06/02/2021 13:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Bills_LanguangeId] ON [dbo].[Bills]
(
	[LanguangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bills_MeasurementId]    Script Date: 06/02/2021 13:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Bills_MeasurementId] ON [dbo].[Bills]
(
	[MeasurementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bills_PurchaseOrderId]    Script Date: 06/02/2021 13:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Bills_PurchaseOrderId] ON [dbo].[Bills]
(
	[PurchaseOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Bills_BillId] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bills] ([Id])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Bills_BillId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Currencies_CurrencyId] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currencies] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Currencies_CurrencyId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Destinations_DestinationId] FOREIGN KEY([DestinationId])
REFERENCES [dbo].[Destinations] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Destinations_DestinationId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Languanges_LanguangeId] FOREIGN KEY([LanguangeId])
REFERENCES [dbo].[Languanges] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Languanges_LanguangeId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Measurements_MeasurementId] FOREIGN KEY([MeasurementId])
REFERENCES [dbo].[Measurements] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Measurements_MeasurementId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_PurchaseOrders_PurchaseOrderId] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrders] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_PurchaseOrders_PurchaseOrderId]
GO
/****** Object:  StoredProcedure [dbo].[SPGetUser]    Script Date: 06/02/2021 13:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPGetUser]
	-- Add the parameters for the stored procedure here
	@IsCount bit = 1, 
	@Skip int = 0,
	@Take int = 10,
	@Search nvarchar(max) = NULL
AS
BEGIN 
	SET NOCOUNT ON; 
	DECLARE 
		@Query nvarchar(max) = '',
		@Params nvarchar(max) = N'@Skip int = 0,
														@Take int = 10'


  if(@IsCount = 1) 
			begin	
				set @Query = N'SELECT
					count(a.Id) as Number
					from Users a WITH (NOLOCK) '
				end		
		else
			begin
				set @Query = N'SELECT * from Users a WITH (NOLOCK) '
			end

				if(@Search !='') 
				begin
					SET @Query = @Query + ' where a.JobTitle like ''%'+@Search+'%'''
				end 
				
			if(@IsCount = 1)  
					begin	
						set @Query =  @Query
						Exec sp_executesql @Query, @Params
				end
			else
				begin	
					set @Query =  @Query + '
								ORDER BY DisplayName asc 
								OFFSET @Skip ROWS 
								FETCH NEXT @Take ROWS ONLY ' 
					Exec sp_executesql @Query, @Params,
					@Skip= @Skip,
					@Take= @Take
			end
END
GO
