# 「メソッド」の解答をここに書きます。
def greet(name)
  puts "こんにちは、#{name}さん！"
end

greet("Yusaku")
greet("Taro")

def judge_score(point)
  if point >= 60
    "合格"
  else
    "不合格"
  end
end

score1 = 75
score2 = 48

puts "#{score1}点: #{judge_score(score1)}"
puts "#{score2}点: #{judge_score(score2)}"