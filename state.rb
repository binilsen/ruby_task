# sort the name by state
#  and list name of the state
state={'AZ': 'Arizona',
        'CA': 'California',
        'ID': 'Idaho',
        'IN': 'Indiana',
        'MA': 'Massachusetts',
        'OK': 'Oklahoma',
        'PA': 'Pennsylvania',
        'VA': 'Virginia'
    }
input_string=['John Daggett, 341 King Road, Plymouth MA','Alice Ford, 22 East Broadway, Richmond VA','Sal Carpenter, 73 6th Street, Boston MA']
for i in 0..2 do
  input_string[i]=input_string[i].split ' '
end
input_string.sort_by!{|x| x[-1]}
combined_string=''
input_string.each do|x|
     combined_string+=x.join ' ' 
     combined_string+=",#{state[x[-1].to_sym]} \n"
end
puts combined_string