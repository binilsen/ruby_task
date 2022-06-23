# generate fibonacci series 
print 'Enter limit:'
limit=gets.chomp.to_i
first,second,sum=0,1,0
while limit>0
    print "#{first},"
    sum=first+second
    first,second=second,sum
    limit-=1
end