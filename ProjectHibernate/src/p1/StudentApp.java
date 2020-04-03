package p1;

public class StudentApp 
{
	//PROJECT 1: Insert a Data inside the Database
	/*public static void main(String args[])
	{
		Student s = new Student();
		s.setSid("1");
		s.setSname("Bahubali");
		HibernateManager hm = new HibernateManager();
		hm.connect();
		hm.insert(s);
	}*/
	
	
	//PROJECT 2: Select All from Database
	
	/*public static void main(String args])
	{
		Student s = new Student();
		HibernateManager hm = new HibernateManager();
		hm.connect();
		hm.selectAll();
	}*/
	
	
	//PROJECT 3: Select Specific Row:
	
	/*public static void main(String args[])
	{
		Student s = new Student();
		HibernateManager hm = new HibernateManager();
		hm.connect();
		hm.selectSpecific("1");
	}*/
	
	
	//PROJECT 4: Updating a Specific row
	
	/*public static void main(String args[])
	{
		Student s = new Student();
		HibernateManager hm = new HibernateManager();
		hm.connect();
		hm.updateStudent("1","Virat");
	}*/
	
	//PROJECT 5: Delete a Specific row
	
	public static void main(String args[])
	{
		Student s = new Student();
		HibernateManager hm = new HibernateManager();
		hm.connect();
		hm.deleteStudent("1");
	}



















}
