USE [SKUSDB]
GO
/****** Object:  StoredProcedure [dbo].[SKUTABLE_InsertNewSKU]    Script Date: 31/05/2024 10:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SKUTABLE_InsertNewSKU]
	@SKU varchar(40),
	@PCCase varchar(2),
	@MOBO varchar(10),
	@CPU varchar(10),
	@RAM varchar(20),
	@GPU varchar(10),
	@HDD varchar(3),
	@SSD varchar(5),
	@IDnum int,
	@WINDOWSVER varchar(10),
	@orderID int
AS 
	BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.SKUTABLE(SKU, PCCase, MOBO, CPU, RAM, GPU, HDD, SSD, IDnum, WINDOWSVER, orderID)
	VALUES (@SKU, @PCCase, @MOBO, @CPU, @RAM, @GPU, @HDD, @SSD, @IDnum, @WINDOWSVER, @orderID)
END