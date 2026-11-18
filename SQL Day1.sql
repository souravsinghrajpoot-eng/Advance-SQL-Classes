--The Case of ITC--
--Create the data table for distributor to supplier product across different cities and region (id,name, city,region,phone.)
CREATE TABLE distributor (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
  DROP TABLE distributor;
  -- create a table name products with the coloum, product_id,product_name, brand,category text not null stockwholeno.,if missing than 0
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL UNIQUE,
    brand TEXT, 
    category TEXT NOT NULL,
    price REAL CHECK (price > 0),
    stock INTEGER DEFAULT 0
);

--create a table sales containong sellid unique productid rid,saledate,quantity integer >0 
CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributor_id INTEGER,
  sale_date TEXT,
  quantity INTEGER CHECK (quantity > 0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributor_id) REFERENCES distributor(id)
);

--text checking the coloums of all three tables--
PRAGMA table_info (distributor);
PRAGMA table_info (products);
PRAGMA table_info (sales);

--inserting the data according to variables--demo

INSERT INTO products VALUES (1, 'Aashirvad Atta 5kg', 'Aashirvad', 'Staples', 265, 120);
INSERT INTO products VALUES (2, 'Aashirvad Salt', 'Ashirvad', 'Staples', 28, 300);
INSERT INTO products VALUES (3 'Sunfeast Dark Fantansy', Sunfeast', 'Biscuits', 40, 500);
INSERT INTO products VALUES (3 'Sunfeast Dark Fantansy, 'Sunfeast', 'Biscuits', 40, 500);

    
  
  