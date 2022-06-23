=begin 
Driver function: invalid_parentheses
function overview: this function return an array that contain invalid set of parentheses
                    #stack  conditions
                    * if current char is ( then push
                    * if current char is ) then we have to check 3 conditions
                        1.if stack is empty ,if yes then push )
                        2.if stack  top contain ')' then push ')'
                        3.if stack top contain '(' then pop the stack
                    -------------------------------------------------
    Then we initally we call the driver function on the given string
        *if it returns empty stack then the given expression is already valid , return 
        else
        *we generate different possible expressions and call the driver function
            return those expressions whose stack size is 0 i.e no invalid parentheses
    
    finally return the result_array which contain valid possible parentheses
=end
def invalid_parentheses string ='()())()'
    stack=[]
    string=string.chars
    for i in 0..string.length do
        if string[i]=='('
            stack.push string[i]
        elsif string[i]==')'
           if stack.empty?
                stack.push string[i]
            elsif stack[stack.length-1]==')'
                stack.push string[i]
            elsif stack[stack.length-1]=='('
                stack.pop
            end
        end 
    end
    stack
end 
# def remove string 
#     if (string.count '(')==(string.count ')')
#         return []
#     else
#         [1,2,3] 
#     end
# end
strings=")("
min_remove=invalid_parentheses strings
min_remove=min_remove.size
result_array=[]
if min_remove>0
    for i in 0...strings.length do
        slice=strings.slice(0,i)+strings.slice(i+1,strings.length-1)
        temp=invalid_parentheses slice
        result_array << slice if (temp.size==0) && !(result_array.include? slice)
    end
else
    result_array=strings
end
p result_array


# string='()()()'
# for i in 0...string.length do
#     temp=string.slice(0,i)+string.slice(i+1,string.length-1)
#     p temp
# end