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

-
select distinct deptno from emp;

select * from emp
where deptno = 30;

select *
from emp
where deptno = 30
order by sal;
-

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

-
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
-

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

-
select ename, length(ename) from emp;

select ename from emp
where length(ename) = 5;

select * from emp
where length(ename) = 5;
-

select lengthb('a'), lengthb('한') from dual;

desc emp;

select ename, empno, sal, deptno from emp
where deptno = 30 and sal not between 1000 and 2000;














select * from emp
where comm null






