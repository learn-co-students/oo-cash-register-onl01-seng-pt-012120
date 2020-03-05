class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount if discount != nil
    @items = []
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << name
    end
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount
      self.total = self.total - self.total*self.discount/100
      # self.total = self.total * (1 - self.discount/100.0) does not return success message with updated total, it gives $800.0 instead of $800
      new_total = "After the discount, the total comes to $#{self.total}."
    else
      new_total = "There is no discount to apply."
    end
    return new_total
  end
  
  # def items
  #   @items
  # end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
  
end