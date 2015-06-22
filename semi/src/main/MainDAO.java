package main;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import comm.IbatisUtil;

public class MainDAO {

	public List<ReviewVO> getReviewList() throws SQLException{
		SqlMapClient sqlmap = IbatisUtil.getSqlmap();
		List<ReviewVO> list = sqlmap.queryForList("getReviewList");
		return list;
	}
	
	public List<PerformanceVO> getPerformance() throws SQLException{
		SqlMapClient sqlmap = IbatisUtil.getSqlmap();
		List<PerformanceVO> list = sqlmap.queryForList("getPerformance");
		return list;
	}
	

}
