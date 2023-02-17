a = 'a'
b = :a
c ='a'
result = a.eql?b
result1= a.equal?b
result2 = a.eql?c
result3= a.equal?c

#below 3 lines will print the object_id of the respective variables
puts a.object_id
puts b.object_id
puts c.object_id

#below 4 lines will return the result
puts result
puts result1
puts result2
puts result3
