# check given year is leap year or not
puts 'Enter year:'
year=gets.chomp.to_i
if (year%4==0 && year%100!=0) || year%400==0
    puts "Year #{year} is a leap year."
else
    puts "Not a leap year."
end