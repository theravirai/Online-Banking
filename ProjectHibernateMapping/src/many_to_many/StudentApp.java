package many_to_many;

import java.util.HashSet;
import java.util.Set;

public class StudentApp 
{
	public static void main(String args[])
	{
		Course c1 = new Course();
		c1.setCname("Physics");
		Course c2 = new Course();
		c2.setCname("Chemistry");
		Course c3 = new Course();
		c3.setCname("Math");
		
		Set<Course> c = new HashSet<Course>();
		c.add(c1);	
		c.add(c2);	
		c.add(c3);
		
		Student s1 = new Student();
		s1.setSname("Rahul");
		s1.setCou(c);
		Student s2 = new Student();
		s2.setSname("Mohan");
		s2.setCou(c);
		Student s3 = new Student();
		s3.setSname("Ravi");
		s3.setCou(c);
		
		HibernateManager hbm = new HibernateManager();
		hbm.connect();
		hbm.insert(s1);
		hbm.insert(s2);
		hbm.insert(s3);
	}
}
