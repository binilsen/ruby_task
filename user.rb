# User profile metrics
require 'date'

puts 'Please enter your name:'
name=gets.chomp 
puts name+'!'
puts 'Please enter family name:'
family_name=gets.chomp.strip
puts family_name+'!'
puts 'Year of birth:'
birth_year=gets.chomp.to_i
puts "#{2022-birth_year} years old"
puts 'Please enter height in meters:'
height=gets.chomp.to_i
puts "User height in inches:#{height*39.37}."
