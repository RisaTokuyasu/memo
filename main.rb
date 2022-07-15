
def janken()

    if @aiko == 1
      puts "　あいこで...."

    else
      puts "\n　じゃんけん..."
    end

    puts "\n　０(グー)　１(チョキ)\n　２(パー)　３(戦わない)" 

    #変数を定義
    player_hand = gets.to_i
    program_hand = rand(3) 

    puts "----------------"

      #条件以外の数字の場合の処理
      if player_hand > 4
        puts "入力された値が無効です"
        return true

      elsif player_hand == 3
        puts "じゃんけんを終了します"
        return false

      elsif @aiko == 1
        puts "  ..ショ!! "

      else
        puts " ..ポンッ!! "
      end 

    jankens= ["グー","チョキ","パー"]
    @aiko = 0
    
    #じゃんけん結果
    puts "\nあなた：#{jankens[player_hand]}を出しました！"
    puts "相手：#{jankens[program_hand]}を出しました！"
    puts "\n----------------"

      if player_hand == program_hand
        @aiko = 1
        janken()
        
      elsif player_hand < program_hand  
        @game = 1
        second_game()
        
      elsif player_hand == 2 && program_hand == 0
        @game = 1
        second_game()

      else
        @game = 2
        second_game()
      end

end

#あっち向いてホイ
def second_game()
  puts "\n　あっち向いて〜..."
  puts "\n　０(上) 　１(下) \n　２(右) 　４(左)"

  new_player_hand = gets.to_i
  new_program_hand = rand(4)
  puts "----------------\n..ホイッ!!"

  face_code = ["上","下","右","左"]

  puts "\n#{face_code[new_player_hand]}"
  puts face_code[new_program_hand]
  puts "----------------"


  #勝敗
  if new_player_hand == new_program_hand && @game == 1
    puts "★☆★あなたの勝ち★☆★(๑•̀ㅂ•́)و✧\n Next Game ~"
    janken()

  elsif new_player_hand == new_program_hand && @game == 2
    puts "あなたの負け...(´；ω；｀)\n Next Game ~"
    janken()

  else
    janken()

  end


end

next_game = true

while next_game 

  next_game = janken()

end
