-- 1. ������� ���� ����������, ��� �������� ���� � ���� (������ � ����������)

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
join salary on salary_id=salary.id; 

-- 2. ������� ���� ���������� � ������� �������� ������ 2000

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

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� �������� (�� ����, �� �� ������� ��� �� ��������)

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join salary on salary_id=salary.id 
where employee_name is null; 

-- 4. ������� ��� ���������� ������� ������ 2000, �� �������� �� ��� �� ��������

select employee_name, monthly_salary from employees 
join 
employee_salary on employees.id=employee_salary.employee_id 
right join salary on salary_id=salary.id 
where employee_name is null and monthly_salary <2000; 

-- 5. ����� ���� ����������, ���� �� ��������� ��


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

--6. ������� ���� ���������� � ���������� �� ���������

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id;

--7. ������� ������ ����� � ��������� JAVA �������������

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Java%';

--8. ������� ����� � ��������� ������ Python �������������

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Python%';

--9. ������� ����� � ��������� ���� QA ���������

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

--10. ������� ����� � ��������� manual QA ���������

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Manual_QA%';

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name  from employees 
join 
roles_employee on employees.id=roles_employee.employee_id
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Automation_QA%';

--12. ������� ����� � �������� Junior ������������

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

--13. ������� ����� � �������� Middle ������������

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

--14. ������� ����� � �������� Senior ������������

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

--15. ������� �������� Java �������������

select monthly_salary, role_name from salary 
 join 
employee_salary on salary.id=employee_salary.employee_id
full outer join 
roles_employee on employee_salary.employee_id =roles_employee.employee_id
right join roles on roles_employee.employee_id=roles.id
where role_name like '%Java%';

--16. ������� �������� Python �������������

select monthly_salary, role_name from salary 
 join 
employee_salary on salary.id=employee_salary.employee_id
full outer join 
roles_employee on employee_salary.employee_id =roles_employee.employee_id
right join roles on roles_employee.employee_id=roles.id
where role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
 join
salary on employee_salary.salary_id=salary.id 
join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Junior_Python%';

--18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
 join
salary on employee_salary.salary_id=salary.id 
join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Middle_JS%';

--19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
join
salary on employee_salary.salary_id=salary.id 
full outer join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Senior_Java%';

--20. ������� �������� Junior QA ���������

select employee_name, monthly_salary, role_name from employees 
 join 
employee_salary on employees.id=employee_salary.employee_id
join
salary on employee_salary.salary_id=salary.id 
full outer join
roles_employee on employee_salary.employee_id =roles_employee.employee_id
 join roles on roles_employee.employee_id=roles.id
where role_name like '%Junior%' and role_name like '%QA%';

--21. ������� ������� �������� ���� Junior ������������ 

select avg(monthly_salary)from employee_salary
left join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Junior%';

--22. ������� ����� ������� Java �������������

select sum(monthly_salary) from employee_salary
join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%Java%';

--23. ������� ����������� �� QA ��������

select min(monthly_salary) from employee_salary
join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

--24. ������� ������������ �� QA ���������

select max(monthly_salary) from employee_salary
join salary on employee_salary.employee_id=salary.id
 join
roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

--25. ������� ���������� QA ���������

select count(role_name) from roles
where role_name like '%QA%';

--26. ������� ���������� Middle ������������

select count(role_name) from roles
where role_name like '%Middle%';

--27. ������� ���������� �������������

select count(role_name) from roles
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������

select sum(monthly_salary) from employee_salary 
right join 
salary on employee_salary.salary_id=salary.id 
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
right join 
roles on roles_employee.role_id=roles.id 
where role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary from employees 
join 
employee_salary on employee_salary.employee_id=employees.id 
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join 
roles on roles_employee.role_id=roles.id
join 
salary on employee_salary.salary_id=salary.id
order by monthly_salary asc; 

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

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

--31. ������� �����, ��������� � �� �� ����������� � ������� �� ������ 2300

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

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� ������� �� ����� 1100, 1500, 2000

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