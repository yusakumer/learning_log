# 「例外処理」の解答をここに書きます。
def divide(a, b)
  if b == 0
    raise ZeroDivisionError,"0では割れません。"
  end

  a/b
end

begin
  puts "10 ÷ 2 = #{divide(10, 2)}"
  puts "10 ÷ 0 = #{divide(10, 0)}"
rescue ZeroDivisionError => e
  puts "エラー: #{e.message}"
end

puts "処理を終了します。"