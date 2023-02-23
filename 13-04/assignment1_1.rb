SHOP_NAME = "Croma"
$company_name = "Dell"
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
    puts "Welcome to the #{SHOP_NAME}"
    puts "Welcome #{@userName}. Your invoice with #{@gst}% gst are below"
    puts "product details"
    @gstInRps = @gst * @productPrice / 100
    @total = @gstInRps + @productPrice
    puts "#{@productName} - #{@total}"
  end
end

p1 = Product.new("#{$company_name} laptop",220000)
p1.get_user()


