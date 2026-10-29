# 「Paiza風問題 9: 最も多い文字」の解答をここに書きます。

string = gets.chomp
hash = Hash.new

string.each_char do |char|
  if hash[char]
    hash[char] += 1
  else
    hash[char] = 1
  end
end

puts hash.max_by { |k,v| v }[0]
