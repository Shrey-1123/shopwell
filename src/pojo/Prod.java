package pojo;

public class Prod 
{
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	private String img;
	private String n;
	private int q;
	private int p;
	private int pid;
	
	public Prod(String img,String n,String p,String q,int pid)
	{
		this.setImg(img);
		this.setN(n);
		this.setQ(Integer.parseInt(q));
		this.setP(Integer.parseInt(p));
		this.setPid(pid);
	}
	
	public Prod(String img,String n,String p,String q)
	{
		this.setImg(img);
		this.setN(n);
		this.setQ(Integer.parseInt(q));
		this.setP(Integer.parseInt(p));
	}
	
	public Prod(String n,String p,String q,int pid)
	{
		this.setN(n);
		this.setQ(Integer.parseInt(q));
		this.setP(Integer.parseInt(p));
		this.setPid(pid);
	}
	
	public Prod(String pid)
	{
		this.pid=Integer.parseInt(pid);
	}
	

	public String getN() {
		return n;
	}

	public void setN(String n) {
		this.n = n;
	}

	public int getQ() {
		return q;
	}

	public void setQ(int q) {
		this.q = q;
	}

	public int getP() {
		return p;
	}

	public void setP(int p) {
		this.p = p;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}
	
	

}
