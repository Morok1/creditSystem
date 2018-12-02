SELECT * FROM application;

SELECT * FROM application WHERE creditinfoid = 1;

SELECT DISTINCT  * from application;


select * from application order by  application.reg_date;
select * from application limit 4;
select * from application limit 4;
select min(reg_date) as minregdate from  application;
select max(reg_date) as maxregdate from  application;

select naturalperson_id from application where reg_date is not null ;
select * from naturalperson;
select count(*) from naturalperson;
select count(*) from naturalperson where firstname = 'Zhenya';
select avg(id)  from naturalperson where firstname = 'Vitya';
select sum(id) from naturalperson where firstname = 'Vitya';
select sum(id) from naturalperson where firstname like '%it%';
select sum(id) from naturalperson where firstname like '__t%';
SELECT * FROM naturalperson WHERE firstname LIKE '%Sergey%';
SELECT * FROM naturalperson WHERE firstname LIKE 'Z%';
select * FROM naturalperson where firstname in ('Zhenya', 'Vitya');
select * FROM naturalperson where firstname not in ('Zhenya', 'Vitya');

select * from naturalperson where middlename in(select middlename from naturalperson where middlename ='Viktorovich');
select * from naturalperson where id between 2 and 7;
select id as id, lastname as l, middlename as m, firstname as f from naturalperson where id  between 2 and 7;

select * from application full outer join   creditinfo c2 on application.creditinfoid = c2.id;
select * from application left join   creditinfo c2 on application.creditinfoid = c2.id;
select * from application right outer join   creditinfo c2 on application.creditinfoid = c2.id;
select * from application full outer join   creditinfo c2 on application.creditinfoid = c2.id;

select * from naturalperson  inner join application app on naturalperson.id = app.naturalperson_id where  naturalperson.firstname='Zhenya ';
select * from naturalperson  left join application app on naturalperson.id = app.naturalperson_id where  naturalperson.firstname='Zhenya ';
select * from naturalperson  right join  application app on naturalperson.id = app.naturalperson_id where  naturalperson.firstname='Zhenya ';
select * from naturalperson full outer join application app on naturalperson.id = app.naturalperson_id;
select firstname from naturalperson union select middlename from employee;
select id from application  union select id from credittype order by id;


select count(firstname), firstname from naturalperson group by firstname order by count(firstname) desc ;

select np.firstname from application as app,
  naturalperson as np, employee as em where app.naturalperson_id = np.id
and app.employeetypeid
