=begin
This may seems hard to implement but here is how :
Logic:check the number of paretheses for a given expression.if equal then true else false.

3 functions : check_parentheses ,check_valid,remove
-----------------------------------------------------
check_parentheses : just check the number of parentheses return true if equal(valid)
                    else return false(invalid)
check_valid_char : return true if the given char is a parentheses

remove_parentheses : driver function :
                        *declare some array visit,queue,result_array
                        *initially queue and visit contain the initial expression
                        *result_array is empty
                        *found varialble is a flag ,set to true when ever a valid exp is found
                        *while loop keep running until the queue array is empty
                        *queue is updated when ever a new possible expression is found
                        *temp variable contains the possible expression created by remove a 
                            parentheses at a time and check it with visited array
                            if it is present in the visited array then loop if queue is not empty
                            else push it to both visited and queue
                        *queue elements are deleted at the beginning of the while loop 
                        *finally the result will be available at result_array

                        
=end 
def check_parentheses item
    if item =='(' || item == ')'
        return true
    else
        return false
    end
end

def check_valid string
    count=0
    for i in (0...string.length)
        if string[i] == '('
            count +=1
        elsif string[i]==')'
            count-=1
        end
    end
    if count<0
        return false
    end
    if count==0
        return true
    end
end

def remove_parentheses string
    return false if string.empty?
    visit=[]
    queue=[]
    result_array=[]
    temp=''
    found=false
    queue.push string
    visit.push string
    while !(queue.empty?)
        string=queue[0]
        queue.delete_at 0
        if check_valid string
            result_array << string
            found=true
        end
        next if found
        # generate all possible expression
        # and keep pushing it to the queue if it is not already in queue
        for i in (0...string.length-1)
            next if !check_parentheses string[i]
            temp= string.slice(0,i)+string.slice(i+1,string.length-1)
            if !(visit.include? temp)
                queue.push temp
                visit.push temp
            end
        end
    end
    return result_array
end

p remove_parentheses '()())()'