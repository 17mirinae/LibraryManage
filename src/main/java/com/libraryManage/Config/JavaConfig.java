package com.libraryManage.Config;

import javax.sql.DataSource;
import com.mysql.cj.jdbc.Driver;
import org.springframework.context.annotation.*;
import org.springframework.jdbc.datasource.*;

@Configuration
@ComponentScan("com.libraryManage")
public class JavaConfig {
	@Bean
	public DataSource dataSource() {
		SimpleDriverDataSource simpleDriverDataSource = new SimpleDriverDataSource();
		simpleDriverDataSource.setDriverClass(Driver.class);
		simpleDriverDataSource.setUrl("jdbc:mysql://localhost:3306/spring5fs?autoReconnect=true");
		simpleDriverDataSource.setUsername("root");
		simpleDriverDataSource.setPassword("rootoor");
		return simpleDriverDataSource;
	}
//	<?xml version="1.0" encoding="UTF-8"?>
//	<beans xmlns="http://www.springframework.org/schema/beans"
//		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
//		xsi:schemaLocation="http://www.springframework.org/schema/beans 
//	http://www.springframework.org/schema/beans/spring-beans.xsd">
//
//		<bean id="memberDAO" class="com.libraryManage.DAO.MemberDAO" />
//
//		<bean id="MemSvc" class="com.libraryManage.Service.MemberService">
//			<constructor-arg ref="memberDAO" />
//		</bean>
//
//		<bean id="bookDAO" class="com.libraryManage.DAO.BookDAO" />
//
//		<bean id="BookSvc" class="com.libraryManage.Service.BookService">
//			<constructor-arg ref="bookDAO" />
//		</bean>
//
//		<bean id="libraryDAO" class="com.libraryManage.DAO.LibraryDAO" />
//
//		<bean id="LibrarySvc" class="com.libraryManage.Service.LibraryService">
//			<constructor-arg ref="libraryDAO" />
//			<constructor-arg ref="bookDAO" />
//			<constructor-arg ref="memberDAO" />
//		</bean>
//
//	</beans>
}
