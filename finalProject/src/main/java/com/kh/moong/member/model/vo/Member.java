package com.kh.moong.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {

	private int userNo;						//	USER_NO	NUMBER
	private String student;						//	STUDENT	VARCHAR2(1 BYTE)
	private String teacher;						//	TEACHER	VARCHAR2(1 BYTE)
	private String userId;						//	USER_ID	VARCHAR2(30 BYTE)
	private String userPwd;						//	USER_PWD	VARCHAR2(100 BYTE)
	private String userName;						//	USER_NAME	VARCHAR2(30 BYTE)
	private String gender;						//	GENDER	VARCHAR2(1 BYTE)
	private String email;						//	EMAIL	VARCHAR2(100 BYTE)
	private Date birth;						//	BIRTH	DATE
	private Date enrollDate;						//	ENROLL_DATE	DATE
	private Date modifyDate;						//	MODIFY_DATE	DATE
	private String status;						//	STATUS	VARCHAR2(1 BYTE)
	
	
	

}
