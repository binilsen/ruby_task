# ([""Begin on Road A"",""Right on Road B"",""Right on Road C"",""Left on Road D""])
#  ['Begin on Road D', 'Right on Road C', 'Left on Road B', 'Left on Road A']
# (['Begin on Lua Pkwy', 'Right on Sixth Alley', 'Right on 1st Cr'])
#  ['Begin on 1st Cr', 'Left on Sixth Alley', 'Left on Lua Pkwy']"

def reverse_direction direction
    temp=nil
    final_direction=[]
    direction=direction.map{|x| x.split ' '}
    place=direction.map{|x| x[-2]+' '+x[-1]}
    directions=direction.map{|x| [x[0],x[1]]}
    temp=directions.shift
    place=place.reverse
    directions=directions.reverse
    count=directions.length   
    final_direction <<(temp[0]+' '+temp[1]+' '+place[0])
    place.shift
    directions.each do |item|
        item[0]=item[0]=='Right' ? 'Left' : 'Right'
    end
    for i in (0...directions.length) do 
        final_direction << (directions[i][0].to_s+' '+directions[i][1].to_s+' '+place[i].to_s)
    end
    p final_direction
end 

reverse_direction  ['Begin on 1st Cr', 'Left on Sixth Alley', 'Left on Lua Pkwy']