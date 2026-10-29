# 「Paiza風問題 10: 同じ文字の最長連続」の解答をここに書きます。
string = gets.chomp

previous_char = ""
current_length = ""
max_length = 0

string.each_char do |char|
  if char == previous_char
    current_length += 1
  else
    current_length = 1
  end

  if current_length > max_length
    max_length = current_length
  end

  previous_char = char

end

puts max_length