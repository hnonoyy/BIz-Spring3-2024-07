# Spring MVC Project
- 학생관리 시스템 2024

## DBMS 와 연동된 Spring MVC Project
- MySQL, MyBatis 를 연동하여 학생관리 CRUD를 구현하는 프로젝트
- MySQL, MyBatis 를 연동하여 프로젝트를 구현하기 위하여 `maven dependencies	`를 설정해야한다.
- 필요한 dependencies 는 `spring-jdbc`, `mybatis`, `mybatis-sping`, `commns-dbcp2`, `mysql-connector`가 필요하다.

- 다음의 dependencies 를 `maven repository`에서 검색하여 `pom.xml` 등록한다.
```xml
<!-- 
	spring jdbc 로 검색 
	spring webmvc 와 버전 일치시킬것
-->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-jdbc</artifactId>
    <version>5.2.25.RELEASE</version>
</dependency>
<!-- mybatis 로 검색하여 mybatis, mybatis-spring 찾기 -->
<dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis</artifactId>
    <version>3.5.16</version>
</dependency>
<!-- 
	spring-webmvc 5.2.x.RELEASE 를 사용할 때는  
	mybatis-spring을 반드시 3.0.0 이하 버전을 사용할 것 
-->
<dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis-spring</artifactId>
    <version>3.0.0</version>
</dependency>
<!-- dbcp 로 검색하여 commons-dbcp2 를 사용할 것 -->
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-dbcp2</artifactId>
    <version>2.12.0</version>
</dependency>
<!-- 
	mysql 로 검색하고 
	반드시 mysql-connector-j 를 사용할 것 
	mysql-connector-java는 한글문제와 timeZome 설정부분에 문제를 일으킬 수 있음
-->
<dependency>
    <groupId>com.mysql</groupId>
    <artifactId>mysql-connector-j</artifactId>
    <version>8.4.0</version>
</dependency>

```