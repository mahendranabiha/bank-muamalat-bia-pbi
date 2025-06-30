SELECT
	o.date AS order_date,
	pc.categoryname AS category_name,
	p.prodname AS product_name,
	p.price AS product_price,
	o.quantity AS order_qty,
	ROUND(o.quantity * p.price) AS total_sales,
	c.customeremail AS cust_email,
	c.customercity AS cust_city
FROM
	customers AS c
JOIN orders AS o 
	ON c.customerid = o.customerid
JOIN products AS p
	ON p.prodnumber = o.prodnumber
JOIN productcategory AS pc
	ON pc.categoryid = p.category
ORDER BY 
	o.date;