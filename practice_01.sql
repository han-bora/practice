--����1. ����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ���
select  first_name �̸�,
        last_name ��
from employees;

--����2. ����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ���. (�����ȣ �ø���������)
select  employee_id �����ȣ,
        first_name �̸�,
        last_name ��,
        hire_date �Ի���
from employees
order by employee_id asc;

/*����3. ����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ���. 
(�Ի��� ������������ ����ϵ� �Ի����� ������ �����ȣ �ø��������� ���)*/
select  employee_id �����ȣ,
        first_name �̸�,
        last_name ��,
        hire_date �Ի���
from employees
order by hire_date desc, hire_date asc;

/*����4. ����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' �̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� ǥ�õǵ��� ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees;

/*����5. ����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' �̶�� 1���� �̸����� (�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �ֱٿ� �Ի��� ������� ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by hire_date desc;

/*����6. ����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' �̶�� 1���� �̸����� (�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ ������ ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id;

/*����7. ����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' �̶�� 1���� �̸����� (�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���.  �μ���ȣ�� ������� �Ի����� ���� ������� ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id asc, hire_date desc;

/*����8. ����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' �̶�� 1���� �̸����� (�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���.  �μ���ȣ�� ������� �Ի����� ���� ������� ����ϼ��� 
�� �μ���ȣ�� ���� ����� �μ���ȣ�� 0���� ǥ���մϴ�.*/
select  first_name || ' ' || last_name "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id asc, hire_date desc;

/*����9. ��ü������ ���� ������ ��ȸ�ϼ���. ������ �Ի���(hire_date)�� �ø�����(ASC)���� ���� ���Ӻ��� ����� �ǵ��� �ϼ���. 
�̸�(first_name last_name),  ����(salary),  ��ȭ��ȣ(phone_number), �Ի���(hire_date) �����̰� 
���̸���, ��������, ����ȭ-��ȣ��, ���Ի��ϡ� �� �÷��̸��� ��ü�� ������.*/
select  first_name || ' ' ||last_name �̸�,
        salary ����,
        phone_number "��ȭ-��ȣ",
        hire_date �Ի���
from employees
order by hire_date asc;

--����10. ������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�ϼ���.
select  last_name,
        salary
from employees
where salary >= 12000;

--����11. ������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�ϼ���. ��¼����� ������ ����������� ����մϴ�.
select  last_name,
        salary
from employees
where salary >= 12000
order by salary asc ; 


/*����12. ������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�ϼ���. 
������ ����������� ����ϰ� ������ ������ �Ի����� ���� ������� ����ϼ���*/
select  last_name,
        salary
from employees
where salary >= 12000;

/*����13.07/01/01 �� ���Ŀ� �Ի��� ������� �̸��� �Ի����� ����ϼ���
�Ի����� 03-07-2007 �� ����  ��, ��, �⵵(�����) �� ����ϼ���
�̸��� ��� �빮�ڷ� ����ϼ���*/
































