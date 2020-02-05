class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @last_transaction = []
    @total = 0
    @discount = discount.to_f
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    x = 0
    while quantity > x
      @items << title
      x += 1
    end
    @total += (price.to_f * quantity)
    last_transaction << price.to_f * quantity
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount.to_f / 100.to_f
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= last_transaction.last
    @items.pop
    @last_transaction.pop
    @total
    if @items.length == 0
      @total.to_f = 0
    end
  end
  
end
