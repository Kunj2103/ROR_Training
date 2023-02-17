class Redo
	
	def initialize(num)
		@userInput=num
	end
	def printVal
		for i in 0..5
			if @userInput>=i then
				puts "the value of userInput- #{@userInput} and value of i-#{i}"
				i+=1
				redo #it will execute puts statement when the condition of the loop will satisfied
			end
		end
	end
	
end


c2 = Redo.new(2)
c2.printVal
