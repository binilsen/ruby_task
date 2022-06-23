def likes user_list
    return 'no one likes this' if user_list.length==0
    message=''
    user_count=user_list.length
    case user_count
    when user_count==0
        message+="#{user_list[0]}like this"
    when user_count==1
        message+="#{user_list[0]} and #{user_list[1]} like this"
    else
        message+="#{user_list[0]} , #{user_list[1]} and #{user_list.length-2} others  like this"
    end
end
p likes ["Alex", "Jacob", "Mark", "Max"] 