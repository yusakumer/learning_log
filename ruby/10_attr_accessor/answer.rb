# 「attr_accessor」の解答をここに書きます。
class Profile
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduction
    "私は#{@name}です。#{@age}歳です。"
  end

end

profile = Profile.new("Yusaku",27)
profile.age = 28
puts profile.introduction

class Book
  attr_reader :title
  def initialize(title)
    @title = title
    @status = "貸出可能"
  end

  def borrow
    @status = "貸出中"
  end

  def status
    @status
  end

end

book = Book.new("Ruby入門")
book.borrow
puts "#{book.title}は#{book.status}です。"