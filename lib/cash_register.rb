class CashRegister
  
  attr_accessor :total 
  attr_reader :discount 
  
  def initialize(discount = nil) 
    @total = 0
    @discount = discount 
    @items = []
    @list = {}
  end 
  
  def add_item(title, price, quantity = 1)
    i = 0
    while i < quantity do 
      @items << title
      i += 1
    end 
    @list[title] = [price, quantity]
    @total += price * quantity
  end 
  
  def apply_discount
    if !!@discount 
      @total -= @total * @discount/100
      return "After the discount, the total comes to $800."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def list 
    @list 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    if @list.length > 1 
      @total -= @list[@items[@items.length - 1]][0] * @list[@items[@items.length - 1]][1]
      @list.delete_if{|key| key == @items[@items.length - 1]}
      @items.pop()
    else 
      @list.delete(@list[@items[@items.length - 1]])
      @items.pop()
      @total = 0.0
    end 
      
  end 
    
  
end
