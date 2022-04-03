--1) Создать таблицу employees -id. serial, primary key, -employee_name. Varchar(50), not null
create table employees1 (
	id serial primary key,
	employee_name varchar(50) unique not null
);


-- 2) Заполнить таблицу employees 70 строками
insert into employees1 (id, employee_name)
values (default, 'Ivan_Ivanov'),
	   (default, 'Petr_Petrov'),
	   (default, 'Dmitry_Dmitriev'),
	   (default, 'Kunskaya_Larisa'),
	   (default, 'Davidivich_Geoigiy'),
	   (default, 'Lapin_Eugeniy'),
	   (default, 'Pavlov_Igor'),
	   (default, 'Krasnovsky_Sergei'),
	   (default, 'Danilova_Vera'),
	   (default, 'Sodirenko_Maxim'),
	   (default, 'Sidorova_Mariya'),
	   (default, 'Drozdova_Anna'),
	   (default, 'Grekova_Nadezhda'),
	   (default, 'Sivenkov_Evgeniy'),
	   (default, 'Smancer_Mariya'),
	   (default, 'Lugovcov_Mihail'),
	   (default, 'Kozlov_Nikolai'),
	   (default, 'Vashkevich_Elizaveta'),
	   (default, 'Britov_Alexei'),
	   (default, 'Evmenov_Yuri'),
	   (default, 'Solenkov_Gennadiy'),
	   (default, 'Savitskaya_Vera'),
	   (default, 'Lysenko_Viktoriya'),
	   (default,'Zarembo_Sviatoslav'),
	   (default, 'Klys_Inna'),
	   (default, 'Volochko_Aleksandr'),
	   (default, 'Gordienko_Anatoly'),
	   (default, 'Churkina_Yulia'),
	   (default, 'Petrova_Galina'),
	   (default, 'Gorodnickiy_Sviatoslav'),
	   (default, 'Lipen_Eduard'),
	   (default, 'Stankevich_Elena'),
	   (default, 'Jakubenko_Viktor'),
	   (default, 'Karpushenko_Andrei'),
	   (default, 'Bobkova_Elizaveta'),
	   (default, 'Burdo_Aleksei'),
	   (default, 'Sakovec_Svetlana'),
	   (default, 'Heifec_Ella'),
	   (default, 'Ignatenko_Olga'),
	   (default, 'Beliaev_Vladimir'),
	   (default, 'Orlova_Anna'),
	   (default, 'Kollontai_Maria'),
	   (default, 'Gilevich_Angelina'),
	   (default, 'Shkoda_Matvei'),
	   (default, 'Levin_Boris'),
	   (default, 'Butko_Ivan'),
	   (default, 'Kovaleva_Evgenia'),
	   (default, 'Leonovich_Sergei'),
	   (default, 'Nikolaev_Igor'),
	   (default, 'Cvetaeva_Marina'),
	   (default, 'Pushkin_Aleksandr'),
	   (default, 'Lermontov_Mihail'),
	   (default, 'Kolas_Yakub'),
	   (default, 'Dostoevsky_Fedor'),
	   (default, 'Shopen_Frederic'),
	   (default, 'Mayakovski_Vladimir'),
	   (default, 'Gumilev_Nikolai'),
	   (default, 'Marshak_Samuil'),
	   (default, 'Shukshin_Vasiliy'),
	   (default, 'Severyanin_Igor'),
	   (default, 'Esenin_Sergei'),
	   (default, 'Tolstoy_Lev'),
	   (default, 'Ahmatova_Anna'),
	   (default, 'Chehov_Anton'),
	   (default, 'Turgenev_Ivan'),
	   (default, 'Nekrasov_Nikolai'),
	   (default, 'Ahmadulina_Bella'),
	   (default, 'Rozhdestvensky_Robert'),
	   (default, 'Nikolai_Rerih'),
	   (default, 'Kuprin_Aleksandr');
	   
select * from employees1;

-- 3)Создать таблицу salary -id. serial, primary key, - monthly_salary. int, not null
create table salary1 (
	id serial primary key,
	monthly_salary int not null
);



-- 4) Заполнить таблицу salary 16 строками
insert into salary1 (monthly_salary) 
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
select * from salary1;

--5) Создать таблицу employee_salary -id. serial, primary key, -employee_id. int, not null, unique - salary_id. int, not null
 
create table employee1_salary1 (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6) Наполнить таблицу employee_salary 40 строками: - в 10 строк из 40 вставить несуществующие employee_id 

insert into employee1_salary1 (employee_id, salary_id)
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (20, 3),
	   (73, 16),
	   (30, 16),
	   (45, 14),
	   (80, 5),
	   (57, 12),
	   (90, 2),
	   (62, 15),
	   (70, 8),
	   (72, 1),
	   (68, 6),
	   (75, 4),
	   (64, 11),
	   (76, 8),
	   (49, 5),
	   (8, 8),
	   (99, 1),
	   (59, 16),
	   (22, 16),
	   (105, 3),
	   (36, 8),
	   (43, 5),
	   (86, 6),
	   (38, 4),
	   (28, 5),
	   (18, 1),
	   (13, 10),
	   (93, 8),
	   (12, 13);

 select * from employee1_salary1;

--7) Создать таблицу roles -id. serial, primary key, -role_name. int, not null, unique
create table roles1 (
	id serial primary key,
	role_name int not null unique
);

select * from roles1; 

--8) Поменять тип столбца role_name с int на varchar(30)

alter table roles1 
alter column role_name type varchar(30) using role_name::varchar(30);

--9) Наполнить таблицу roles 20 строками

insert into roles1 (id, role_name)
values (default, 'Junior_Python_developer' ),
	   (default, 'Middle_Python_developer'),
	   (default, 'Senior_Python_developer'),
	   (default, 'Junior_Java_developer'),
	   (default, 'Middle_Java_developer'),
	   (default, 'Senior_Java_developer'),
	   (default, 'Junior_Manual_QA_Engineer'),
	   (default, 'Middle_Manual_QA_Engineer'),
	   (default, 'Senior_Manual_QA_Engineer'),
	   (default, 'Project_Manager'),
	   (default, 'Designer'),
	   (default, 'HR'),
	   (default, 'CEO'),
	   (default, 'Sales_Manager'),
	   (default, 'Junior_Automation_QA_Engineer'),
	   (default, 'Middle_Automation_QA_Engineer'),
	   (default, 'Senior_Automation_QA_Engineer');

select * from roles1;

--10) Создать таблицу roles_employee -id. serial primary key, - employee_id. int, not null, unique (внешний ключ
--для таблицы employeesб поле id) - role_id. int, not null (внешний ключ для таблицы roles, поле id) 

create table roles1_employee1 (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
		foreign key (employee_id)
			references employees1(id),
		foreign key (role_id)
			references roles1(id)
);
	   
select * from roles1_employee1;

--Наполнить таблицу roles_employee 40 строками (id, employee_id, role_id)

insert into roles1_employee1 (id, employee_id, role_id)
values (default, 7, 2),
	   (default, 20, 4),
	   (default, 3, 9),
	   (default, 5, 13),
	   (default, 23, 4),
	   (default, 11, 2),
	   (default, 10, 9),
	   (default, 22, 13),
	   (default, 21, 3),
	   (default, 34, 4),
	   (default, 6, 7),
	   (default, 13, 5),
	   (default, 15, 5),
	   (default, 17, 7),
	   (default, 19, 9),
	   (default, 25, 11),
	   (default, 29, 13),
	   (default, 27, 15),
	   (default, 40, 17),
	   (default, 31, 6),
	   (default, 38, 8),
	   (default, 33, 10),
	   (default, 36, 12),
	   (default, 48, 14),
	   (default, 46, 16),
	   (default, 50, 4),
	   (default, 44, 5),
	   (default, 52, 9),
	   (default, 42, 10),
	   (default, 55, 1),
	   (default, 57, 17),
	   (default, 59, 15),
	   (default, 67, 8),
	   (default, 65, 3),
	   (default, 63, 11),
	   (default, 8, 6),
	   (default, 1, 9),
	   (default, 69, 10),
	   (default, 70, 1),
	   (default, 61, 7);
	  



	 