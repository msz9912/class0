-- sal 컬럼을 기준으로 오름차순 - 작은 것부터 큰 것 순서로 
select * from emp
order by sal;

select * from emp
order by asc;

-- sal 컬럼 기준으로 내림차순 - 큰 것부터 순서로
select * from emp
order by sal desc;

-- 가장 먼저 입사한 순서로 출력
select * from emp
order by hiredate asc;

select * from emp
order by ename desc;

-- 부서번호로 오름차순, 겹치면 sal 내림차순
select * from emp
order by deptno asc, sal desc;
-- deptno asc, sal desc; 이 상황에서 연봉이 같으면 사원번호 내림차순 정렬

select * from emp
order by deptno asc, sal desc, empno desc;

--
select distinct deptno from emp;

select * from emp
where deptno = 30;

select *
from emp
where deptno = 30
order by sal;
--

-- sal이 1600인 사람만 출력
select * from emp where sal = 1600;

-- 초과
select * from emp where sal > 1600;

-- 이상
select * from emp where sal >= 1600; -- = 항상 오른쪽

-- 이하
select * from emp where sal <= 1600;

-- 부정
select * from emp where deptno != 30; -- ! 아니다
select * from emp where deptno <> 30; -- 같지 않다

-- AND
select * from emp where deptno = 30 and job = 'SALESMAN';
select *
from emp
where
    deptno = 30 and job = 'SALESMAN';
    
-- OR
/*
emp 테이블에서
부서번호deptno가 30 이거나 (또는) 사원직책job이 점원CLERK인 사원의
모든 정보를 출력하시오
*/
select * from emp where deptno = 30 or job = 'CLERK';

/*
JOB이 CLERK이거나 sal이 2000 초과면서 deptno가 10인 사원 조최
*/
select * from emp where job = 'CLERK' or sal > 2000 and deptno = 10;

select * from emp where not (job = 'CLERK' or ( sal > 1000 and deptno = 10 ));

/*
deptno != 30, deptno <> 30, deptno ^= 30, not deptno = 30
*/

-- 월급 2000이상 4000미만인 사원을 출력하시오
-- select * from emp where 2000 sal <= sal and < 4000;
select * from emp where sal >= 2000 and sal < 4000;

-- 부서번호 10 또는 20인 사원만 출력하시오
select * from emp where deptno = 10 or deptno = 20;

select * from emp where deptno in ( 10, 20 );

-- 부서번호 10 또는 20이 아닌 사원만 출력하시오
select * from emp where deptno not in ( 10, 20 );

--
select *
    from emp
where deptno in ( 10 , 20 );

select *
    from emp
    where sal >= 2500
    and job = 'ANALYST';
    
select * from emp where deptno = 20
or job = 'SALESMAN';

select * from emp where empno = 7499 and deptno = 30;

select * from emp where empno = 7782;

select * from emp order by empno desc;

select * from emp order by empno;

select * from emp where deptno = 10 or deptno = 20;
--

--1. 부서번호 10번인 사람들을 출력하시오
select * from emp where deptno = 10;

--2. 부서번호 10번이 아닌 사람들을 출력하시오
select * from emp where not deptno = 10;
select * from emp deptno != 10;
select * from not (deptno = 10);
select * from emp deptno <> 10;

--3. 급여가 3000 이상인 사람들을 출력하시오
select * from emp where sal >= 3000;

--4. 급여가 1500~3000 사이(포함)의 사람들을 출력하시오
select * from emp where sal >= 1500 and sal <= 3000;

--5. 부서벉호 10번인 사람 중 급여 2000 이상인 사람을 출력하시오
select * from emp where deptno = 10 and sal >= 2000;

--6. 부서번호 30번 중 1500~3000 사이(미포함)인 사람을 출력하시오
select * from emp where deptno = 30 and sal > 1500 and sal < 3000;

--7. 부서번호 30번 중 1500~3000 사이(미포함)인 사람을 연봉이 작은 순으로 출력, 연봉이 같은 경우 이름이 빠른 순으로 출력하시오
select * from emp where deptno = 30 and ( sal > 1500 and sal < 3000)
order by sal, ename;

--8. 부서번호 20,30번 중 1500~3000 사이(미포함)인 사람을 연봉이 작은 순으로 출력, 연봉이 같은 경우 이름이 빠른 순으로 출력하시오
-- 같은 컬럼이 = 과 or로 연결되어 있는 경우 IN으로 변경할 수 있다
select * from emp where deptno in ( 20, 30 )
and ( sal > 1500 and sal < 3000 )
order by sal, ename;

--9. 부서번호가 20 또는 30이고 급여가 1500 이상인 직원의 이름과 급여를 급여 오름차순으로 출력하시오
select * from emp where deptno in ( 20, 30 )
and sal > 1500
order by sal;

-- between
select * from emp where sal between 2000 and 3000;
select * from emp where sal between 2000 and 3000 and deptno = 20;

select * from emp where sal between 2000 and 3000;
select * from emp where sal not between 2000 and 3000;

-- 2000 초과, 3000 미만
select * from emp where sal between 2000 and 3000
and sal != 2000
and sal != 3000;

-- like
-- 첫번째 상관없음
-- 두번째 무조건 L
-- 그 이후 상관없음
select * from emp where ename like 'S%';
select * from emp where ename like '_L%';
select * from emp where ename like '%AM%';
select * from emp where ename like '%A%';
select * from emp where ename not like '%A%';
select * from emp where ename like '%A$S%' or ename like 'S%A%';
select * from emp where ename like '%A%'; or ename like '%A%';

-- null
select * form emp
where comm > 400;

select * from emp
where comm is null;

select * from emp
where comm is not null;

-- union
select * from emp where deptno = 10;
select * from emp where deptno = 20;

select * from emp where deptno = 10
union
select * from emp where deptno = 20;

select * from emp where deptno = 10
union
select * from emp where deptno = 10;

-- union all
select * from emp where deptno = 10
union all
select * from emp where deptno = 10;

select empno from emp
union all
select sal from emp;

-- Q2. 131p
select empno, ename, job, sal, deptno from emp
where deptno = 30
and job in ('SALESMAN');

-- 부서 10번을 사원번호 내림차순으로 desc 정렬하여 출력하시오
select * from emp where deptno = 10 order by deptno desc;

-- 부서 20번을 사원번호 오름차순으로 asc 정렬하여 출력하시오
select * from emp where deptno = 20 order by deptno asc;

-- 부서 30번을 사원번호 오름차순으로 asc 정렬하여 출력하시오
select * from emp where deptno = 30 order by deptno asc;

-- 아직 안 배운 기술로 order by 적용하는 가능
select * from (
    delect * from emp ~
    
-- Q5. 131p
-- 이름, 번호, 급여, 부서 출력, 이름에 E 포함, 부서 30, 급여 1000~2000가 아닌 !
select ename, empno, sal, deptno from emp
where ename like '%E%'
and deptno = 30
and sal not between 1000 and 2000;

select ename, empno, sal, deptno
from emp
where
    ename like '%E%'
    and deptno = 30
    and not (sal >= 1000 and sal <= 2000); 
    
select ename, empno, sal, deptno
from emp
where
    ename like '%E%'
    and deptno = 30
    and sal != 1000;
   
-- Q6. 131p
-- 추가수당 null, mgr null이 아닌, 직책은 m,c 이름에 두번째 글씨가 L이 아닌 !
select * from emp where ( comm is null and job in ( 'MANAGER', 'CLERK' ))
and ename not like '_L%';

select * from emp
where
    comm is null
    and mgr is not null
    and job in ('MANAGER', 'CLERK')
    and ename not like '_L%';

-- upper, lower
select ename, upper(ename), lower(ename) from emp;

select ename from emp
where lower(ename) like lower('%aM%');

select upper('aBc') from dual;
select upper('aBc'), lower ('aBc') from dual;
select upper('aBc'), lower ('aBc'), upper(lower('aBc')) from dual;
select * from emp where upper(ename) like upper('%SCOTT%');

--
select ename, length(ename) from emp;

select ename from emp
where length(ename) = 5;

select * from emp
where length(ename) = 5;
--

select lengthb('a'), lengthb('한') from dual;

desc emp;

--substr
select job, substr(job, 1, 2), substr(job, 3, 2), substr(job, 5) from emp;

select job, substr(job, -3, 2) from emp;

select ename, substr(ename, -3, 2) from emp;    !

select ename, substr(ename, -4, 2) from emp;

-- 사원 이름을 두 번째부터 3글자만 출력하시오
select ename, substr(ename, 2, 3) from emp;

-- 실제 글씨 길이보다 넘어가면 null
select ename, substr(ename, -30, 2) from emp;

-- 사원 이름의 마지막 3글자만 출력하시오
select ename, substr(ename, -3, 10) from emp;

select ename, substr(ename, -3) from emp;

select ename, substr(ename, -3, 3) from emp;

select '010-1234-5678' as replace_berore,
    replace('010-1234-5678', '-', '') as replace_1,
    replace('010-1234-5678', '-') as replace_2
    from dual;
    
select 'a-b-c',
    replace('a-b-c', '-', 'g'),
    replace('a-b-c', '-'),
    replace('a-b-c', '-', '')
    from emp;
    
-- ename의 E를 '-' 모두 교체
select ename, replace(ename, 'E', '-') from emp; 
select ename, replace(ename, 'TT', '-3131351531') from emp;

--
select ename, replace(ename, 'E', '바보') from emp;
select job, replace(job, 'A', '메롱') from emp;
--

-- lpad
-- 모자르면 채우고, 넘어가면 자르고
select lpad(ename, 10, '+') from emp;
select lpad(ename, 10, ' ') from emp;
select lpad(ename, 5, '+') from emp;

-- rpad
-- 모자르면 채우고, 넘어가면 자르고
select rpad(ename, 10, '+') from emp;

-- 문제 1.
-- ename 앞에 두글자만 출력하시오
select ename, substr (ename, 1, 2) from emp;

select ename, substr(ename, 1, 2), rpad(ename, 2) from emp;


-- 문제 2.
-- 앞에 두 글자만 원본을 출력하고 나머지는 4개의 *로 표시하시오
select rpad(substr (ename, 1, 2), 6, '*') from emp;

-- 문제 3.
-- 사원 이름 두 글자만 보이고 나머지는 *로. 단, 원래 이름 길이 만큼 표시하시오
-- 예 : WA**, SM***
select rpad(substr (ename, 1, 2), length(ename), '*') from emp;

select
    ename,
    rpad(
        substr(ename, 1, 2),
        length(ename), 
        '*'
    )
from emp;

--
select lpad(substr (job, 1, 2), length(job), '@') from emp;

select lpad(substr (ename, -2), length(ename), '*') from emp;
--

-- 심화 문제
-- job을 총 20자 중 가운데 정렬하시오
select
lpad(rpad(job, (length(job) + 20) / 2, '*'), 20, '*')
as job_centered
from
    emp;

-- trim
select 'ab' || 'cd' || 'fd' from dual;
select empno || ' : ' || ename from emp;
select '  ab c  ', trim('  ab c  ') from dual;

-- round
select
    round(14.46), -- 하나만 입력하면 소수점 첫 째자리 반올림 
    round(14.46, 1), -- 소수점 두 번째 자리 1
    round(14.46, -1) -- 음수일 때 정수로 거슬러 올라감
from dual;

select
    trunc(14.46),
    trunc(14.46, 1),
    trunc(14.46, -1),
    trunc(-14.46)
from dual;

select
    ceil(3.14),
    floor(3.14),
    ceil(-3.14),
    floor(-3.14),
    trunc(-3.14)
from dual;

select 7 / 3 from dual;
select 7 / 0 from dual;
select 6 / 2 from dual;
select 54 / 7 from dual;
select 193 / 8 from dual;
select 532 / 4 from dual;

select mod (7, 3) from dual;
select mod (8, 3) from dual;
select mod(6, 3), mod(7, 3), mod(8, 3), mod(9, 3)from dual;
select mod (684689, 3) from dual;
select mod (9.3, 3) from dual;

select sysdate from dual;
select sysdate-15 from dual;
select sysdate+15 from dual;

select empno, empno + '1000' from emp;
select empno, empno + 'abcd' from emp;
select 'a' + 'b' from dual;
select 'a' || 'b' from dual;
select 'a' || 123 from dual;

select to_char(sysdate, 'yyyy"년" mm"월" dd"일" hh24"시" mi"분" ss"초"') from dual;

select to_char(sysdate, 'yy/mm/dd') from dual;

select to_char(hiredate, 'yyyy"년" mm"월" dd"일" hh24"시" mi"분" ss"초"') from emp;

select to_date('2025-05-15', 'yyyy-mm-dd')-to_date('2025-05-13', 'yyyy-mm-dd')from dual;
select to_date('2025-05-13', 'yyyy-mm-dd') from dual;

select * from emp;

select * from emp
where hiredate > to_date('1981-06-01', 'yyyy-mm-dd');

select * from emp
where hiredate > '81-06-01';

select
    sal *12 + comm,
    sal *12 + nvl(comm, 0)
from emp;

--
select to_date('2025-04-13', 'yyyy-mm-dd')from dual;
select to_date('2025-05-13', 'yyyy-mm-dd')from dual;
select to_date('2025-05-14', 'yyyy-mm-dd')from dual;
select to_date('2025-05-15', 'yyyy-mm-dd')from dual;
select to_date('2025-05-16', 'yyyy-mm-dd')from dual;
--

-- 각 사원의 연봉을 출력하고
-- 월급 * 12 + comm
-- ename, total_pay 출력하시오
select ename, sal * 12 + nvl(comm,0) as total_pay from emp;

--
select comm, nvl(comm,4657) from emp;

--

-- decode
select empno, ename, job, sal,
    decode (job,
            'MANAGER', sal*1.1,
            'SALESMAN', sal*1.05,
            'ANALYST', sal,
            sal*1.03) as upsal
from emp;

-- case문

select empno, ename, job, sal,
    case job
        when 'MANGER' then sal*1+1
        when 'SALEMAN' then sal*1.05
        when 'ANALYST' then sal
        else sal*1.03
    end as upsal
    from emp;

-- nvl 사용하지 않고
-- decode, case로 nvl이랑 동일한 결과 출력하시오
select nvl(comm, -1),
decode (comm, null, -1, comm) as decode,
case comm when null then -1 else comm
end as comm from emp;

-- where comm = null
select comm,
    case
        when comm is null  then '해당 없음'
        when comm is null  then 'X  '
        when comm = 0 then '0원'
        when comm > 0 then '수당 :' || comm
    end as end
from emp;

select empno, ename, comm,
    case
     when comm is null then '해당 없음'
     when comm = 0 then '수당없음'
     when comm > 0 then '수당 :' || comm
    end as comm_text
    from emp;
 
-- Q1. 179p
-- 사원 이름 5글자 이상 6글자 미만 사원 출력
-- masking_empno열에 사원 번호 앞 두 자리 외 뒷자리 *로 출력
-- masking_ename열에 사원 이름 첫 글자 빼고 나머지 *로 출력
select empno, rpad(substr (empno, 1, 2), length(empno), '*') as MASKING_EMPNO, 
       ename, rpad(substr (ename, 1, 1), length(ename), '*') as MASKING_ENAME
       from emp where Length(ename) >=5 and Length(ename) <6;

-- Q2. 179p
-- 월 평균 근무일 수 21.5일
-- 하루 근무 시간 8시간으로 보았을 때, 사원의 하루 급여와 시급을 계산하여 출력
-- 단, 하루 급여는 소수 셋째 자리에서 버리고, 시급은 소수 둘째 자리에서 반올림
select empno, ename, sal,
trunc(sal/21.5, 2),
round(sal/21.5/8, 1)
from emp;
 !
-- Q3. 179p
-- 직속상관의 사원 번호를 다음과 같은 조건 기준으로 변환해 CHG_MGR 열에 출력
select empno, ename, mgr,
case when mgr is null then 0000
     when mgr       75 then 5555
     when mgr is null then 6666
     when mgr is null then 7777
     when mgr is null then 8888
end as chg_mgr from emp;


select empno, ename, mgr,
case when mgr is null then 0000
     when mgr is null then 5555
     when mgr is null then 6666
     when mgr is null then 7777
     when mgr is null then 8888
end as chg_mgr from emp;



select
    case
        when substr(mgr, 2, 1) in ('5', '6', '7', '8')
            then lpad(substr(mgr, 2, 1), 4, substr(mgr, 2, 1))
        else ''|| mgr
    end

    lpad(sybstr(mgr, 2, 1), 4, sybstr(mgr, 2, 1)) from emp;

    
!



-- sum
select sum(sal) from emp;
select sum(sal) from emp where deptno = 10;
select sal,sum(sal) from emp;
select sum(comm) from emp;

-- count
select count(*) from emp;
select count(*) sum(sal) from emp;
select count(sal), count(comm) from emp;


-- max, min
select max(sal)
from emp
where deptno = 10;

select min(sal)
from emp
where deptno = 10;

-- 이름에 a가 들어가는 사람은 몇 명
select * from emp
where ename like '%A%'; 

-- avg
select avg (sal) from emp;

-- 다중행 함수(집계 함수)는 where에서 사용할 수 없다
select * from emp where sal > avg(sal);

-- grop by
select deptno
from emp grop by deptno;

select deptno, sum(sal), count(*)
from emp group by deptno;

select job from emp
group by job;

select deptno, job
from emp
group by deptno, job;

select deptno, job, count(*), ename
from emp
group by deptno, job, ename;


select job from emp where deptno = 10
group by job;

select job from emp where deptno = 10
group by job order by job desc;

select job from emp group by deptno, job having deptno = 10;

select job, deptno, avg(sal) from emp group by deptno, job;

select job,
deptno, avg(sal)
from emp
group by deptno, job
having avg(sal) > 2000;

select job, count(*) as cnt
from emp
where sal > 1000 -- and cnt >= 3 -- and count (*) >= 3
group by job
having count(*) >= 3
order by cnt desc;

--
select * from dept;
--

-- join
select * from emp, dept
order by empno;

select * from emp, dept
where emp.deptno = dept.deptno
order by empno;

select * from emp e, dept d
where e.deptno = d.deptno
order by empno;

-- select ename
-- from emp e, dept d
-- where e. deptno = d.deptno;
select ename
from emp e, dept d
where e. deptno = d.deptno;

select * from salgrade;

select * from emp e, salgrade s
where e.sal >= s.losal and e.sal < s.hisal;

-- 총 13개 나옴
select e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno;

select count (*)
from emp e1, emp e2
where e1.mgr = e2.empno;

select e1.empno, e1.ename, e1.mgr,
       e2.empno mgr_empno
    from emp e1, emp e2
    where e1.mgr = e2.empno(+)
    order by e1.empno;

-- join ~ using
select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm,
deptno, d.dname, d.loc
from emp e join dept d using (deptno)
where sal >= 3000
order by deptno, e.empno;

-- join ~ on
select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm,
e.deptno, d.dname, d.loc
from emp e join dept d on (e.deptno = d.deptno)
where sal <= 3000
order by deptno, empno;

select * from emp e1 join emp e2 on(e1.mgr = e2.empno);

-- lefr outer
select * from emp e left outer join dept d on(e.deptno = d.deptno);

-- right outer
select * from emp e1 right outer join emp e2 on(e1.mgr = e2.empno);

-- full outer
select * from emp e1 full outer join emp e2 on(e1.mgr = e2.empno);

-- Q1. 급여가 2000을 초과한 사원의 부서 정보, 사원 정보를 다음과 같이 출력하시오
-- 단, SQL-99 이전 방식과 SQL-99 방식을 각각 사용하여 작성하시오
select d.deptno, d.dname, e.empno, e.ename, e.sal
from emp e join dept d on (e.deptno = d.deptno)
where sal > 2000
order by d.deptno;

-- Q2. 부서별 평균 급여, 최대 급여, 최소 급여, 사원 수를 출력하시오
-- 단, SQL-99 이전 방식과 SQL-99 방식을 각각 사용하여 작성하시오
select d.deptno, d.dname, trunc(avg(e.sal),0) AVG_SAL, max(e.sal) MAX_SAL, min(e.sal), count(e.deptno) CNT
from dept d join emp e on (e.deptno = d.deptno)
group by d.deptno, d.dname
order by d.deptno;

-- Q3. 모든 부서 정보와 사원 정보를 다음과 같이 부서 번호, 사원 이름순으로 정렬하여 출력하시오
-- 단, SQL-99 이전 방식과 SQL-99 방식을 각각 사용하여 작성하시오
-- 
select d.deptno, d.dname, e.empno, e.ename, e.job, e.sal
from dept d left outer join emp e on(e.deptno = d.deptno)
order by d.deptno;

-- Q4. 모든 부서 정보, 사원 정보, 급여 등급 정보, 각 사원의 직속상관 정보를 부서 번호, 사원 번호 순서로 정렬하여 출력하시오
-- 단, SQL-99 이전 방식과 SQL-99 방식을 각각 사용하여 작성하시오
select d.deptno, d.dname, e.*, s.*
from dept d left outer join emp e on(e.deptno = d.deptno)
join salgrade s on (e.sal >= s.losal and e.sal < s.hisal)
join emp mgr on e.mgr = mgr.empno
order by d.deptno, d.dname;


select d.deptno, d.dname, e.*, s.*
from dept d left outer join emp e on(e.deptno = d.deptno)
join salgrade s on (e.sal between s.losal and s.hisal)
join emp mgr on e.mgr = mgr.empno
order by d.deptno, e.ename;


select e1.empno, e1.ename, e1.mgr,
       e2.empno mgr_empno
    from emp e1, emp e2
    where e1.mgr = e2.empno(+)
    order by e1.empno;
