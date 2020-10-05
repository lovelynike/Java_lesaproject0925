package com.lesa.www;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.lesa.www.memberDao.memberBeanMapper;

@Repository
public class teacherDao {
	
	@Autowired
	private JdbcTemplate jdbcTmp;
	
	@Value("#{sql['teacher.insert']}")
	private String insert;
	
	@Value("#{sql['teacher.update']}")
	private String update;

	@Value("#{sql['teacher.delete']}")
	private String delete;

	@Value("#{sql['teacher.get']}")
	private String get;

	@Value("#{sql['teacher.getList']}")
	private String getList;

	@Value("#{sql['teacher.getCount']}")
	private String getCount;
	
	
	//=============================================================================
		
	public int teacherinsert(teacherBean bean) {
				
		return jdbcTmp.update(insert, bean.getId(), bean.getTeachtitle(), bean.getSubject(), bean.getSubject2(), bean.getLectype(), bean.getTaddress(),
				bean.getSal(), bean.getCareertime(), bean.getWorkstart(), bean.getWorkend(), bean.getWorkplace(), bean.getPosition(), bean.getTask(),
				bean.getMedialink(), bean.getPhoto());
				
	}
	
	public ArrayList<teacherBean> getList(int start, int end) {
		ArrayList<teacherBean> bean = (ArrayList<teacherBean>) jdbcTmp.query(getList, new Integer[] { start, end },
				new teacherBeanMapper());
		return bean;
	}
	
	class teacherBeanMapper implements RowMapper<teacherBean> {

		@Override
		public teacherBean mapRow(ResultSet rs, int rowNum) throws SQLException {

			teacherBean bean = new teacherBean(rs.getInt("idx"), rs.getString("id"), rs.getString("teachtitle"),
					rs.getString("subject"), rs.getString("subject2"), rs.getString("lectype"), rs.getString("taddress"),
					rs.getString("sal"), rs.getString("careertime"), rs.getString("workstart"),
					rs.getString("workend"), rs.getString("workplace"), rs.getString("position"), rs.getString("task"),
					rs.getString("medialink"), rs.getString("photo"), rs.getString("regdate"),
					rs.getString("extra1"), rs.getString("extra2"), rs.getString("extra3"));

			return bean;
		}

	}
	
	public int delete(int idx) {
		return jdbcTmp.update(delete, idx);
	}

	public int update(teacherBean bean) {
		return jdbcTmp.update(update, bean.getId(), bean.getIdx());
	}

	public int getCount() {
		return jdbcTmp.queryForInt(getCount);
	}

	
	public teacherBean getInfo(String id) {
		teacherBean bean = jdbcTmp.queryForObject(get, new String[] {id}, new teacherBeanMapper());
		return bean;
	}

}
