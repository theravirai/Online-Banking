package many_to_many;

import java.util.Set;

public class Student //In the Process
{
	private int sid;
	private String sname;
	
	private Set cou;

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Set getCou() {
		return cou;
	}

	public void setCou(Set cou) {
		this.cou = cou;
	}

}
