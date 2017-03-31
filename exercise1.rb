#Class Time
class Person

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def greeting
    "Bonjour, je m'appelle #{full_name} "
  end

end


class Student < Person

  def learn
    puts "I got this!!!!"
  end

end


class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

end

amanda = Student.new("amanda", "punsammy")
puts amanda.full_name
puts amanda.greeting
Chris = Instructor.new("Chris", "Rock")
puts Chris.greeting
Christina = Student.new("Christina", "Aguilera")
puts Christina.greeting
puts Chris.teach
puts Christina.learn

#calling a method from the Instructor.class won't work because these classes are seperate
#The methods within each class are instance methods and will only apply for the instance variables within that class
#The Student class and the Instructor class both inherit from the Person class. If the method was in the person class it would be possible
puts Christina.teach
