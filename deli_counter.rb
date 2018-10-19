require 'pry'

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    #binding.pry
    puts "Currently serving #{katz_deli.shift}."
  end
end

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
      message="The line is currently:"

      katz_deli.each_with_index do |value, name|
        message += " #{name.to_i+1}. #{value}"
      end

      puts "#{message}"
    end
  end

line = []
take_a_number(line, "Justin")
take_a_number(line, "Sally")
now_serving(line)
now_serving(line)
now_serving(line)
