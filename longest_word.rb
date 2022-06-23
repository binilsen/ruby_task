def get_longest_word string
    string=string.split ' '
    p string.max_by{|x| x.size}
end
get_longest_word ' O\'Connor A sailor went to sea, sea, sea'