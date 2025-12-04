-- Needs to review [SupplierSK], [ShipInfoSK] and [ActualCost]
CREATE PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow  BIGINT
)
AS
BEGIN
    SELECT ord.[OrderID],
           ord.[EmployeeID],
           ord.[ShipVia],
           ord.[CustomerID],
           det.[ProductID],
           [OrderDateSK] = CONVERT(INT,
                   (CONVERT(CHAR(4),DATEPART(YEAR,ord.[OrderDate]))
                       + CASE
                             WHEN DATEPART(MONTH,ord.[OrderDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ord.[OrderDate]))
                             ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ord.[OrderDate]))
                        END
                       + CASE
                             WHEN DATEPART(DAY,ord.[OrderDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ord.[OrderDate]))
                             ELSE + CONVERT(CHAR(2),DATEPART(DAY,ord.[OrderDate]))
                        END)),
           [RequiredDateSK] = CONVERT(INT,
                   (CONVERT(CHAR(4),DATEPART(YEAR,ord.[RequiredDate]))
                       + CASE
                             WHEN DATEPART(MONTH,ord.[RequiredDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ord.[RequiredDate]))
                             ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ord.[RequiredDate]))
                        END
                       + CASE
                             WHEN DATEPART(DAY,ord.[RequiredDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ord.[RequiredDate]))
                             ELSE + CONVERT(CHAR(2),DATEPART(DAY,ord.[RequiredDate]))
                        END)),
          [ShippedDateSK] = CASE
                            WHEN ord.[ShippedDate] IS NULL THEN 0
                            ELSE (CONVERT(INT,
                                    (CONVERT(CHAR(4),DATEPART(YEAR,ord.[ShippedDate]))
                                        + CASE
                                            WHEN DATEPART(MONTH,ord.[ShippedDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ord.[ShippedDate]))
                                            ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ord.[ShippedDate]))
                                        END
                                        + CASE
                                            WHEN DATEPART(DAY,ord.[ShippedDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ord.[ShippedDate]))
                                            ELSE + CONVERT(CHAR(2),DATEPART(DAY,ord.[ShippedDate]))
                                        END)))
                            END,
          ord.[Freight],
          ord.[ShipAddress],
          ord.[ShipCity],
          ord.[ShipRegion],
          ord.[ShipCountry],
          det.[UnitPrice],
          det.[Quantity],
          det.[Discount]

    FROM dbo.[Orders] ord
    INNER JOIN dbo.[OrderDetails] det ON ord.[OrderID] = det.[OrderID]
    WHERE (ord.[RowVersion] > CONVERT(ROWVERSION,@startRow)
      AND ord.[RowVersion] <= CONVERT(ROWVERSION,@endRow))
    OR (det.[RowVersion] > CONVERT(ROWVERSION,@startRow)
      AND det.[RowVersion] <= CONVERT(ROWVERSION,@endRow))
END
GO
