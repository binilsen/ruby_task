# longest among given time
def max_time data
    data[0]=data[0].to_i*3600
    data[1]=data[1].to_i*60
    data[2]=data[2].to_i
    max=data.each.with_index.max
    max=max[1]
    case max
    when 0 
        puts "#{data[max]/3600} Hr"
    when 1 
        puts "#{data[max]/60} Min"
    when 2 
        puts "#{data[max]} Sec"
    else
        puts 'Error'
    end
end
time=[]
puts 'Enter hour:'
time.push gets.chomp.to_i
puts 'Enter minutes:'
time.push gets.chomp.to_i
puts 'Enter seconds:'
time.push gets.chomp.to_i
max_time time










# def max_time data
#     data[:hour].push data[:hour][0]*3600
#     data[:minutes].push data[:minutes][0]*60
#     data[:seconds].push data[:seconds][0]*1
#     return data.max_by{data.values}
# end
# time={}
# puts 'Enter hour:'
# time[:hour]=[gets.chomp.to_i]
# puts 'Enter minutes:'
# time[:minutes]=[gets.chomp.to_i]
# puts 'Enter seconds:'
# time[:seconds]=[gets.chomp.to_i]
# output= max_time time
# puts "#{output[1][0]} #{output[0]}"