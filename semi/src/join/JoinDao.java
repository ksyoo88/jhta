package join;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import comm.IbatisUtil;

public class JoinDao {
	
	public void signUp(JoinVO joinVO) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		client.insert("signUp", joinVO);
	}

}
