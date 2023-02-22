elements = ['two', 'three', 'one']
hash_to_be_sorted = {'three' => 3, 'two' => 2, 'one' => 1}
# result = {}
# func = Proc.new{
#   elements.each do |k|
#     result[k]=hash_to_be_sorted[k]
#   end
#   puts result
# }
# func.call

#this is the another method to perform this task without creating empty hash
func  = Proc.new{
     p elements.map{|key|[key,hash_to_be_sorted[key]]}.to_h
}
func.call

