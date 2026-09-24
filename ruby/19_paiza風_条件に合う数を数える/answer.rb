# 「Paiza風問題 3: 条件に合う数を数える」の解答をここに書きます。
n ,threshold = gets.split(' ').map(&:to_i)

numbers = gets.split(' ').map(&:to_i)

count = numbers.count{|n| n > threshold }
puts count




