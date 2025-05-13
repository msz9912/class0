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

