require "pry"

class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << title
  end
  
  def apply_discount
    if @discount != 0
      discount_as_decimal = @discount.to_f * 0.01
      total_float = @total.to_f
      discounted_amount = total_float * discount_as_decimal
      total_discounted_float = total_float - discounted_amount
      @total = total_discounted_float.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end


end
