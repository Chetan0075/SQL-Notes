
customers
│
├── customer_id (PK)
│
▼

orders
│
├── order_id (PK)
├── customer_id (FK)
│
▼

order_details
│
├── order_detail_id (PK)
├── order_id (FK)
├── product_id (FK)
│
▼

products
│
└── product_id (PK)
