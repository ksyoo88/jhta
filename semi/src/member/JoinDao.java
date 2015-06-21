package member;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import comm.IbatisUtil;

public class JoinDao {
	
	public void signUp(Member joinVO) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		client.insert("signUp", joinVO);
	}

}
