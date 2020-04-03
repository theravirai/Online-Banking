package p1;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Launch 
{
	public static void main(String args[])   //Program with Inversion of Control (IOC)
	{
		ClassPathXmlApplicationContext c = new ClassPathXmlApplicationContext("beans.xml");
		Student s = (Student)c.getBean("id1");
		//System.out.println("Student name is "+s.getName());
		System.out.println(s);
	}
}
