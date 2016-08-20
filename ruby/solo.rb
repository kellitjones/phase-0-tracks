class Teddy
    # creating attributes
  attr_accessor :color, :buttons
  attr_reader :size

  # creating instance methods
  def initialize(color, buttons)
    puts "creating a new Teddy Bear..."
    @color = color
    @buttons = buttons
    @size = "small"
  end

  def girl_bear
    puts "What color should she be?"
    @color = gets.chomp.to_s
    puts "All of our bears have buttons. How many buttons, should she have?"
    @buttons = gets.chomp.to_i
      puts " You ordered one #{@size} girl bear . This bear has #{@buttons} buttons and is the color #{@color}."
  end

  def guy_bear
    puts "What color should he be?"
    @color = gets.chomp.to_s
    puts "All of our bears have buttons. How many buttons, should he have?"
    @buttons = gets.chomp.to_i
      puts " You ordered one #{@size} guy bear. This bear has #{@buttons} buttons and is the color #{@color}."
  end

  def unisex_bear
    puts "What color should the bear be?"
    @color = gets.chomp.to_s
    puts "All of our bears have buttons. How many buttons, should your bear have?"
    @buttons = gets.chomp.to_i
      puts " You ordered one #{@size} unisex bear. This bear has #{@buttons} buttons and is the color #{@color}."
  end

  def every_bear
    puts "Your order is a #{size} bear, that has #{@buttons} buttons and is #{@color}."
  end

end

orders = []

#  execute the given block endlessly until the code inside the block breaks on certain condition
loop do

  puts "What kind of bear would you like? Type 'done' to finish your order."
  type_of_b = gets.chomp.downcase

  if type_of_b == "done" || type_of_b == ""
        break
    end

    new_bear = Teddy.new("#{@color}", "#{@buttons}")
   orders << new_bear

    if type_of_b == "girl bear"
     new_bear.girl_bear

    elsif type_of_b == "guy bear"
      new_bear.guy_bear

    elsif type_of_b == "unisex bear"
      new_bear.unisex_bear
    else
      puts "Oh no! Unfortunately we can not make that type of bear. Please select one of the following bear types: girl bear, guy bear, or unisex bear. Thank you."
   end

end

orders.each do |details|
  details.every_bear
end