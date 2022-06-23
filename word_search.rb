dummy_word_list=["abcd", "array", "balooon"]

def get_word word_list,string
    word_regex=Regexp.new "^(#{string})"
    word_regex
    word_list.select!{|word| word.match(word_regex) }
    if word_list.length!=0
        return word_list        
    end
    return 'Search for another word'
end
puts 'Enter  a letter to search :'
string=gets.chomp
p get_word dummy_word_list,string