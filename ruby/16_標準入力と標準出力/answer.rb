# 「標準入力と標準出力」の解答をここに書きます。
name = gets.to_s().chomp
puts "こんにちは、#{name}さん！"

number1 , number2 = gets.split.map(&:to_i)

puts number1 + number2