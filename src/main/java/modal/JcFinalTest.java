package modal;

public class JcFinalTest {
	private int jobcardNumber; 
	private String exterior;
	private String interior;
	private String underhood;
	private String underbody;
	private String boot;
	private String other;
	
	public JcFinalTest(int jobcardNumber, String exterior, String interior, String underhood, String underbody,
			String boot, String other) {
		super();
		this.jobcardNumber = jobcardNumber;
		this.exterior = exterior;
		this.interior = interior;
		this.underhood = underhood;
		this.underbody = underbody;
		this.boot = boot;
		this.other = other;
	}
	public int getJobcardNumber() {
		return jobcardNumber;
	}
	public void setJobcardNumber(int jobcardNumber) {
		this.jobcardNumber = jobcardNumber;
	}
	public String getExterior() {
		return exterior;
	}
	public void setExterior(String exterior) {
		this.exterior = exterior;
	}
	public String getInterior() {
		return interior;
	}
	public void setInterior(String interior) {
		this.interior = interior;
	}
	public String getUnderhood() {
		return underhood;
	}
	public void setUnderhood(String underhood) {
		this.underhood = underhood;
	}
	public String getUnderbody() {
		return underbody;
	}
	public void setUnderbody(String underbody) {
		this.underbody = underbody;
	}
	public String getBoot() {
		return boot;
	}
	public void setBoot(String boot) {
		this.boot = boot;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
}
