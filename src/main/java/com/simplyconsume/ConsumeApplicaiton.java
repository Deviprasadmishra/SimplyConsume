package com.simplyconsume;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
@Configuration
@ComponentScan(basePackages ="com.simplyconsume")
@EnableAutoConfiguration
public class ConsumeApplicaiton {
public static void main(String[] args) {
	System.getProperties().put( "server.port", 8090 );
SpringApplication.run(ConsumeApplicaiton.class, args);
}
}