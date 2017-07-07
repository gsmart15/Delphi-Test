USE master
GO
CREATE TABLE range
( range_id INT PRIMARY KEY,
  range_desc VARCHAR(30) NOT NULL
)

GO
CREATE TABLE range_element
( element_id INT PRIMARY KEY,
  range_id INT NOT NULL,
  range_desc varchar(30),
  size_desc varchar(10),
  color_desc varchar(10),
  qty INT,
  CONSTRAINT FK_range_element_range_id FOREIGN KEY (range_id)
  REFERENCES range(range_id) ON DELETE CASCADE    
    ON UPDATE CASCADE  
)
GO

CREATE TABLE range_sub_element(
	subelement_id int PRIMARY KEY,
	element_id int NOT NULL,
	range_id int NOT NULL,
	subelement_name varchar(30) NULL,
	FOREIGN KEY (range_id) REFERENCES range(range_id) ON DELETE NO ACTION  
    ON UPDATE NO ACTION,
	FOREIGN KEY (element_id) REFERENCES range_element(element_id) ON DELETE NO ACTION    
    ON UPDATE NO ACTION
)
GO

INSERT range (range_id, range_desc) VALUES (1, N'Dairy Products')
GO
INSERT range (range_id, range_desc) VALUES (2, N'Electronics')
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (10000, 1, N'Milk', N'Litres', N'White', 3010)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (10001, 1, N'Butter', N'Kilogram', N'Yellow', 150)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (10002, 1, N'Cheese', N'Kilogram', N'White', 375)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (20000, 1, N'Ice Cream', N'Blocks', N'White', 500)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (20001, 1, N'Yogurt', N'Packets', N'Yellow', 215)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (30000, 2, N'Mobile', N'5.5 Inches', N'Metallic', 75)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (30001, 2, N'Wrist Watches', N'Medium', N'Silver', 175)
GO
INSERT range_element (element_id, range_id, range_desc, size_desc, color_desc, qty) VALUES (30002, 2, N'Smart TV', N'43 Inches', N'Black', 201)
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (10001, 10000, 1, N'Amul Milk')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (10002, 10000, 1, N'Heritage Milk')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (20000, 10001, 1, N'Warrnambool Butter')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (20001, 10002, 1, N'Warrnambool Cheese')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (20002, 20000, 1, N'Baskin-Robbins')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (20003, 20001, 1, N'Warrnambool Yogurt')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (20004, 10001, 1, N'Amul Butter')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (30000, 30002, 2, N'LG Smart TV')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (30001, 30000, 2, N'Apple Iphone')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (30002, 30001, 2, N'Rado Watch')
GO
INSERT range_sub_element (subelement_id, element_id, range_id, subelement_name) VALUES (30003, 30000, 2, N'Samsung Galaxy')
GO