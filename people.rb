class People
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}."
  end
end

class Student < People
  def learn
    puts "I get it!"
  end
end

class Instructor < People
  def teach
    puts "Everything in Ruby is an object."
  end
end
