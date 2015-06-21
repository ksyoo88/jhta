package member;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import comm.IbatisUtil;

public class LoginDao {
	public Member loginCheck(Member joinVO) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		return (Member) client.queryForObject("logincheck", joinVO);
		
	}
}
