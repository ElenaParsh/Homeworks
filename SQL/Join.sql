-- 1. Вывести всех работников, чьи зарплаты есть в базе (вместе с зарплатами)

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
join salary on salary_id=salary.id; 

-- 2. Вывести всех работников у которых зарплаты меньше 2000

insert into salary (id, monthly_salary)
values (default, 100),
	    (default, 1500),
	    (default, 2000),
	    (default, 1800),
	    (default, 2200),
	    (default, 1350);

select * from salary;

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join salary on salary_id=salary.id
where monthly_salary<2000; 

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто ее получает)

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join salary on salary_id=salary.id 
where employee_name is null; 

-- 4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join salary on salary_id=salary.id 
where employee_name is null and monthly_salary <2000; 

-- 5. Найти всех работников, кому не начислена ЗП


insert into employees (id, employee_name)
values (default, 'Frederic_Shopen'),
		(default, 'Petr_Chaikovsky'),
		(default, 'MIchail_Glinka'),
		(default, 'Sergei_Prokofiev');
	
select * from employees;


select employee_name, monthly_salary  from employees 
full outer join 
employee_salary on employees.id=employee_salary.employee_id 
full outer join salary on salary_id=salary.id 
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id;

--7. Вывести только имена и должности JAVA разработчиков

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Java%';

--8. Вывести имена и должности только Python разработчиков

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Python%';

--9. Вывести имена и должности всех QA инженеров

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

--10. Вывести имена и должности manual QA инженеров

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Manual_QA%';

--11. Вывести имена и должности автоматизаторов QA

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Automation_QA%';

--12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join 
salary on employee_salary.salary_id=salary.id
join 
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join 
salary on employee_salary.salary_id=salary.id
join 
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join 
salary on employee_salary.salary_id=salary.id
join 
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков

select monthly_salary, role_name from salary 
 join 
employee_salary on salary.id=employee_salary.employee_id
full outer join 
roles_employee on employee_salary.employee_id =roles_employee.employee_id
right join roles on roles_employee.employee_id=roles.id
where role_name like '%Java%';

--16. Вывксти зарплаты Python разработчиков

select monthly_salary, role_name from salary 
 join 
employee_salary on salary.id=employee_salary.employee_id
full outer join 
roles_employee on employee_salary.employee_id =roles_employee.employee_id
right join roles on roles_employee.employee_id=roles.id
where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
 join
salary on employee_salary.salary_id=salary.id 
join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Junior_Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
 join
salary on employee_salary.salary_id=salary.id 
join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Middle_JS%';

--19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
join
salary on employee_salary.salary_id=salary.id 
full outer join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Senior_Java%';

--20. Вывести зарплаты Junior QA инженеров

select employee_name, monthly_salary, role_name from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
join
salary on employee_salary.salary_id=salary.id 
full outer join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Junior%' and role_name like '%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов  

select avg(monthly_salary)from employee_salary
left join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Junior%';

--22. Вывести сумму зарплат Java разработчиков

select sum(monthly_salary) from employee_salary
join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Java%';

--23. Вывести минимальную ЗП QA инженера

select min(monthly_salary) from employee_salary
join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) from employee_salary
join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

--25. Вывести количество QA инжереров

select count(role_name) from roles
where role_name like '%QA%';

--26. Вывести количество Middle специалистов

select count(role_name) from roles
where role_name like '%Middle%';

--27. Вывести количество разработчиков

select count(role_name) from roles
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков

select sum(monthly_salary) from employee_salary 
right join 
salary on employee_salary.salary_id=salary.id 
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id 
where role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary from employees 
join 
employee_salary on employee_salary.employee_id=employees.id 
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
join 
salary on employee_salary.salary_id=salary.id
order by monthly_salary asc; 

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary from employees 
join 
employee_salary on employee_salary.employee_id=employees.id 
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
join 
salary on employee_salary.salary_id=salary.id
where monthly_salary >all (select monthly_salary  from salary where monthly_salary <1700)
and 
monthly_salary <all (select monthly_salary from salary where monthly_salary>2300)
order by monthly_salary asc; 

--31. Вывести имена, должности и ЗП по возрастанию у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary from employees 
join 
employee_salary on employee_salary.employee_id=employees.id 
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
join 
salary on employee_salary.salary_id=salary.id
where monthly_salary <all(select monthly_salary from salary where monthly_salary=2300)
order by monthly_salary asc; 

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary from employees 
left join 
employee_salary on employee_salary.employee_id=employees.id 
left join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
left join 
roles on roles_employee.role_id=roles.id
join 
salary on employee_salary.salary_id=salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc; 
