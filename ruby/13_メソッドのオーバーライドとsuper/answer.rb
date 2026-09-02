# 「メソッドのオーバーライドとsuper」の解答をここに書きます。
class Animal
  def initialize(name)
    @name = name
  end
  def introduce
    "私は#{@name}です。"
  end
end

class Dog < Animal
  def introduce
    "私は#{@name}です。犬です。"
  end
end

dog = Dog.new("ポチ")
puts dog.introduce


class Person
  def initialize(name,age)
    @name = name
    @age = age
  end
end

class Student < Person
  def initialize(name,age,school)
    super(name,age)
    @school = school
  end

  def introduction
    "私は#{@name}です。#{@age}歳で、#{@school}学校に通っています。"
  end
end

student = Student.new("Yusaku",27,"Ruby")
puts student.introduction