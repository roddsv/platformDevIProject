/**
 * Covid19 Class
 * Track covid19 recovery
 * */
public class Covid19 {
	private Integer recoveredInArea = 0;
    public static Integer recoveredInCountry = 0;
    
    //parameterized constructor to set class variables value
    public Covid19(Integer recoveredInArea) {
        if (recoveredInArea < 0) {
            this.recoveredInArea = 0;
        } else {
        this.recoveredInArea = recoveredInArea;
        recoveredInCountry += recoveredInArea;
    	}
    }
    
    public void treatPatient() {
        recoveredInArea++;
        recoveredInCountry++;
    }
    
    public Integer getTreated() {
        return recoveredInArea;
    }
}