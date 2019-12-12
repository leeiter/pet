package com.biz.pets.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class ServiceDTO {
	
	private long se_seq; 	//	number
	private String se_cat; 	//	nvarchar2(20 char)
	private String se_subject; //	nvarchar2(125 char)
	private String se_text; 	//	nvarchar2(2000 char)
	private String se_name; 	//	nvarchar2(20 char)
	private String se_date; 	//	varchar2(10 byte)

}
