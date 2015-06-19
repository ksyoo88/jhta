package comm;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtil {

	public static String nullToBlank(Date date) {
		if (date == null) {
			return "";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	
	
}
