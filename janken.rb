# じゃんけんアプリ
def janken
puts "じゃんけん..."
puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
select = ["グー","チョキ","パー"]
## ユーザーの入力を待機
player_hand = gets.chomp.to_i
program_hand = rand(3)

if player_hand == 3
  puts "うまく逃げ切れた"
  exit
elsif player_hand >= 4
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)のいずれかを入力してください"
  exit
end

puts "ホイ"
puts "----------------"
puts "あなた:#{select[player_hand]}"
puts "相手:#{select[program_hand]}"
puts "----------------"

if
  player_hand == program_hand
  puts "あいこです。"
  janken
  f1 = true
elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
  # puts "あなたの勝ち"
  attimuite_hoi
  f1 = false
elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
  # puts "あなたの負け"
  f1 = false
  attimuite_hoi_2
elsif (player_hand == 3)
end
end

# あっち向いてホイアプリ(勝った時)
def attimuite_hoi
  puts "あっち向いて"
  puts "0(上) 1(右) 2(下) 3(左)"
  select = ["上","右","下","左"]
  ## ユーザーの入力を待機
  player_direction = gets.to_i
  program_direction = rand(3)
  if player_direction >= 4 # 入力された数字が指定した数字以外だった場合
    puts "0(上) 1(右) 2(下) 3(左)のいずれかを入力してください"
    return
  end
  puts "ホイ"
  puts "----------------"
  puts "あなた:#{select[player_direction]}"
  puts "相手:#{select[program_direction]}"
  puts "----------------"
  if player_direction == program_direction 
    puts "あなたの勝ちです！" 
    return false 
  else 
    janken
    return false 
  end
end

# あっち向いてホイアプリ(負けた時)
def attimuite_hoi_2
  puts "あっち向いて"
  puts "0(上) 1(右) 2(下) 3(左)"
  select = ["上","右","下","左"]
  ## ユーザーの入力を待機
  player_direction = gets.to_i
  program_direction = rand(3)
  if player_direction >= 4 # 入力された数字が指定した数字以外だった場合
    puts "0(上) 1(右) 2(下) 3(左)のいずれかを入力してください"
    return
  end
  puts "ホイ"
  puts "----------------"
  puts "あなた:#{select[player_direction]}"
  puts "相手:#{select[program_direction]}"
  puts "----------------"
  if player_direction == program_direction 
    puts "コンピュータの勝ちです！" 
    return false 
  else 
    janken
    return false 
  end
end

# 実行部分
f1 = true # 初期値
while f1 do
    f1 = janken # じゃんけんメソッドの返り値がfalseになったらwhile文が終了する
end