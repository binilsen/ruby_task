character_hash={}
File.open('rhyme.txt','r') do |file|
    file.collect do |line|
       line.chars.map{|x| p x}
        if character_hash.has_key?(x)
            character_hash
    end
end
