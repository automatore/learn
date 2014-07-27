require_relative "cart.rb"
require_relative "item.rb"
require_relative "real_item.rb"
require_relative "virtual_item.rb"

item1 = VirtualItem.new({:price=>77, :weight=>154, :name=>"apple"})
item2 = RealItem.new({:weight=>555, :name=>"samsung"})
cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items
item1.info {|attr| puts attr}
item2.info {|attr| puts attr}

