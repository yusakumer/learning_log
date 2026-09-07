# 「モジュールとinclude」の解答をここに書きます
module Greeting
  def greet
    "こんにちは！"
  end
end

class Person
  include Greeting
end

person = Person.new()
puts person.greet


module Loggable
  def log(message)
    "[LOG] #{message}"
  end
end

class User
  include Loggable
end

class Admin
  include Loggable
end

user = User.new
puts user.log("ログインしました")

adimn = Admin.new
puts adimn.log("設定を変更しました")