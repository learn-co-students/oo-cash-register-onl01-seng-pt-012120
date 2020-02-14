class CashRegister
  
  attr_accessor :items, :total, :discount, :price, :last_transaction
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount 
  end 
  
  def add_item(title, price, quantity = 1)
      @price = price
      if quantity > 1 
      counter = 0 
      while counter < quantity
      @items << title 
      counter += 1 
    end
  else
    @items << title
    end
    @total += price * quantity
    @last_transaction = price * quantity
  end 
  
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction()
    @total -= @last_transaction
  end

end 