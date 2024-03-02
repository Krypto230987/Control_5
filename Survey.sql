-- 1
SELECT
  product.name,
  SUM(receipt.quantity) AS total_quantity
FROM receipts AS receipt
JOIN products AS product
  ON receipt.product_id = product.id
WHERE
  receipt.warehouse_id = 1 AND receipt.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  product.name
ORDER BY
  product.name;
  -- 2
  
  SELECT
  product.name,
  SUM(issue.quantity) AS total_quantity
FROM issues AS issue
JOIN products AS product
  ON issue.product_id = product.id
WHERE
  issue.warehouse_id = 1 AND issue.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  product.name
ORDER BY
  product.name;
   -- 3
   
SELECT
  categorie.name,
  SUM(receipt.quantity) AS total_quantity
FROM receipts AS receipt
JOIN products AS product
  ON receipt.product_id = product.id
JOIN categories AS categorie
  ON product.category_id = categorie.id
WHERE
  receipt.warehouse_id = 1 AND receipt.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  categorie.name
ORDER BY
  categorie.name;
  -- 4
  
  SELECT
  COALESCE(brand.name, 'Без бренда') AS brand_name,
  SUM(receipt.quantity) AS total_quantity
FROM receipts AS receipt
JOIN products AS product
  ON receipt.product_id =  product.id
LEFT JOIN brands AS brand
  ON product.brand_id = brand.id
WHERE
  receipt.warehouse_id = 1 AND receipt.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  brand_name
ORDER BY
  brand_name;
  -- 5
  
  SELECT
  product.name,
  _stock.quantity
FROM stock AS _stock
JOIN products AS product
  ON _stock.product_id = product.id,receipts AS receipt
WHERE
  _stock.warehouse_id = 1 and receipt.date BETWEEN '2023-01-10' AND '2023-01-10'
ORDER BY
  product.name;
  -- 6
  
SELECT
  product.name,
  SUM(receipt.quantity) AS total_quantity
FROM receipts AS receipt
JOIN products AS product
  ON receipt.product_id = product.id
WHERE
  receipt.supplier_id = 1 AND receipt.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  product.name
ORDER BY
  product.name;
  -- 7
  
  SELECT
  product.name,
  SUM(receipt.quantity) AS total_quantity
FROM receipts AS receipt
JOIN products AS product
  ON receipt.product_id = product.id
WHERE
  receipt.supplier_id = 1 AND receipt.warehouse_id = 1 AND receipt.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  product.name
ORDER BY
  product.name;
  -- 8
  
  SELECT
  product.name,
  SUM(issue.quantity) AS total_quantity
FROM issues AS issue
JOIN products AS product
  ON issue.product_id = product.id
WHERE
  issue.supplier_id = 1 AND issue.warehouse_id = 1 AND issue.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  product.name
ORDER BY
  product.name;
  -- 9
  
  SELECT
  supplier.name,
  SUM(receipt.quantity) AS total_quantity
FROM receipts AS receipt
JOIN suppliers AS supplier
  ON receipt.supplier_id = supplier.id
WHERE
  receipt.product_id = 1 AND receipt.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  supplier.name
ORDER BY
  total_quantity DESC;
  -- 10
  
  SELECT
  supplier.name,
  SUM(issue.quantity) AS total_quantity
FROM issues AS issue
JOIN suppliers AS supplier
  ON issue.supplier_id = supplier.id
WHERE
  issue.product_id = 1 AND issue.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  supplier.name
ORDER BY
  total_quantity DESC;
  -- 11
  
  SELECT
  product.name,
  SUM(transfer.quantity) AS total_quantity
FROM transfers AS transfer
JOIN products AS product
  ON  transfer.product_id = product.id
WHERE
   transfer.to_warehouse_id = 1 AND  transfer.date BETWEEN '2023-01-01' AND '2023-01-10'
GROUP BY
  product.name
ORDER BY
  product.name;
  
  
  
  
  