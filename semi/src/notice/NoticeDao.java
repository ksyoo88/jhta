package notice;

import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;
import comm.IbatisUtil;

public class NoticeDao {
	public void addNotice(Notice notice) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		client.insert("addNotice", notice);
	}
	
	public ArrayList<Notice> getNoticeList(Notice notice) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		return (ArrayList<Notice>) client.queryForList("getNoticeList", notice);
	}
	
	public int getNoticeCnt() throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		return (int) client.queryForObject("getNoticeCnt");
	}
	
	public Notice getNoticeView(int no) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		return (Notice)client.queryForObject("getNoticeView", no);
	}
	
	public void updateViewCnt(int no) throws SQLException {
		SqlMapClient client = IbatisUtil.getSqlmap();
		client.update("updateViewCnt", no);
	}
}
