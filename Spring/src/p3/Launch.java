package p3;

public class Launch 
{
	public static void main(String args[])   //Program with Constructor Injection
	{
		Student s = new Student("Ravi");
		System.out.println("Student name is "+s.getName());
	}
}
