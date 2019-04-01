package modal;

public class VehicleInfo implements java.io.Serializable {

	private String vehicleNumber;
	private String vinNumber;
	private String vehicleCompany;
	private String companyModel;
	private String modelVarient;
	private String engineNumber;
	private String fuelType;
	private String vehicleType;
	private String interiorColor;
	private String exteriorColor;

	public String getVehicleNumber() {
		return this.vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

	public String getVinNumber() {
		return this.vinNumber;
	}

	public void setVinNumber(String vinNumber) {
		this.vinNumber = vinNumber;
	}

	public String getVehicleCompany() {
		return this.vehicleCompany;
	}

	public void setVehicleCompany(String vehicleCompany) {
		this.vehicleCompany = vehicleCompany;
	}

	public String getCompanyModel() {
		return this.companyModel;
	}

	public void setCompanyModel(String companyModel) {
		this.companyModel = companyModel;
	}

	public String getModelVarient() {
		return this.modelVarient;
	}

	public void setModelVarient(String modelVarient) {
		this.modelVarient = modelVarient;
	}

	public String getEngineNumber() {
		return this.engineNumber;
	}

	public void setEngineNumber(String engineNumber) {
		this.engineNumber = engineNumber;
	}

	public String getFuelType() {
		return this.fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}

	public String getVehicleType() {
		return this.vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public String getInteriorColor() {
		return this.interiorColor;
	}

	public void setInteriorColor(String interiorColor) {
		this.interiorColor = interiorColor;
	}

	public String getExteriorColor() {
		return this.exteriorColor;
	}

	public void setExteriorColor(String exteriorColor) {
		this.exteriorColor = exteriorColor;
	}

	
}
