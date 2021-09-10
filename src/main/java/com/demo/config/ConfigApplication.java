/* 
 * Created by 2019年2月14日
 */
package com.demo.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;

/**
 * The application for the config server.
 * @author fangang
 */
@SpringBootApplication
@EnableConfigServer
@ComponentScan(basePackages="com.demo")
@ImportResource(locations={"classpath:applicationContext-*.xml"})
public class ConfigApplication {

	/**
	 * @param args the arguments
	 */
	public static void main(String[] args) {
		SpringApplication.run(ConfigApplication.class, args);
	}

}
