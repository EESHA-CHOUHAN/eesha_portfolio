CREATE TABLE CARS_DATA4 (
    name VARCHAR(100),
    year INTEGER,
    selling_price NUMERIC(20),
    km_driven INTEGER,
    fuel VARCHAR(20),
    seller_type VARCHAR(20),
    transmission VARCHAR(20),
    owner VARCHAR(20),
    mileage VARCHAR(50),
    engine VARCHAR(50),
    max_power VARCHAR(50),
    torque VARCHAR(50),
    seats INTEGER
);
------------------------------------------------------------------------------------
#To Import csv file..
"\\copy public.cars_data4 (name, year, selling_price, km_driven, fuel, seller_type, transmission, owner, mileage, engine, max_power, torque, seats) 
FROM 'C:/Users/eesha/DOWNLO~1/CARDEK~1.CSV' DELIMITER ',' CSV HEADER ;"

------------------------------------------------------------------------------------
1)TO READ DATA :-
select * from CARS_DATA4
------------------------------------------------------------------------------------
2)TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS(TOTAL COUNT OF DATASET):-
SELECT COUNT(*) FROM CARS_DATA4;

#TO REMOVE DUPLICATE VALUES(IF PRESENT)
SELECT DISTINCT * FROM CARS_DATA4;

SELECT COUNT(name) FROM CARS_DATA4;
------------------------------------------------------------------------------------
3) COUNT OF CARS AVAILABLE IN 2023:-

SELECT COUNT(name) FROM CARS_DATA4 WHERE year = 2023;    
#6
------------------------------------------------------------------------------------
4)  COUNT OF CARS AVAILABLE IN 2020, 2021, 2022:-
SELECT COUNT(name) FROM CARS_DATA4 WHERE year = 2020;  
#74

SELECT COUNT(name) FROM CARS_DATA4 WHERE year = 2021;   
#7

SELECT COUNT(name) FROM CARS_DATA4 WHERE year = 2022;    
#7
---GROUP BY---
SELECT COUNT(name) FROM CARS_DATA4 WHERE year in(2020,2021,2022,2023) group by year;    
------------------------------------------------------------------------------------
5)TO GET THE TOTAL OF CARS ALONG WITH THEIR RESPECTIVE YEARS:-

SELECT year, count(name) from CARS_DATA4
group by year
order by year DESC;         (to get years in descending order)

SELECT year, count(name) from CARS_DATA4
group by year
order by year ASC;          (to get years in Ascending order)
------------------------------------------------------------------------------------
6)RECORD OF DIESEL CARS AVAILABLE IN 2020:-

SELECT COUNT(name) FROM CARS_DATA4 WHERE YEAR=2020 AND fuel = 'Diesel';
 #20
------------------------------------------------------------------------------------
7) RECORD OF PETROL CARS AVAILABLE IN 2020:-

SELECT COUNT(name) FROM CARS_DATA4 WHERE YEAR=2020 AND fuel = 'Petrol';
#51
------------------------------------------------------------------------------------
8)RECORD OF BOTH DIESEL AND PETROL CARS IN 2020:-

SELECT COUNT(name) 
FROM CARS_DATA4 
WHERE YEAR = 2020 AND (fuel = 'Diesel' OR fuel = 'Petrol');
#71
------------------------------------------------------------------------------------
9)RECORD OF BOTH DIESEL AND PETROL CARS IN 2020 AND 2021:-

SELECT COUNT(name) 
FROM CARS_DATA4 
WHERE (YEAR = 2020 OR YEAR = 2021) AND (fuel = 'Diesel' OR fuel = 'Petrol');
#78
-----------------------------------------------------------------------------------
10)	TO GET A PRINT OF CARS HAVING FUEL AS PETROL, DIESEL, CNG COME BY ALL YEAR..

SELECT name, YEAR, fuel
FROM CARS_DATA4
WHERE fuel IN ('Petrol', 'Diesel', 'CNG');
-----------------------------------------------------------------------------------
11) TO GET A COUNT OF CARS HAVING FUEL AS PETROL, DIESEL, CNG COME BY ALL YEAR..

SELECT year, COUNT(name)
FROM CARS_DATA4
WHERE FUEL = 'Petrol'
GROUP BY YEAR
ORDER BY YEAR;


SELECT year, COUNT(name)
FROM CARS_DATA4
WHERE FUEL = 'Diesel'
GROUP BY YEAR
ORDER BY YEAR;


SELECT year, COUNT(name)
FROM CARS_DATA4
WHERE FUEL = 'CNG'
GROUP BY YEAR
ORDER BY YEAR;
-------------------------------------------------------------------------------------
12)WHICH YEAR HAD MORE THAN 100 CARS:-

SELECT YEAR, COUNT(name)
FROM CARS_DATA4
GROUP BY YEAR
HAVING COUNT(name) > 100
ORDER BY YEAR;
-------------------------------------------------------------------------------------
13)details of Count of cars between year 2015 and 2023:-

SELECT COUNT(name) FROM CARS_DATA4 WHERE YEAR BETWEEN 2015 AND 2023;
#4137

-------------------------------------------------------------------------------------
                      ---------------------------------
