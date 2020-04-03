package p2;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Launch 
{
	public static void main(String args[])   //Program with Setter Injection
	{
		ClassPathXmlApplicationContext c = new ClassPathXmlApplicationContext("beans2.xml");
		Student s = (Student)c.getBean("id1");
		System.out.println("Student name is "+s.getName());
		System.out.println(s);
	}
}
