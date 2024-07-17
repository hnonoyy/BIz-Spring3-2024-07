package com.callor.student.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.callor.student.models.StudentVO;

public interface StudentDao {
	
	@Select("SELECT * FROM tbl_student ORDER BY st_num")
	public List<StudentVO> selectAll();
	
	@Insert("INSERT INTO TBL_STUDENT(ST_NUM, ST_NAME, ST_DEPT, ST_GRADE, ST_TEL, ST_ADDR)"
			+ "VALUES("+"#{st_num}, #{st_name}, #{st_dept}, #{st_grade}, #{st_tel}, #{st_addr}"
			+ ")")
	public int insert(StudentVO stVO);
	
	
}
