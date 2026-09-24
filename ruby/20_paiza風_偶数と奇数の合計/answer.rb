# 「Paiza風問題 4: 偶数と奇数の合計」の解答をここに書きます。
i = gets.to_i

even = 0
odd = 0

i.times do
  number = gets.to_i
  if number.even?
    even += number
  elsif number.odd?
    odd += number
  end
end

puts even
puts odd