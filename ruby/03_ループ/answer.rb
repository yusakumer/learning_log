# 「ループ」の解答をここに
(1..10).each do |i|
  if i % 2 != 0
    puts i
  end
end

(1..10).each do |i|
  if i.odd?
    puts i
  end
end

#偶数だけの合計した処理

sum = 0
(1..20).each do |i|
  if i % 2 == 0
    sum += i
  end
end

puts "偶数の合計は#{sum}です。"

sum = 0
(1..20).each do |i|
  if i.even?
    sum += i
  end
end

puts "偶数の合計は#{sum}です。"

