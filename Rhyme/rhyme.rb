# custom exception
class Custom < StandardError
  def initialize(msg)
    super msg
  end
end
#  function to return the date suffix (nd,th,rd)
def format_date(date)
  temp = date % 10
  case temp
  when 1
    date.to_s + "st"
  when 2
    date.to_s + "nd"
  when 3
    date.to_s + "rd"
  else
    date.to_s + "th"
  end
end
# function which copy a txt file to another file 
def copy_file(file_name)
  destination_file_name = file_name + "_copy_" + get_time_stamp
  File.open(file_name + ".txt", "r") do |file_handler|
    File.open(destination_file_name, "w") do |file_copy_handler|
      file_copy_handler.write (file_handler.read)
    end
  end
end
# function returning the timestamp for the files
def get_time_stamp
  time_stamp = ""
  require "date"
  date = DateTime.now
  time_stamp += date.strftime("#{format_date(date.day)}%b%Y%I%M").to_s
  time_stamp = time_stamp + ".txt"
end

#copy file 'rhyme.txt'
copy_file "rhyme"

# regex for string checking
special_char = /[$#%@&*^]/
alphabet_only = /[a-z]/
# -----------------end

character_hash = {}

# opening file for checking special character and count for character duplication
file_handle = File.open("rhyme.txt", "r")
file_handle.collect do |line|
  line.downcase!
  line.chars.map do |char|
    begin
      if char.match? (special_char)
        raise Custom.new(char) # rasing custom exception whenever special character found
      end
    rescue Custom => exception
      p exception.message #printing special character passed by raise
    else # else block executes whenever there is no exception raised
      if char.match? (alphabet_only)
        character_hash[char] = character_hash[char].to_i + 1
      end
    end
  end
end
file_handle.close

# writing hash to file
File.open("hash_" + get_time_stamp, "w") do |file|
  file.puts character_hash
end

# sum of all duplicate occurrences
total_duplicate = character_hash.inject(0) do |sum, (key, value)|
  sum + value
end
puts "Sum of all duplicate occurrences:" + total_duplicate.to_s
