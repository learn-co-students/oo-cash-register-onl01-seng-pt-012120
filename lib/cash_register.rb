
  
  class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def total 
    @total 
  end 

  def add_item(title, price, quantity = 1) 
    quantity == 1 ? self.total+= price : self.total += price * quantity
    @items.fill(title, @items.length , quantity)
    @last_transaction = price * quantity
  end 
    
  def apply_discount
    if discount == 0 
      return "There is no discount to apply."
    else 
      total_disc = ((discount.to_f/100) * total).to_i
      self.total = total.to_i - total_disc
      return "After the discount, the total comes to $#{self.total}."
    end
  end 
  
  def items 
    @items
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end 
end 
