package modal;
import java.util.Date;

public class VehicleServiceDetails implements java.io.Serializable {

	private int serviceId;
	private int modelVarientId;
	private String serviceName;
	private int servicePrice;
	private String serviceDetails;
	private String serviceValidity;
	
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public int getModelVarientId() {
		return modelVarientId;
	}
	public void setModelVarientId(int modelVarientId) {
		this.modelVarientId = modelVarientId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public int getServicePrice() {
		return servicePrice;
	}
	public void setServicePrice(int servicePrice) {
		this.servicePrice = servicePrice;
	}
	public String getServiceDetails() {
		return serviceDetails;
	}
	public void setServiceDetails(String serviceDetails) {
		this.serviceDetails = serviceDetails;
	}
	public String getServiceValidity() {
		return serviceValidity;
	}
	public void setServiceValidity(String serviceValidity) {
		this.serviceValidity = serviceValidity;
	}
	
	
	
}
