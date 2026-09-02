# 「ブロックとyield」の解答をここに書きます。
def three_times
  3.times do
    yield
  end
end

three_times do
  puts "Rubyを学習中です"
end


def repeat(count)
  (1..count).each do |i|
    yield i
  end
end
repeat(5) do |i|
  puts "#{i}回目: Ruby"
end