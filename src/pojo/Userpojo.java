package pojo;

public class Userpojo
{
	private String e;	
	private String p;
	private String n;
	private String address;
	private String ph;
	
	public Userpojo(String e, String p, String n, String ph)
	{	
		this.setE(e);
		this.setP(p);
		this.setN(n);
		this.setPh(ph);
	}
	public Userpojo(String e, String p, String n, String address, String ph)
	{
		
		this.e = e;
		this.p = p;
		this.n = n;
		this.address = address;
		this.ph = ph;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Userpojo(String e, String p)
	{
		this.setE(e);
		this.setP(p);		
	}
	public String getE() {
		return e;
	}
	public void setE(String e) {
		this.e = e;
	}
	public String getP() {
		return p;
	}
	public void setP(String p) {
		this.p = p;
	}
	public String getN() {
		return n;
	}
	public void setN(String n) {
		this.n = n;
	}
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
}
