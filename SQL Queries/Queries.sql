Select
ct.category_name,
avg(pr.list_price) as avg_price
From
product_price pr
join lk_category ct on pr.category_id=ct.id
group by ct.category_name
order by avg_price desc
;

Select
st.store_name,
avg(pr.list_price) as avg_price
From
product_price pr
join lk_store st on pr.store_id=st.id
group by st.store_name
order by avg_price desc
;

Select
st.store_name,
ct.category_name,
avg(pr.list_price) as avg_price
From
product_price pr
join lk_store st on pr.store_id=st.id
join lk_category ct on pr.category_id=ct.id
group by st.store_name, ct.category_name
order by avg_price desc
;

SELECT
pr.product_name,
pr.list_price,
st.id
FROM
product_price pr
JOIN lk_store st ON pr.store_id=st.id

SELECT
pr.product_name, 
pr.availability,
ct.id
FROM
product_price pr
JOIN lk_category ct ON pr.category_id=ct.id
;

SELECT
pr.product_name, 
pr.list_price,
st.id,
st.store_name
FROM
product_price pr
JOIN lk_store st ON pr.store_id=st.id
WHERE store_name = 'Wilson'
;

SELECT 
SUM(list_price)
FROM 
product_price
WHERE
availability = 'True'
;

SELECT
pr.product_name, 
pr.url,
ct.category_name
FROM
product_price pr
JOIN lk_category ct ON pr.category_id=ct.id
ORDER BY category_name
;
}
