# 「Paiza風問題 8: 回文判定」の解答をここに書きます。

string = gets.to_s.chomp

if string == string.reverse
  puts "YES"
else
  puts "NO"
end
