class Count
  def counting name
    name = name.chomp
    occurance = {}  
    i=0
    length = name.size
    while i<length
      if occurance.has_key? name[i]
        occurance[name[i]] += 1
      else
        occurance[name[i]]=1
      end
      i+=1
    end
    puts occurance
  end
end

count = Count.new
name = gets.chomp
count.counting name