# 「クラスメソッド」の解答をここに書きます。
class Temperature
  def self.celsius_to_fahrenheit(fahrenheit)
    fahrenheit * 9 / 5 + 32
  end
end

puts "摂氏25度は華氏#{Temperature.celsius_to_fahrenheit(25)}度です。"

class User
  @@count = 0

  def initialize(name)
    @@count += 1
    @name = name
  end

  def self.count
    @@count
  end
end

user1 = User.new("John")
user2 = User.new("Jane")
puts "登録ユーザー数: #{User.count}人"