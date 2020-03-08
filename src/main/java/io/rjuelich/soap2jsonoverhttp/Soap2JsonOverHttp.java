package io.rjuelich.soap2jsonoverhttp;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Soap2JsonOverHttp {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		new ClassPathXmlApplicationContext("applicationContext.xml");
	}

}
