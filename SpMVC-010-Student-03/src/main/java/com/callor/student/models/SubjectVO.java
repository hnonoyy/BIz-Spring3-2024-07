package com.callor.student.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SubjectVO {

	private String sb_code; // varchar(5)
	private String sb_name; // varchar(20)
	private String sb_prof; // varchar(20)
}
