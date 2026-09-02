# 「クラスとインスタンス」の解答をここに書きます。
class Person
  def initialize(name,age)
    @name = name
    @age = age
  end

  def introduction
    "私は#{@name}です。#{@age}歳です。"
  end
end

person = Person.new("Yusaku",27)
puts person.introduction

class Counter
  def initialize
    @counter = 0
  end

  def increment
    @counter += 1
  end

  def value
    @counter
  end
end

counter = Counter.new
counter.increment
counter.increment
counter.increment
puts counter.value