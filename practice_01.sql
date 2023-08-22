--문제1. 사원의 사원번호 이름(first_name) 성(last_name) 입사일을 출력하세요
select  first_name 이름,
        last_name 성
from employees;

--문제2. 사원의 사원번호 이름(first_name) 성(last_name) 입사일을 출력하세요. (사원번호 올림차순으로)
select  employee_id 사원번호,
        first_name 이름,
        last_name 성,
        hire_date 입사일
from employees
order by employee_id asc;

/*문제3. 사원의 사원번호 이름(first_name) 성(last_name) 입사일을 출력하세요. 
(입사일 내림차순으로 출력하되 입사일이 같으면 사원번호 올림차순으로 출력)*/
select  employee_id 사원번호,
        first_name 이름,
        last_name 성,
        hire_date 입사일
from employees
order by hire_date desc, hire_date asc;

/*문제4. 사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 이라는 1개의 이름으로(이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호가 표시되도록 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
from employees;

/*문제5. 사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 이라는 1개의 이름으로 (이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 최근에 입사한 사람부터 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by hire_date desc;

/*문제6. 사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 이라는 1개의 이름으로 (이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 부서번호 순으로 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id;

/*문제7. 사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 이라는 1개의 이름으로 (이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 부서번호 올림차순으로 출력하세요.  부서번호가 같은경우 입사일이 늦은 사람부터 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id asc, hire_date desc;

/*문제8. 사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 이라는 1개의 이름으로 (이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 부서번호 올림차순으로 출력하세요.  부서번호가 같은경우 입사일이 늦은 사람부터 출력하세요 
단 부서번호가 없는 사람은 부서번호를 0으로 표시합니다.*/
select  first_name || ' ' || last_name "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id asc, hire_date desc;

/*문제9. 전체직원의 다음 정보를 조회하세요. 정렬은 입사일(hire_date)의 올림차순(ASC)으로 가장 선임부터 출력이 되도록 하세요. 
이름(first_name last_name),  연봉(salary),  전화번호(phone_number), 입사일(hire_date) 순서이고 
“이름”, “연봉”, “전화-번호”, “입사일” 로 컬럼이름을 대체해 보세요.*/
select  first_name || ' ' ||last_name 이름,
        salary 연봉,
        phone_number "전화-번호",
        hire_date 입사일
from employees
order by hire_date asc;

--문제10. 연봉이 12000 이상되는 직원들의 LAST_NAME 및 연봉을 조회하세요.
select  last_name,
        salary
from employees
where salary >= 12000;

--문제11. 연봉이 12000 이상되는 직원들의 LAST_NAME 및 연봉을 조회하세요. 출력순서는 연봉이 높은사람부터 출력합니다.
select  last_name,
        salary
from employees
where salary >= 12000
order by salary asc ; 


/*문제12. 연봉이 12000 이상되는 직원들의 LAST_NAME 및 연봉을 조회하세요. 
연봉이 높은사람부터 출력하고 연봉이 같으면 입사일이 빠른 사람부터 출력하세요*/
select  last_name,
        salary
from employees
where salary >= 12000;

/*문제13.07/01/01 일 이후에 입사한 사원들의 이름과 입사일을 출력하세요
입사일은 03-07-2007 과 같이  일, 월, 년도(서양식) 로 출력하세요
이름은 모두 대문자로 출력하세요*/
































