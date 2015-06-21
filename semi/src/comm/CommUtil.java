package comm;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommUtil {

	public static String dateToString(Date date) {
		if (date == null) {
			return "";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	public static Date stringToDate(String dateStr) throws ParseException {
		if (dateStr == null) {
			return null;
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(dateStr);
	}
	public static String getNumber(String str) {
		String result = "";
		if(str == null) {
			return result;
		}
		
		Pattern p = Pattern.compile("\\d+");
		Matcher m = p.matcher(str);
		while (m.find()) {
		  result += m.group();
		}
		
		return result;
	}
}
