CREATE TABLE [dbo].[FactOrders](
	[OrderSK] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[EmployeeSK] [int] NOT NULL,
	[ShipperSK] [int] NOT NULL,
	[CustomerSK] [int] NOT NULL,
	[SupplierSK] [int] NOT NULL,
	[ProductSK] [int] NOT NULL,
	[ShipInfoSK] [int] NOT NULL,
	[OrderDateSK] [int] NOT NULL,
	[RequiredDateSK] [int] NOT NULL,
	[ShippedDateSK] [int] NOT NULL,
	[Freight] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[ActualCost] [money] NOT NULL,
 CONSTRAINT [PK_Fact_order] PRIMARY KEY CLUSTERED 
(
	[OrderSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_customer_sk] FOREIGN KEY([CustomerSK])
REFERENCES [dbo].[DimCustomer] ([CustomerSK])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_customer_sk]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_date_sk] FOREIGN KEY([OrderDateSK])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_date_sk]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_date_sk1] FOREIGN KEY([RequiredDateSK])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_date_sk1]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_date_sk2] FOREIGN KEY([ShippedDateSK])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_date_sk2]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_employee_sk] FOREIGN KEY([EmployeeSK])
REFERENCES [dbo].[DimEmployee] ([EmployeeSK])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_employee_sk]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_product_sk] FOREIGN KEY([ProductSK])
REFERENCES [dbo].[DimProduct] ([ProductSK])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_product_sk]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_shipinfo_sk] FOREIGN KEY([ShipInfoSK])
REFERENCES [dbo].[DimShipInfo] ([ShipInfoSK])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_shipinfo_sk]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_shipper_sk] FOREIGN KEY([ShipperSK])
REFERENCES [dbo].[DimShipper] ([ShipperSK])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_shipper_sk]
GO
ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_orders_fact_supplier_sk] FOREIGN KEY([SupplierSK])
REFERENCES [dbo].[DimSupplier] ([SupplierSK])
GO
ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_orders_fact_supplier_sk]
GO