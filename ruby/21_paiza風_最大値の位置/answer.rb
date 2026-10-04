# 「Paiza風問題 5: 最大値の位置」の解答をここに書きます。
i = gets.to_i

max_index = 0
max_number = 0

i.times do |index|
  number = gets.to_i
  if number > max_number
    max_number = number
    max_index = index
  end
end

puts max_index + 1