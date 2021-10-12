package com.study.bbs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages= {"com.study.*"})
public class SpringBbsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBbsApplication.class, args);
	}

}
