require './shopping_cart.rb'

class Product

def initialize(name, price, tax_rate)
  @name = name
  @base_price = price
  @tax_rate = tax_rate
end

  def total_price
    @total_price = total_price
  end

  def total_price=(total)
    @total_price = (price)*(tax_rate)
    puts @total_price
  end

end

hairspray = Product.new(hairspray, 69, 0.17)
# p hairspray.total_price
# Traceback (most recent call last):
# 	13102: from product.rb:1:in `<main>'
# 	13101: from /Users/tylerpalef/.rbenv/versions/2.5.1/lib/ruby/site_ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
# 	13100: from /Users/tylerpalef/.rbenv/versions/2.5.1/lib/ruby/site_ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
# 	13099: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/shopping_cart.rb:1:in `<top (required)>'
# 	13098: from /Users/tylerpalef/.rbenv/versions/2.5.1/lib/ruby/site_ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
# 	13097: from /Users/tylerpalef/.rbenv/versions/2.5.1/lib/ruby/site_ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
# 	13096: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:23:in `<top (required)>'
# 	13095: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:12:in `total_price'
# 	 ... 13090 levels...
# 	    4: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:12:in `total_price'
# 	    3: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:12:in `total_price'
# 	    2: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:12:in `total_price'
# 	    1: from /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:12:in `total_price'
# /Users/tylerpalef/Documents/BitMaker/projects/Ruby week 3 /Monday/product.rb:12:in `total_price': stack level too deep (SystemStackError)
# Tylers-MacBook-Air:Monday tylerpalef$
