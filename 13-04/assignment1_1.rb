class Product
  
  def initialize(name,price)
    @productName=name
    @productPrice=price
    puts "Enter your name"
    @userName = gets.chomp
    puts "Enter GST"
    @gst = gets.chomp.to_i
  end
  
  def get_user
    =puts "Welcome #{@userName}. Your invoice with #{@gst}% gst are below"
    puts "product details"
    @gstInRps = @gst * @productPrice / 100
    @total = @gstInRps + @productPrice
    puts "#{@productName} - #{@total}"=
  end
end
  
p1 = Product.new('laptop',220000)
p2=Product.new('mouswe',200);
p2.get_user1
p1.get_user()

