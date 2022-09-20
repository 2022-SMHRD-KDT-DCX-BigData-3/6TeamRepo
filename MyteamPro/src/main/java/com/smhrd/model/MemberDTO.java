package com.smhrd.model;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class MemberDTO {
		
		@NonNull
		private String mem_id;
		@NonNull
		private String mem_pw;
		private String mem_name;
		private String mem_nick;
		private String mem_birthdate;
		private String mem_gender;
		private Timestamp mem_joindate;
		private String mem_type;
		
		public MemberDTO(String mem_id, String mem_pw, String mem_name, String mem_nick, String mem_birthdate, String mem_gender, String mem_type) {
			this.mem_id = mem_id;
			this.mem_pw = mem_pw;
			this.mem_name = mem_name;
			this.mem_nick = mem_nick;
			this.mem_birthdate = mem_birthdate;
			this.mem_gender = mem_gender;
			this.mem_type = mem_type;
		}
		
		public MemberDTO(String mem_id, String mem_pw, String mem_nick) {
			this.mem_id = mem_id;
			this.mem_pw = mem_pw;
			this.mem_nick = mem_nick;
		}
		
}
