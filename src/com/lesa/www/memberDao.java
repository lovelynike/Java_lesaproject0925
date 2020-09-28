package com.lesa.www;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;



@Repository
public class memberDao {
	
	@Autowired
	private JdbcTemplate jdbcTmp;
	
	@Value("#{sql['member.insert']}")
	private String insert;
	
	@Value("#{sql['member.update']}")
	private String update;

	@Value("#{sql['member.delete']}")
	private String delete;

	@Value("#{sql['member.get']}")
	private String get;

	@Value("#{sql['member.getList']}")
	private String getList;

	@Value("#{sql['member.getCount']}")
	private String getCount;
	
	@Value("#{sql['member.check']}")
	private String check;
	
	
	public int check(String id) {

		return jdbcTmp.queryForInt(check, id);
	}

	public int memberinsert(memberBean bean) {
		
		String email;
		String email1 = bean.getEmail1();
		String email2 = bean.getEmail2();
		String email3 = bean.getEmail3();
		
		if(email3.equals("0")) {
			email = email1 +"@"+ email2; 
		}else {
			email = email1 +"@"+ email3;
		}
		
		return jdbcTmp.update(insert, bean.getId(), bean.getPw(), bean.getName(), bean.getBday(), bean.getGender(), email,
				bean.getTel(), bean.getCheck00(), bean.getCheck01(), bean.getCheck02(), bean.getCheck03(), bean.getExtra2(), bean.getExtra3());
				
	}

	public int delete(int idx) {
		return jdbcTmp.update(delete, idx);
	}

	public int update(memberBean bean) {
		return jdbcTmp.update(update, bean.getId(), bean.getIdx());
	}

	public int getCount() {
		return jdbcTmp.queryForInt(getCount);
	}

	
	public memberBean getInfo(String id) {
		memberBean bean = jdbcTmp.queryForObject(get, new String[] {id}, new memberBeanMapper());
		return bean;
	}

	class memberBeanMapper implements RowMapper<memberBean> {

		@Override
		public memberBean mapRow(ResultSet rs, int rowNum) throws SQLException {

			memberBean bean = new memberBean(rs.getInt("idx"), rs.getString("id"), rs.getString("pw"),
					rs.getString("name"), rs.getString("bday"), rs.getString("gender"), rs.getString("email"),
					rs.getString("tel"), rs.getString("rdate"), rs.getString("photo"),
					rs.getString("check00"), rs.getString("check01"), rs.getString("check02"), rs.getString("check03"),
					rs.getString("level"), rs.getString("extra2"), rs.getString("extra3"));

			return bean;
		}

	}

	public ArrayList<memberBean> getList(int start, int end) {
		ArrayList<memberBean> bean = (ArrayList<memberBean>) jdbcTmp.query(getList, new Integer[] { start, end },
				new memberBeanMapper());
		return bean;
	}
	
	
	//=================== id check  =========
	/*
	 * public boolean isExistId(String id){ boolean result=false; String sql =
	 * "select * from member where id=?"; try { con = ds.getConnection(); pstmt =
	 * con.prepareStatement(sql); pstmt.setString(1, id); rs = pstmt.executeQuery();
	 * if(rs.next()){ result=true; } } catch (Exception e) { e.printStackTrace(); }
	 * finally { // pool.freeConnection(con, pstmt, rs); try { rs.close();
	 * pstmt.close(); con.close(); } catch (SQLException e) {
	 * 
	 * e.printStackTrace(); } } return result; }
	 */
	
	@Value("#{sql['member.login']}")
	private String memberlogin;
	
	public boolean memberLogin(String id, String pw){
		memberBean bean = jdbcTmp.queryForObject(memberlogin, new String[] {id,pw}, new memberBeanMapper());
		
		boolean result = false;
		
		if(bean.getIdx()>0) {
			result = true;
		}	
		return result;
	} // end of method memberLogin

}
