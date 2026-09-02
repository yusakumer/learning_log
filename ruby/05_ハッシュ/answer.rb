# 「ハッシュ」の解答をここに書きます。
profile = {
  name: "Yusaku",
  age: 27,
  city: "Tokyo"
}

puts "#{profile[:name]}さんは#{profile[:city]}に住んでいます。#{profile[:age]}歳です。"


stocks = {
  apple: 3,
  banana: 0,
  orange: 5,
  grape: 0
}

stocks.each do |fruit,quantity|
  if quantity > 0
    puts "#{fruit}: 在庫あり（#{quantity}個）"
  else
    puts "#{fruit}: 在庫切れ"
  end

  
end