class People
  attr_accessor :name

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

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

# chris.greeting
# cristina.greeting

chris.teach
cristina.learn
# cristina.teach does not work as the method "teach" is not defined within the Student class, only within Instructor.
