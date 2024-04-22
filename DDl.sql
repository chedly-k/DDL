create table customer (
    customer_id varchar(20)  Primary key ,
    customer_name varchar(20) NOT NULL , 
    customer_tel number  ,

);
create table product (
    product_id varchar(20) Primary key ,
    product_name varchar(20) NOT NULL ,
    price number CHECK (price > 0) ,
);
create table orders (
    customer_id FOREIGN KEY REFERENCES customer (customer_id),
    product_id FOREIGN KEY REFERENCES product (product_id),
    Quantity number ,
    Total_amount number ,
);
alter table product add (
    Category varchar (20),
);
alter table orders ADD (
    orderDate date default Sysdate
);



