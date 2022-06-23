# function in=string
# out = true or false if it has same number
# of x's and o's
def string_check my_string
    if !(my_string.include? 'x') && !(my_string.include? 'o')
        return true
    end
    if (my_string.count 'o') == (my_string.count 'x')
        return true
    end
    return false
end
print 'Enter a string:'
puts  string_check gets.chomp 