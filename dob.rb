# Date of birth calculator
=begin
1.read age in years
2.convert age to date and calculate birth year 
=end
require 'date'
puts 'Please enter age in years:'
years=gets.chomp.to_i
puts "Year of birth:#{Date.today.year-years}"
