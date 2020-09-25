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
public class hopelecDao {

	@Autowired
	private JdbcTemplate jdbcTmp;

	@Value("#{sql['hopelec.insert']}")
	private String insert;

	@Value("#{sql['hopelec.update']}")
	private String update;

	@Value("#{sql['hopelec.delete']}")
	private String delete;

	@Value("#{sql['hopelec.get']}")
	private String get;

	@Value("#{sql['hopelec.getList']}")
	private String getList;

	@Value("#{sql['hopelec.getCount']}")
	private String getCount;
	
	
	@Value("#{sql['hopelec.setHit']}")
	private String setHit;
	
	

	public int insert(hopelecBean bean) {
		return jdbcTmp.update(insert, bean.getId(), bean.getTitle(), bean.getContent(), bean.getSubject(),
				bean.getSubject2(), bean.getLectype(), bean.getTaddress(), bean.getSal());		 
	}

	public int delete(int idx) {
		return jdbcTmp.update(delete, idx);
	}

	public int update(hopelecBean bean) {
		return jdbcTmp.update(update, bean.getTitle(), bean.getSubject(), bean.getSubject2(), 
				bean.getContent(), bean.getLectype(), bean.getTaddress(), bean.getSal(),
				 bean.getIdx());
	}

	public int getCount() {
		return jdbcTmp.queryForInt(getCount);
	}

	
    public hopelecBean get(int idx) { 
    	hopelecBean bean = jdbcTmp.queryForObject(get, new Integer[] { idx }, new hopelecBeanMapper());
	  	
    	return bean; 
	  	
	  }
    
    public int setHit(int idx) {
		return jdbcTmp.update(setHit, idx);
	}	
	  
	class hopelecBeanMapper implements RowMapper<hopelecBean> {
	  
		  @Override public hopelecBean mapRow(ResultSet rs, int rowNum) throws SQLException {	  
		  
			  hopelecBean bean = new hopelecBean(rs.getInt("idx"), rs.getString("id"),
				  rs.getString("title"), rs.getString("content"), rs.getString("rdate"),
				  rs.getInt("hit"), rs.getString("subject"), rs.getString("subject2"), 
				  rs.getString("lectype"), rs.getString("taddress"), rs.getString("sal"));
		  
			  return bean; 
			  
			  }
	  
	  }
	  
		/*
		 * public hopelecBean[] getList(int start, int count) { hopelecBean[] bean =
		 * jdbcTmp.query(getList, new Integer[] { start, count }, new
		 * freegesiBeanMapper()).toArray(new hopelecBean[0]);
		 * 
		 * return bean; }
		 */
	  
	  public ArrayList<hopelecBean> getList(int start, int end) {
			ArrayList<hopelecBean> bean = (ArrayList<hopelecBean>)jdbcTmp.query(getList, new Integer[] {start, end}, new hopelecBeanMapper());
			return bean;
		}
	  
	  
}
