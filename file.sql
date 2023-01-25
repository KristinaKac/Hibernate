create table PERSONS (
    name varchar(255),
    surname varchar(255),
    age int check (age > 0 AND age < 100),
    phone_number varchar(20),
    city_of_living varchar(255),
    primary key (name, surname, age)
);
INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Ivan', 'Belov', 22, '89995556677', 'Moscow');
INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Masha', 'Kruglova', 32, '89995556678', 'Kaluga');
INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Katya', 'Ivanova', 40, '89995556679', 'Ekaterinburg');
INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Sonya', 'Chernova', 18, '89995556670', 'Moscow');
INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Kolya', 'Frolov', 24, '89995556671', 'Smolensk');
INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Ivan', 'Chernykh', 28, '89995556672', 'Moscow');

SELECT name, surname from PERSONS WHERE city_of_living = 'Moscow';

SELECT * from PERSONS WHERE age > 27 ORDER BY age desc;