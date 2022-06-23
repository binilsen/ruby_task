# check if the given strings follows a pattern
#  of vowel to non-vowel character
# sample ateciyu = yes
vowel_regex=/[aeiou]/
non_vowel_regex=/[^aeiou]/
puts 'Enter a string:'
string=gets.chomp
vowel=true
non_vowel=true
for i in (0...string.length) do
   if i.even?
      vowel=(vowel_regex.match? string[i]) && vowel
      break if ! vowel
   end
   if i.odd?
      non_vowel=(non_vowel_regex.match? string[i]) && non_vowel
       break if ! non_vowel
   end
end
if vowel && non_vowel
   print 'Yes'
else 
   print 'No'
end