      puts"じゃんけん..."
   
class Attimuite_hoi
    def jyanken
        @jyanken_result=""
        puts"0(グー)1(チョキ)2(パー)3(戦わない)を入力してください"
        
        player_hand=gets.to_i
        computer_hand=rand(0..2)
        hand_type=["グー","チョキ","パー"]
        
        if player_hand==3
            puts"戦いません"
            exit
            
        elsif player_hand>3
            puts"入力が間違っています"
            puts"じゃんけん..."
            return true
            
        else
            puts"ホイ！"
            puts"-----------------------"
            puts"あなた：#{hand_type[player_hand]}を出しました"
            puts"相手：#{hand_type[computer_hand]}を出しました"
            puts"-----------------------"
            
            if player_hand==computer_hand
                puts"あいこで..."
                return true
            
            elsif (player_hand==0 && computer_hand==1)||(player_hand==1 && computer_hand==2)||(player_hand==2 && computer_hand==0)
                puts"あっち向いて〜"
                @jyanken_result="win"
                return attimuite
                
            else (player_hand==0 && computer_hand==2)||(player_hand==1 && computer_hand==0)||(player_hand==2 && computer_hand==1)
                puts"あっち向いて〜"
                @jyanken_result="lose"
                return attimuite
                
            end 
        end
    end
    
    
    
  
    
    def attimuite
        puts"0(上)1(下)2(左)3(右)"
        
        player_face=gets.to_i
        computer_face=rand(0..3)
        face_type=["上","下","左","右"]
        
        puts"ホイ！"
        puts"-----------------------"
        puts"あなた:#{face_type[player_face]}"
        puts"相手:#{face_type[computer_face]}"
        puts"-----------------------"
        
        if player_face==computer_face&&@jyanken_result=="win"
            puts"あなたの勝ちです！"
            exit
        
        elsif player_face==computer_face&&@jyanken_result=="lose"
           puts"あなたの負けです"
           exit 
        
        else
            puts"じゃんけんに戻ります"
            puts"じゃんけん..."
            return true
        end
    end    
      
end 


attimuite_hoi=Attimuite_hoi.new()
attimuite_hoi.jyanken


next_game = true
    
    while next_game do
      next_game = attimuite_hoi.jyanken
    end

attimuite_hoi.attimuite    
  