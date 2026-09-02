# 「継承」の解答をここに書きます。
class Animal
  def initialize(name)
    @name = name
  end

  def introduce
    "私は#{@name}です。"
  end

end

class Dog < Animal
  def speak
    "ワンワン！"
  end
end

dog = Dog.new("ポチ")
puts dog.introduce
puts dog.speak


class Employee
  def initialize(name)
    @name = name
  end

  def greet
    "私は#{@name}です。よろしくお願いします。"
  end

end

class Manager < Employee
  def manage_team
    "チームを管理します。"
  end
end

manager = Manager.new("Yusaku")
puts manager.greet
puts manager.manage_team