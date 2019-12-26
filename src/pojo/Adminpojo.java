package pojo;


public class Adminpojo {

	private String e;
	private String p;
	private String n;
	private int ph;
	public Adminpojo(String e, String p, String n, int ph) {
		super();
		this.e = e;
		this.p = p;
		this.n = n;
		this.ph = ph;
	}
	public Adminpojo(String e, String p) {
		super();
		this.e = e;
		this.p = p;
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
	public int getPh() {
		return ph;
	}
	public void setPh(int ph) {
		this.ph = ph;
	}
	
	
}
