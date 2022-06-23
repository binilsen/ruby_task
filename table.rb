# multiplication table of a given number
def multiply num
    for i in 1..10 do
        puts "#{i}*#{num}=#{num*i}"
    end
end
print 'Enter number:'
multiply gets.chomp.to_i