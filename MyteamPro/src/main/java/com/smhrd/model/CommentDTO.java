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

public class CommentDTO {
   @NonNull
   private int cmt_seq;
   @NonNull
   private int bd_seq;
   @NonNull
   private String cmt_content;
   @NonNull
   private Timestamp cmt_date;
   private String mem_id;
   
   public void CommentDTO(int cmt_seq, int bd_seq, String cmt_content, String mem_id) {
      this.cmt_seq = cmt_seq;
      this.bd_seq = bd_seq;
      this.cmt_content = cmt_content;
      this.cmt_date = cmt_date;
      this.mem_id = mem_id;
   }
   
   public CommentDTO(int bd_seq, String cmt_content, String mem_id) {
	   this.bd_seq = bd_seq;
	   this.cmt_content = cmt_content;
	   this.mem_id = mem_id;
   }
}
