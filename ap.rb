def get_difference list
    diff=[]
    for i in (0...list.length-1) do
         return (list[i+1]-list[i]) if diff.include?(list[i+1]-list[i])
        diff<<(list[i+1]-list[i])
    end
   return 0
end
def check_sequence seq
    d=get_difference seq
    return if d==0
    element,i=0,0
    created_seq=[]
    while element<seq.max
        created_seq[i]=seq[0]+i*d
        element=seq[0]+i*d
        i+=1
    end
    created_seq=created_seq-seq
    puts d>0 ? "Increasing by #{d}": "Decreasing by #{d}"
    if created_seq.empty?
        puts "No missing elements"
    else
        print "Missing number is "
        created_seq.each {|x| print x.to_s+' ' }
    end
end

sequence=[3,6,12,15,15]

check_sequence sequence
