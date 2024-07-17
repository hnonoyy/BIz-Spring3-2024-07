# Spring MVC Project
- 학생관리 시스템 2024

## DBMS 와 연동된 Spring MVC Project
- MySQL, MyBatis 를 연동하여 학생관리 CRUD를 구현하는 프로젝트
- MySQL, MyBatis 를 연동하여 프로젝트를 구현하기 위하여 `maven dependencies	`를 설정해야한다.
- 필요한 dependencies 는 `spring-jdbc`, `mybatis`, `mybatis-sping`, `commns-dbcp2`, `mysql-connector`가 필요하다.

- 다음의 dependencies 를 `maven repository`에서 검색하여 `pom.xml` 등록한다.
- webmvc 뒤에 넣기
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

## DBMS 연동을 위한 `context.xml` 파일 작성하기
- `Spring Project`의 `/WEB-INF/spring/appServlet` 폴더에 `spring bean confiruration file` 을 생성한다
- 이 때 파일은 `*-context.xml` 형식의 패턴으로 이름을 정한다.
-`*-context.xml` 형식의 패턴으로 이름을 정하면 `web.xml`에서 파일을 자동으로 인식하고 프로젝트가 실행될 때 설정값을 읽어서 프로젝트를 초기화 한다.
- 여기에서는 `db-context.xml`라는 이름으로 설정할 것이다.
```xml
<!-- db-context.xml 에는 다음의 3가지 bean과 기타 설정이 추가된다 -->
<!-- dataSource bean -->
<bean id="ds" class="org.apache.commons.dbcp2.BasicDataSource">
	<property name="driverClassName" value="com.mysql.cj.jdbc.Driver"/>
	<property name="url" value="jdbc:mysql://localhost:3306/mydb"/>
	<property name="username" value="user1"/>
	<property name="password" value="12341234"/>
</bean>
<!-- SqlSessionFactoryBean -->
<bean id="sessionFactoryBean" class="org.mybatis.spring.SqlSessionFactoryBean">
	<property name="dataSource" ref="ds"/>
	<property name="typeAliasesPackage" value="com.callor.student.models"/>
</bean>
<!-- SqlSessionTemplate bean -->
<bean class="org.mybatis.spring.SqlSessionTemplate">
	<constructor-arg ref="sessionFactoryBean" />
</bean>
	
<!-- mybatis component scan -->
<mybatis-spring:scan base-package="com.callor.student.persistence"/>
```

## filter 한글인코딩
- 영어, 숫자 외 다른 문자(한글) 데이터는 깨져서 나옴 그래서 그걸 위해서 filter 를 설정해줘야함 
- 한글을 encoding 하는 도구 
- `web.xml` 의 web-app 다음에 작성 
```xml
	<filter>
		<filter-name>encKor</filter-name>
		<filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
		<init-param>
			<param-name>encoding</param-name>
			<param-value>UTF-8</param-value>
		</init-param>
		<init-param>
			<param-name>forceEncoding</param-name>
			<param-value>true</param-value>
		</init-param>
	</filter>

	<filter-mapping>
		<filter-name>encKor</filter-name>
		<url-pattern>*</url-pattern>
	</filter-mapping>
```