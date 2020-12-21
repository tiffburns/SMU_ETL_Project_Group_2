CREATE TABLE "product_price" (
    id serial primary key,
    product_name varchar(100) NOT NULL,
    category_id int NOT NULL,
    store_id int NOT NULL,
    sale_price float NOT NULL,
    list_price float NOT NULL,
    scraped_date timestamp NOT NULL,
    on_sale boolean NOT NULL,
    url varchar(100) NOT NULL,
    availability boolean NOT NULL,
	last_updated timestamp default localtimestamp,
	foreign key (category_id) REFERENCES "lk_category" ("id"), 
	foreign key (store_id)REFERENCES "lk_store" ("id")
);

CREATE TABLE "lk_category" (
    id serial primary key,
    category_name varchar(100) NOT NULL,
    last_updated timestamp default localtimestamp
);

CREATE TABLE "lk_store" (
    id serial primary key,
    store_name varchar(100) NOT NULL,
    store_url varchar(100) NOT NULL,
    last_updated timestamp default localtimestamp
);

