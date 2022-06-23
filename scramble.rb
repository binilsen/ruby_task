
def scramble mixed_word,word
    word_regex=Regexp.new "[#{word}]"
    mixed_word=mixed_word.scan word_regex
    mixed_word.uniq!
    return true if mixed_word.length==word.length
    false
end

puts scramble 'cedewaraaossoqqy','ccodewar'