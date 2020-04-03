package p1;

public class EmployeeApp 
{
	public static void main(String args [])
	{
		Employee emp = new Employee();
		emp.setEmpname("Mohan");
		
		Address addr = new Address();
		addr.setAddlane("5th Cross");
		addr.setCity("Mumbai");
		addr.setState("Maharashtra");
		addr.setCountry("India");
		
		emp.setAddr(addr);
		
		HibernateManager hbm = new HibernateManager();
		hbm.connect();
		hbm.insert(emp);
	}

}
