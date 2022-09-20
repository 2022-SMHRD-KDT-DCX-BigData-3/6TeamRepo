
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
public class LikesDTO {
   @NonNull
   private int likes_seq;
   @NonNull
   private int bd_seq;
   @NonNull
   private String mem_id;
   private Timestamp likes_date;
   
   public void LikesDTO(int likes_seq, int bd_seq, String mem_id) {
	   this.likes_seq = likes_seq;
	   this.bd_seq = bd_seq;
	   this.mem_id = mem_id;
}
}
