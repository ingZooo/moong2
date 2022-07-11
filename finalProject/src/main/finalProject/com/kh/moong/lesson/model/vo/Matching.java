package finalProject.com.kh.moong.lesson.model.vo;

import lombok.*;

@Data
public class Matching {
	
private int maNo;//	MA_NO	NUMBER
private int userno;//	USER_NO	NUMBER
private String random;//	RANDOM	VARCHAR2(1 BYTE)
private String gender;//	GENDER	VARCHAR2(1 BYTE)
private String subject;//	SUBJECT	VARCHAR2(30 BYTE)
private String area;//	AREA	VARCHAR2(30 BYTE)
private int fee;//	FEE	NUMBER
private int people;//	PEOPLE	NUMBER
private String chief;//	CHIEF	VARCHAR2(1 BYTE)
private String status;//	STATUS	VARCHAR2(1 BYTE)
private String maDay;//	MA_DAY	VARCHAR2(100 BYTE)
}
