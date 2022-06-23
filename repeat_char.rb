# find the longest repeated character
def check_repeat_count input_string
    arr=input_string.split ''
    arr.uniq!
    result={}
    arr.each do |char|
        result[char]=input_string.count char
    end
    result.max_by{|k,v| v}
end
print 'Enter string:'
user_string=gets.chomp 
puts "#{user_string}=>#{check_repeat_count user_string}"
