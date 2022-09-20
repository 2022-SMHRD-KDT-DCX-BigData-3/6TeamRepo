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

public class FollowDTO {
   private int follow_seq;
   @NonNull
   private String following;        
   @NonNull
   private String follower;
   private Timestamp follow_date;

   
   public FollowDTO(int follow_seq, String following, String follower) {
      this.follow_seq=follow_seq;
      this.following=following; //팔로우 대상
      this.follower=follower; //팔로우 신청한 사람
      this.follow_date=follow_date;
   }

   
}
