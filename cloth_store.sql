create database fashion_store;
create table fashion_store.items (
             id int,
             cloth_type text,
             available_for text,
             brand text,
             MRP int,
             size int,
             color text);
             
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 1, "t-shirt", "Men" , "LP", 900, 38, "White");
insert into fashion_store.items (id, cloth_type, available_for, brand, MRP, size, color) values ( 2, "Jean", "Men" , "LP", 1900, 34, "Black");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 3, "t-shirt", "women" , "LP", 1000, 28, "Red");
insert into fashion_store.items (id, cloth_type, available_for, brand, MRP, size, color) values ( 4, "skirt", "women" , "zara", 2200, 32, "Grey");
insert into fashion_store.items (id, cloth_type, available_for, brand, MRP, size, color) values ( 5, "shirt", "Men" , "raymond", 2900, 36, "White");
insert into fashion_store.items (id, cloth_type, available_for, brand, MRP, size, color) values ( 6, "shirt", "women" , "lotus", 1500, 30, "Black");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 7, "3 piece suit", "boy" , "loro", 2100, 40, "red");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 8, "t-shirt", "girl" , "aruru", 500, 38, "white");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 9, "trousers", "Men" , "LP", 1200, 30, "black");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 10, "jean", "women" , "only", 2300, 32, "blue");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 11, "kurti", "women" , "libas", 1200, 28, "black");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 12, "kurta set", "Men" , "indiyana", 1800, 34, "black");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 13, "jean", "girl" , "yoyo", 1900, 38, "gray");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 14, "jean", "boy" , "yoyo", 1000, 40, "black");
insert into fashion_store.items(id, cloth_type, available_for, brand, MRP, size, color) values ( 15, "top", "women" , "aadi", 900, 28, "off white");


/*--------------------- change table column name -------------------------*/
ALTER TABLE fashion_store.items 
RENAME COLUMN available_for to category;

/*--------------------- view table -------------------------*/
select * from fashion_store.items;

/*--------------------- order table by price -------------------------*/
select * from fashion_store.items
order by MRP;

/*--------------------- show number of items per category -------------------------*/
select category, count(cloth_type) as count_type from fashion_store.items
group by category;
