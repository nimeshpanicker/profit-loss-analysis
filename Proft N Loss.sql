CREATE TABLE PL_Data (
    TransactionID       VARCHAR(20)    NOT NULL,
    Date                DATE           NOT NULL,
    Region              VARCHAR(50),
    Product             VARCHAR(100),
    Business_Unit       VARCHAR(100),
    Customer            VARCHAR(100),

    Revenue             DECIMAL(18,2),
    COGS                DECIMAL(18,2),
    Operating_Expense   DECIMAL(18,2),
    Interest            DECIMAL(18,2),
    Tax                 DECIMAL(18,2),

    Financial_Metric    VARCHAR(100),
    Actual              DECIMAL(18,2),
    Budget              DECIMAL(18,2),

    Month               VARCHAR(20),
    Year                INT,

    Gross_Profit        DECIMAL(18,2),
    EBITDA              DECIMAL(18,2),
    Net_Profit          DECIMAL(18,2),
    Net_Profit_Margin   DECIMAL(8,2),

    CONSTRAINT PK_PL_Data
        PRIMARY KEY (TransactionID)
);

SELECT COUNT(*) AS total_rows
FROM pl_data;

--1. Total Revenue
SELECT
    TO_CHAR(
        SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00'
    ) AS total_revenue
FROM pl_data;

--2. Total COGS, Operating Expenses, Interest, Tax and Net Profit
SELECT
    TO_CHAR(SUM(cogs),
        'FM₹99,99,99,99,99,99,990.00') AS total_cogs,
    TO_CHAR(SUM(operating_expense),
        'FM₹99,99,99,99,99,99,990.00') AS total_operating_expense,
    TO_CHAR(SUM(interest),
        'FM₹99,99,99,99,99,99,990.00') AS total_interest,
    TO_CHAR(SUM(tax),
        'FM₹99,99,99,99,99,99,990.00') AS total_tax,
    TO_CHAR(SUM(net_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_net_profit
FROM pl_data;

--3. Total Transactions
SELECT
    COUNT(*) AS total_transactions
FROM pl_data;

--4. Distinct Customers and Products
SELECT
    COUNT(DISTINCT customer) AS distinct_customers,
    COUNT(DISTINCT product) AS distinct_products
FROM pl_data;

--5. Revenue and Net Profit by Region
SELECT
    region,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue,
    TO_CHAR(SUM(net_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_net_profit
FROM pl_data
GROUP BY region
ORDER BY SUM(revenue) DESC;

--6. Products with Highest Revenue
SELECT
    product,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue
FROM pl_data
GROUP BY product
ORDER BY SUM(revenue) DESC;

--7. Average Revenue, COGS and Net Profit per Transaction
SELECT
    TO_CHAR(ROUND(AVG(revenue), 2),
        'FM₹99,99,99,99,99,99,990.00') AS avg_revenue,
    TO_CHAR(ROUND(AVG(cogs), 2),
        'FM₹99,99,99,99,99,99,990.00') AS avg_cogs,
    TO_CHAR(ROUND(AVG(net_profit), 2),
        'FM₹99,99,99,99,99,99,990.00') AS avg_net_profit
FROM pl_data;

--8. Monthly Revenue and Net Profit Trend
SELECT
    year,
    EXTRACT(MONTH FROM date)::INT AS month_number,
    month,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue,
    TO_CHAR(SUM(net_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_net_profit
FROM pl_data
GROUP BY year, EXTRACT(MONTH FROM date), month
ORDER BY year, EXTRACT(MONTH FROM date);

--9. Business Units with Highest Revenue
SELECT
    business_unit,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue
FROM pl_data
GROUP BY business_unit
ORDER BY SUM(revenue) DESC;

--10. Customers with Highest Revenue
SELECT
    customer,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue
FROM pl_data
GROUP BY customer
ORDER BY SUM(revenue) DESC;

--11. Gross Profit Margin by Region
SELECT
    region,
    TO_CHAR(SUM(gross_profit),
        'FM₹99,99,99,99,99,99,990.00') AS gross_profit,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    ROUND(
        100.0 * SUM(gross_profit) / NULLIF(SUM(revenue), 0),
        2
    ) AS gross_profit_margin_pct
FROM pl_data
GROUP BY region
ORDER BY gross_profit_margin_pct DESC;

--12. Net Profit Margin by Product
SELECT
    product,
    ROUND(
        100.0 * SUM(net_profit) / NULLIF(SUM(revenue), 0),
        2
    ) AS net_profit_margin_pct
FROM pl_data
GROUP BY product
ORDER BY net_profit_margin_pct DESC;

--13. Transactions with Negative Net Profit
SELECT
    transactionid,
    date,
    region,
    product,
    customer,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    TO_CHAR(net_profit,
        'FM₹99,99,99,99,99,99,990.00') AS net_profit
FROM pl_data
WHERE net_profit < 0
ORDER BY net_profit ASC;

--14. Regions with Revenue Above ₹10,00,000
SELECT
    region,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue
FROM pl_data
GROUP BY region
HAVING SUM(revenue) > 1000000
ORDER BY SUM(revenue) DESC;

--15. Top 10 Customers by Net Profit
SELECT
    customer,
    TO_CHAR(SUM(net_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_net_profit
FROM pl_data
GROUP BY customer
ORDER BY SUM(net_profit) DESC
LIMIT 10;

--16. Revenue Contribution Percentage by Region
WITH region_sales AS (
    SELECT
        region,
        SUM(revenue) AS revenue
    FROM pl_data
    GROUP BY region
)
SELECT
    region,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    ROUND(
        100.0 * revenue / SUM(revenue) OVER (),
        2
    ) AS revenue_contribution_pct
FROM region_sales
ORDER BY revenue DESC;

--17. Actual vs Budget by Financial Metric
SELECT
    financial_metric,
    TO_CHAR(SUM(actual),
        'FM₹99,99,99,99,99,99,990.00') AS total_actual,
    TO_CHAR(SUM(budget),
        'FM₹99,99,99,99,99,99,990.00') AS total_budget,
    TO_CHAR(SUM(actual) - SUM(budget),
        'FM₹99,99,99,99,99,99,990.00') AS variance,
    ROUND(
        100.0 * (SUM(actual) - SUM(budget))
        / NULLIF(SUM(budget), 0),
        2
    ) AS variance_pct
FROM pl_data
GROUP BY financial_metric
ORDER BY SUM(actual) - SUM(budget) DESC;

--18. Months that Exceeded Budget
SELECT
    year,
    EXTRACT(MONTH FROM date)::INT AS month_number,
    month,
    TO_CHAR(SUM(actual),
        'FM₹99,99,99,99,99,99,990.00') AS total_actual,
    TO_CHAR(SUM(budget),
        'FM₹99,99,99,99,99,99,990.00') AS total_budget,
    TO_CHAR(SUM(actual) - SUM(budget),
        'FM₹99,99,99,99,99,99,990.00') AS variance
FROM pl_data
GROUP BY year, EXTRACT(MONTH FROM date), month
HAVING SUM(actual) > SUM(budget)
ORDER BY year, EXTRACT(MONTH FROM date);

--19. Rank Products by Revenue within Each Region
SELECT
    region,
    product,
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue,
    RANK() OVER (
        PARTITION BY region
        ORDER BY SUM(revenue) DESC
    ) AS revenue_rank
FROM pl_data
GROUP BY region, product
ORDER BY region, revenue_rank;

--20. Top 3 Products by Revenue in Every Region
WITH product_sales AS (
    SELECT
        region,
        product,
        SUM(revenue) AS total_revenue
    FROM pl_data
    GROUP BY region, product
),
ranked AS (
    SELECT
        *,
        DENSE_RANK() OVER (
            PARTITION BY region
            ORDER BY total_revenue DESC
        ) AS product_rank
    FROM product_sales
)
SELECT
    region,
    product,
    TO_CHAR(total_revenue,
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue,
    product_rank
FROM ranked
WHERE product_rank <= 3
ORDER BY region, product_rank;

--21. Month-over-Month Revenue Change
WITH monthly_sales AS (
    SELECT
        year,
        EXTRACT(MONTH FROM date)::INT AS month_number,
        SUM(revenue) AS revenue
    FROM pl_data
    GROUP BY year, EXTRACT(MONTH FROM date)
),
monthly_with_previous AS (
    SELECT
        year,
        month_number,
        revenue,
        LAG(revenue) OVER (
            ORDER BY year, month_number
        ) AS previous_month_revenue
    FROM monthly_sales
)
SELECT
    year,
    month_number,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    TO_CHAR(previous_month_revenue,
        'FM₹99,99,99,99,99,99,990.00') AS previous_month_revenue,
    TO_CHAR(revenue - previous_month_revenue,
        'FM₹99,99,99,99,99,99,990.00') AS mom_change,
    ROUND(
        100.0 * (revenue - previous_month_revenue)
        / NULLIF(previous_month_revenue, 0),
        2
    ) AS mom_growth_pct
FROM monthly_with_previous
ORDER BY year, month_number;

--22. Year-over-Year Revenue Growth
WITH yearly_sales AS (
    SELECT
        year,
        SUM(revenue) AS revenue
    FROM pl_data
    GROUP BY year
),
yearly_with_previous AS (
    SELECT
        year,
        revenue,
        LAG(revenue) OVER (
            ORDER BY year
        ) AS previous_year_revenue
    FROM yearly_sales
)
SELECT
    year,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    TO_CHAR(previous_year_revenue,
        'FM₹99,99,99,99,99,99,990.00') AS previous_year_revenue,
    TO_CHAR(revenue - previous_year_revenue,
        'FM₹99,99,99,99,99,99,990.00') AS yoy_change,
    ROUND(
        100.0 * (revenue - previous_year_revenue)
        / NULLIF(previous_year_revenue, 0),
        2
    ) AS yoy_growth_pct
FROM yearly_with_previous
ORDER BY year;

--23. Cumulative Revenue over Time
WITH daily_sales AS (
    SELECT
        date,
        SUM(revenue) AS revenue
    FROM pl_data
    GROUP BY date
)
SELECT
    date,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    TO_CHAR(
        SUM(revenue) OVER (
            ORDER BY date
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ),
        'FM₹99,99,99,99,99,99,990.00'
    ) AS cumulative_revenue
FROM daily_sales
ORDER BY date;

--24. Products Above Overall Company Net Profit Margin
WITH product_margin AS (
    SELECT
        product,
        SUM(net_profit) / NULLIF(SUM(revenue), 0) AS margin
    FROM pl_data
    GROUP BY product
),
company_margin AS (
    SELECT
        SUM(net_profit) / NULLIF(SUM(revenue), 0) AS margin
    FROM pl_data
)
SELECT
    p.product,
    ROUND(100.0 * p.margin, 2) AS product_margin_pct
FROM product_margin p
CROSS JOIN company_margin c
WHERE p.margin > c.margin
ORDER BY p.margin DESC;

--25. Customers Above Average Customer Revenue
WITH customer_sales AS (
    SELECT
        customer,
        SUM(revenue) AS revenue
    FROM pl_data
    GROUP BY customer
)
SELECT
    customer,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue
FROM customer_sales
WHERE revenue > (
    SELECT AVG(revenue)
    FROM customer_sales
)
ORDER BY revenue DESC;

--26. Region-Product Combinations with Highest Net Profit
SELECT
    region,
    product,
    TO_CHAR(SUM(net_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_net_profit
FROM pl_data
GROUP BY region, product
ORDER BY SUM(net_profit) DESC
LIMIT 15;

--27. Highest-Revenue Transaction for Each Region
WITH ranked_transactions AS (
    SELECT
        transactionid,
        region,
        date,
        product,
        customer,
        revenue,
        ROW_NUMBER() OVER (
            PARTITION BY region
            ORDER BY revenue DESC
        ) AS rn
    FROM pl_data
)
SELECT
    transactionid,
    region,
    date,
    product,
    customer,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue
FROM ranked_transactions
WHERE rn = 1
ORDER BY region;

--28. Management KPI Summary
SELECT
    TO_CHAR(SUM(revenue),
        'FM₹99,99,99,99,99,99,990.00') AS total_revenue,
    TO_CHAR(SUM(gross_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_gross_profit,
    TO_CHAR(SUM(ebitda),
        'FM₹99,99,99,99,99,99,990.00') AS total_ebitda,
    TO_CHAR(SUM(net_profit),
        'FM₹99,99,99,99,99,99,990.00') AS total_net_profit,
    ROUND(
        100.0 * SUM(gross_profit)
        / NULLIF(SUM(revenue), 0), 2
    ) AS gross_margin_pct,
    ROUND(
        100.0 * SUM(ebitda)
        / NULLIF(SUM(revenue), 0), 2
    ) AS ebitda_margin_pct,
    ROUND(
        100.0 * SUM(net_profit)
        / NULLIF(SUM(revenue), 0), 2
    ) AS net_margin_pct
FROM pl_data;

--29. Regional Performance Scorecard
WITH regional AS (
    SELECT
        region,
        SUM(revenue) AS revenue,
        SUM(net_profit) AS net_profit,
        SUM(net_profit) / NULLIF(SUM(revenue), 0) AS net_margin
    FROM pl_data
    GROUP BY region
),
scored AS (
    SELECT
        *,
        RANK() OVER (ORDER BY revenue DESC) AS revenue_rank,
        RANK() OVER (ORDER BY net_profit DESC) AS profit_rank,
        RANK() OVER (ORDER BY net_margin DESC) AS margin_rank
    FROM regional
)
SELECT
    region,
    TO_CHAR(revenue,
        'FM₹99,99,99,99,99,99,990.00') AS revenue,
    TO_CHAR(net_profit,
        'FM₹99,99,99,99,99,99,990.00') AS net_profit,
    ROUND(100.0 * net_margin, 2) AS net_profit_margin_pct,
    revenue_rank,
    profit_rank,
    margin_rank,
    revenue_rank + profit_rank + margin_rank AS combined_rank_score
FROM scored

ORDER BY combined_rank_score ASC;
