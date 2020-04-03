package p1;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistryBuilder;
public class HibernateManager 
{
	Session session;
	public void connect()
	{
	//Connection code
		// these 5 lines would remain same and is used for getting connection
       Configuration configuration = new Configuration().configure("hibernate.cfg.xml"); //connects to cfg
       ServiceRegistryBuilder builder = new ServiceRegistryBuilder().applySettings(configuration.getProperties());
       SessionFactory sessionFactory = configuration.buildSessionFactory(builder.buildServiceRegistry());       		   
          		 
        session =sessionFactory.openSession();	
        System.out.println("Connected to Pf....");
	}
	
	//Insert data into Database
	
	/*public void insert(Student s) //inserts a row into the table
	{
		session.beginTransaction();
		session.save(s);
		session.getTransaction().commit();
		System.out.println("Insertion success...");
	}*/
	
	//Select all from Database
	
	/*public void selectAll()
	{
		session.beginTransaction();
		Query q = session.createQuery("From Student");
		List l = q.list();
		Iterator itr = l.iterator();
		while(itr.hasNext())
		{
			Student s = (Student)itr.next();
			System.out.println(s.getSid()+" "+s.getSname());
		}
	}*/
	
	//Select specific row:
	
	/*public void selectSpecific(String sid)
	{
		session.beginTransaction();
		Student s = (Student)session.get(Student.class, sid);
		System.out.println(s.getSid()+" "+s.getSname());
	}*/
	
	
	//Updating a Specific row
	
	/*public void updateStudent(String sid, String newname)
	{
		session.beginTransaction();
		Student s = (Student)session.get(Student.class, sid);
		s.setSname(newname);
		session.update(s);
		session.getTransaction().commit();
	}*/
	
	////Delete a Specific row
	
	public void deleteStudent(String sid)
	{
		session.beginTransaction();
		Student s = (Student)session.get(Student.class, sid);
		session.delete(s);
		session.getTransaction().commit();
	}
	
	
	

}
