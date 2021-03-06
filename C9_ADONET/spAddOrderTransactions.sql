USE [AdventureWorksLT]
GO
/****** Object:  StoredProcedure [dbo].[spAddOrderTransactions]    Script Date: 02/04/2008 01:28:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAddOrderTransactions]
@SalesOrderId integer out,
@CustomerID int,
@Quantity int,
@ProductId int,
@UnitPrice money,
@Discount money
 AS
Begin Transaction
-- declare @OrderID int
insert into SalesLT.SalesOrderHeader (DueDate, CustomerID, ShipMethod)
values ( GetDate()+5, @CustomerID, 'CARGO TRANSPORT 5')
select @SalesOrderID = scope_identity()
if @@Error <> 0 goto ErrorHandler

Insert into SalesLT.SalesOrderDetail
(SalesOrderID, OrderQty, ProductID, UnitPrice, UnitPriceDiscount)
values
(@SalesOrderID, @Quantity, @ProductId, @UnitPrice, @Discount)

if @@Error <> 0 goto ErrorHandler
commit transaction
return
ErrorHandler:
rollback transaction
return
