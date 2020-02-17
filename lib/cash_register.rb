def CashRegister
 attr_accessor :total, :apply_discount, :items, :void_last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @apply_discount = apply_discount
    @item = []
    end 
  
  def total
    @total
  end
  
  def items 
    @items = []
end 
  
  def void_last_transaction
    
end 
  
end 
  
