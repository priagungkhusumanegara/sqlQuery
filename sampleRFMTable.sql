SELECT
	INVOICE_ACCOUNT AS Invoice_Account,
	MAX( INVOICE_DATE ) AS Latest_Invoice_Date,
	(
		DATEDIFF(
			DAY,
			MAX( INVOICE_DATE ),
			CAST(
				'xxxx-xx-xx' AS DATE
			)
		)
	) AS Total_Days_Recency,
	COUNT(*) AS Total_Transaction,
	SUM( xxx ) as Total_Volume_in_xxx,
	SUM( xxx ) as Total_Volume_in_xxx,
	SUM( AMOUNT ) as Total_Amount INTO
		[dbo].[FACT_xxx_xxx_xxx]
	FROM
		[dbo].[FACT_xxx_xxx]
	WHERE
		INVOICE_DATE BETWEEN 'xxxx-xx-xx' AND 'xxxx-xx-xx'
	GROUP BY
		INVOICE_ACCOUNT
