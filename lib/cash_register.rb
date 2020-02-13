class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  @@list = []
  
  def total
    @total
  end
  
  def add_item(i, v, q = 1)
    a = v * q
    @@list << a
    @total += a
    q.times {@items << i}
  end
    
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      a = 100.0 - @discount
      b = a / 100.0
      c = @total * b
      @total = c.to_i
      return "After the discount, the total comes to $#{total}."
    end
  end
    
  def items
    @items
  end
    
  def void_last_transaction
    z = @@list[-1]
    @total -= z
    @@list.pop
  end
end
  
