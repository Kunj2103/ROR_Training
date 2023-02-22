require 'json'

file = File.open("array.txt","r")
# content = file.sysread(100).chomp.split("]")[0].split("[")[1].split(", ")

content = JSON.parse(file.read) #this is another method by which we convert json format to array
hash = {}
i = 0

while i<content.length
  if hash.has_key? content[i].to_i
    hash[content[i].to_i] += 1
    
  else
    hash[content[i].to_i] = 1
  end
  i+=1
end
i = 0

output = File.new("output.txt","w+")



hash.each do |key,value|
  if value<2
    output.write( key.to_s + "=>" + value.to_s+ ", " )
    hash.delete(key)
  end
end

puts hash
