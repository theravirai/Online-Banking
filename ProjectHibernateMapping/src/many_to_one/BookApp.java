package many_to_one;

public class BookApp 
{
	public static void main(String args[])
	{
		Book b1 = new Book();
		b1.setBname("C");
		Book b2 = new Book();
		b2.setBname("C++");
		Book b3 = new Book();
		b3.setBname("java");
		
		Publisher p = new Publisher();
		p.setPname("Pearson");
		b1.setPub(p);
		b2.setPub(p);
		b3.setPub(p);
		
		HibernateManager hbm = new HibernateManager();
		hbm.connect();
		hbm.insert(b1);
		hbm.insert(b2);
		hbm.insert(b3);
	}

}
