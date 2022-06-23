# friend if length is 4
# else foe
def make_friend friend_list
    return "No friends :)" if friend_list.length===0
    my_friends=friend_list.select{|friend| friend if friend.length==4}
end
p make_friend  ["Ryan", "Kieran", "Jason", "Yous"]