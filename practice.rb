# Ruby is a dynamic, interpreted, object oriented language
# Everything is an object and all of those objects can be overwritten
# Ruby is one of the easiest languages to read and with Rails it may be
# the best web development option period

# print prints the string to screen without a newline
print "Enter a Value: "

# Variables start with a lowercase letter or _ and may contain numbers
# gets stores input from the user and to_i turns it into an integer
first_num = gets.to_i

print "Enter Another Value: "

second_num = gets.to_i

# puts prints output plus a newline, to_s converts the variable into a
# string, you can combine values using +
puts first_num.to_s + " + " + second_num.to_s + " = " +
(first_num + second_num).to_s

# Arithmetic Operators
puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s

# Integers or Fixnums can store extremely large numbers
# They can go well beyond 4,611,686,018,427,387,903

numOne = 1.000

# You must put a 0 before your floats
num99 = 0.999

# Floating point calculations tend to be accurate
puts numOne.to_s + " - " + num99.to_s + " = " + (numOne - num99).to_s

# 14 Digits of accuracy is the norm
big_float = 1.12345678901234
puts (big_float + 0.00000000000005).to_s

# Everything is an object
puts 1.class
puts 1.234.class
puts "A String".class

# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned

A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT

# Returns a File object for writing
write_handler = File.new("yourSum.out", "w")

# Puts the text in the file
write_handler.puts("Random Text").to_s

# Closes the file
write_handler.close

# Read data from the defined file
data_from_file = File.read("yourSum.out")

puts "Data From File : " + data_from_file

# Use load to execute the code in another Ruby file
load "rubyOrNotRuby2.rb"


# Classes that include the Enumerable module gain collection capabilities
# but they must define a function called each

class Menu
  include Enumerable

  # Each provides items one at a time

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

# We can cycle through all the options

menu_options.each do |item|
  puts "Would you like : #{item}"
end

# Check to see if we have pizza
p menu_options.find {|item| item == "pizza"}

# Return items 5 letters in length
p menu_options.select {|item| item.size <= 5}

# Reject items that meet the criteria
p menu_options.reject {|item| item.size <= 5}

# Return the first item
p menu_options.first

# Return the first 2
p menu_options.take(2)

# Return the everything except the first 2
p menu_options.drop(2)

# Return the minimum item
p menu_options.min

# Return the maximum item
p menu_options.max

# Sort the items
p menu_options.sort

# Return each item in reverse order
menu_options.reverse_each {|item| puts item}

# Classes that include the Enumerable module gain collection capabilities
# but they must define a function called each

class Menu
  include Enumerable

  # Each provides items one at a time

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

# We can cycle through all the options

menu_options.each do |item|
  puts "Would you like : #{item}"
end

# Check to see if we have pizza
p menu_options.find {|item| item == "pizza"}

# Return items 5 letters in length
p menu_options.select {|item| item.size <= 5}

# Reject items that meet the criteria
p menu_options.reject {|item| item.size <= 5}

# Return the first item
p menu_options.first

# Return the first 2
p menu_options.take(2)

# Return the everything except the first 2
p menu_options.drop(2)

# Return the minimum item
p menu_options.min

# Return the maximum item
p menu_options.max

# Sort the items
p menu_options.sort

# Return each item in reverse order
menu_options.reverse_each {|item| puts item}

# Modules are made up of methods and variables, but they can't be instantiated
# They are used to add functionality to a class

# Allows you access to the Human module (Ruby 2+)
require_relative "human"
require_relative "smart"

module Animal
  def make_sound
    puts "Grrrrrr"
  end
end

# You can inherit a modules methods with prepend or include
# You can inherit from numerous methods instead of one class

class Dog
  include Animal
end

rover = Dog.new
rover.make_sound

class Scientist
  include Human
  prepend Smart # Any methods in Smart will superseed those in the class

  def act_smart
    return "E = mc^2"
  end

end

einstein = Scientist.new

einstein.name = "Albert"

puts einstein.name

einstein.run

puts einstein.name + " says " + einstein.act_smart

# --------------- POLYMORPHISM ---------------

class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Cardinal < Bird
  def tweet
    puts "Tweet tweet"
  end
end

class Parrot < Bird
  def tweet
    puts "Squawk"
  end
end

# Statically typed languages use duck typing to achieve polymorphism
# Ruby pays less attention to the class type versus the methods that can
# be called on it

generic_bird = Bird.new

generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)
