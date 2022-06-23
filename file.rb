# file handling

File.open('dummy.txt','r') do |file_handle|
    puts 'File Content:'
    puts file_handle.read
end
File.open('dummy.txt','a') do |file|
    10.times {file.write "sen"}
end