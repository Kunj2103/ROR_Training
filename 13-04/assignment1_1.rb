SHOP_NAME = "Croma"
$company_name = "Dell"
class Product
  def initialize(name,price)
    @productName=name
    @productPrice=price
  end
  
  def user_info
  	puts "Enter your name"
    @userName = gets.chomp
    puts "Enter GST"
    @gst = gets.chomp.to_i
  end
  
  def billing_info
    puts "Welcome to the #{SHOP_NAME}"
    puts "Welcome #{@userName}. Your invoice with #{@gst}% gst are below"
    puts "product details"
    gstInRps = @gst * @productPrice / 100
    total = gstInRps + @productPrice
    puts "#{@productName} - #{total}"
  end
end

p1 = Product.new("#{$company_name} laptop",220000)
p1.user_info
p1.billing_info
