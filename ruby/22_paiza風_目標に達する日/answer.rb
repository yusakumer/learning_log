# 「Paiza風問題 6: 目標に達する日」の解答をここに書きます。
sum = 0

target_date = 0

date ,value= gets.split.map(&:to_i)

date.times do |index|
  number = gets.to_i
  sum += number
  if sum >= value
    target_date = index + 1
    break
  end
end

puts target_date