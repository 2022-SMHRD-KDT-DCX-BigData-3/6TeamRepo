package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@RequiredArgsConstructor

public class BoardDTO {
   @NonNull
   private int bd_seq;
   @NonNull
   private String bd_title;
   private String bd_content;
   private String bd_file;
   @NonNull
   private String mem_id;
   @NonNull
   private Timestamp bd_date;
   
   
   public BoardDTO(int bd_seq, String bd_title, String bd_content,String bd_file, String mem_id) {
      this.bd_seq = bd_seq;
      this.bd_title = bd_title;
      this.bd_content = bd_content;
      this.bd_file = bd_file;
      this.mem_id = mem_id;
 
  }
   
   public BoardDTO( String bd_title, String bd_content,String bd_file, String mem_id) {
	      this.bd_title = bd_title;
	      this.bd_content = bd_content;
	      this.bd_file = bd_file;
	      this.mem_id = mem_id;
	  }
   
}
   
