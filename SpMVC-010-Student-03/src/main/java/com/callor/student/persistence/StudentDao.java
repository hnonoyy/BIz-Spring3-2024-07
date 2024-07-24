package com.callor.student.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.callor.student.models.StudentVO;

/*
 * DBMS CRUD 구현
 * 
 * CREATE : INSERT = 새로운 데이터를 Table 에 추가하기
 * 
 * READ : SELECT = 기존에 저장된 데이터를 Table 에서 불러오기
 * 		모든 데이터 SELECT : WHERE 절이 없이 SELECT
 * 		PK 기준의 SELECT : PK 칼럼을 기준으로 WHERE 절에서 SELECT
 * 
 * UPDATE : 기존에 저장된 데이터를 변경하기 (일부, 또는 전체)
 *  	PK 데이터는 수정하지 않는다
 *  
 * DELETE : 필요없어진 데이터를 영구적으로 Table 에서 제거하기
 * 		PK 기준으로 DELETE 실행
 */


public interface StudentDao {
	
	@Select("SELECT * FROM tbl_student ORDER BY st_num")
	public List<StudentVO> selectAll();
	
	// 데이터가 1개 또는 0개가 나오니까 StudentVO 로 받음 
	@Select("SELECT * FROM tbl_student WHERE st_num = #{st_num}")
	public StudentVO findById(String st_num);
	
	// 유니크가 아니면 1개라도 리스트로 받음
	@Select("SELECT * FROM tbl_student WHERE st_tel = #{st_tel}")
	public List<StudentVO> findByTel(String st_tel);
	@Select("SELECT * FROM tbl_student WHERE st_tel = #{st_name}")
	public List<StudentVO> findByName(String st_name);
	
	//정상적으로 수행되면 리턴값이 1 아니면 1보다 작은 수가 나온다 
	public int insert(StudentVO stVO);
	public int update(StudentVO stVO);
	
	@Delete("DELETE FROM tbl_student WHERE st_num = #{st_num}")
	public int delete(String st_num);
}
