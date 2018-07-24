require './product'

class ShoppingCart
  def initialize
    @cart = []
  end

  def add(item)
    @cart << item
  end

  def remove(item)
    @cart.delete(item)
  end

  def items
    return @cart
  end

  def total
    total = 0
    @cart.each do |item|
      if item.tax_class == 'exempt'
        total += (item.quantity * item.price)
      elsif item.tax_class == 'import'
        total += ((item.quantity * item.price)*(1 + item.imported))
      else
        total += ((item.quantity * item.price) * (1+item.standard))
      end
    end
    return total.round(2)
  end
end

money = ShoppingCart.new
hairspray = Product.new(hairspray, 69, 0.17)
puts money.total
