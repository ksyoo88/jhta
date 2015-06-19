package book;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import comm.IbatisUtil;

public class BookDao {
	
	public int getNO() throws SQLException{
		SqlMapClient sqlmap= IbatisUtil.getSqlmap();
		int no=(int) sqlmap.queryForObject("getSeq");
		return no;
	
	}
	
	public void addperform(BookVO book) throws SQLException{
		SqlMapClient sqlmap = IbatisUtil.getSqlmap();
		 sqlmap.insert("addNewperform",book);
		
	}
	
	public void addprice(PriceVO price)throws SQLException{
		SqlMapClient sqlmap= IbatisUtil.getSqlmap();
		sqlmap.insert("addNewprice",price);
	}
	
	public List<BookVO> getperformlist() throws SQLException{
		SqlMapClient sqlmap= IbatisUtil.getSqlmap();
		List<BookVO> list=sqlmap.queryForList("getperformlist");
		return list;

	}
	
	public BookVO getPerformInfo(int no) throws SQLException{
		SqlMapClient sqlmap= IbatisUtil.getSqlmap();
		BookVO book= (BookVO)sqlmap.queryForObject("getperforminfo",no);
		return book;
	}
	
	public PriceVO getPriceInfo(int no) throws SQLException{
		SqlMapClient sqlmap= IbatisUtil.getSqlmap();
		PriceVO price= (PriceVO)sqlmap.queryForObject("getpriceinfo",no);
		return price;
	}
}
