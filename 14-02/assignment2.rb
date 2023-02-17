a=true
b=false
result = a and b
result1 = a && b
result2 = (a and b)
puts result  #this will give result true because '=' has higher precendence than 'and'
puts result1 #This will give result false because '&&' has higher precedence than '='
puts result2 #this will give result false because '()' has higher precedence than '=' and 'and' 
