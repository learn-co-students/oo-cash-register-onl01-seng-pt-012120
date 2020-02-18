class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction, :prices
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end
  
  def add_item(title, price, x = 1)
    if x > 1
      y = 0
      while y < x
      @items << title
      @prices << price
      y += 1
      end
    else
      @items << title
      @prices << price
    end
    
    @total += price*x
    @last_transaction = (@prices.pop)*x
    @total
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
end
