class Player
  def hand
    puts "数字を入力してください"
    puts "0: グー\n1: チョキ\n2: パー"
      player_hand = gets.chomp
      if ["0","1","2"].include?(player_hand)
         player_hand.to_i
      else
         hand
      end
     #コンソールを入力Iち状態にし、プレイヤーがコンソールからち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    enemy_hand　= rand(2) + 0
   
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作 成する  
  end
end

class Janken
  def pon(player_hand, enemy_hand)
      jankens = ["グー","チョキ","パー"]
     if (player_hand - enemy_hand + 3) % 3 == 2
        puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです"
     elsif(player_hand - enemy_hand + 3) % 3  == 1
        puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです"
    
     else (player_hand - enemy_hand + 3) %3 == 0 
        puts "相手の手は#{jankens[enemy_hand]}です。あいこです"
     end
     if
      (player_hand - enemy_hand + 3 )%3 == 0 
       
       
        player = Player.new
        enemy  = Enemy.new
        janken = Janken.new
      
       janken.pon(player.hand, enemy.hand)
       
      end
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end
end

    player = Player.new
    enemy  = Enemy.new
    janken = Janken.new
    
    # 下記の記述で、ジャンケンメソッドが起動される
    
    janken.pon(player.hand, enemy.hand)
    
