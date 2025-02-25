package com.callor.student.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class StudentVO {

	private String st_num;
	private String st_name;
	private String st_dept;
	private int st_grade;
	private String st_tel;
	private String st_addr;
	
}
