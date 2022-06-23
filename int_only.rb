# return only integer in a given array

def int_only_array elements
    return 0 if elements.length==0
    elements=elements.select {|element| element.is_a? Integer}
    elements.length==0?'No integer is found':elements
end
p int_only_array [1, "a", "cd" ,3]