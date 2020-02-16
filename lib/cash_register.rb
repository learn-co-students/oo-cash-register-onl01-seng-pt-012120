
class CashRegister
    attr_accessor :total, :discount, :price, :items
  
    def initialize(discount = 0)                        #everything needs to start off empty or at 0 just like real life
      @total = 0
      @discount = discount                              #whatever discount they put in
      @items = []
    end
  
    def add_item(title, amount, quantity = 1)             #every item argument comes with a price argument and its set to quantity 1
    #    @price = price                                    #price turned into an instance variable 
    #    @total += price * quantity                        #new total is the price* quantity
    #   if quantity > 1
    #     counter = 0
    #     while counter < quantity                        #goes through the loop until the counter reaches the amount in quantity 
    #       @items << item                                #puts items into instance varaible array
    #      counter += 1
    #   end
      #else
       # @items << item
      #end
    #end
    self.total += amount * quantity                      #doing it more oo
     quantity.times do
         items << title
       end
         self.price = amount * quantity
    end
  
    def apply_discount
      if @discount > 0                                              
        @to_take_off = (price * discount)/100                       #discount formula
        @total -= @to_take_off                                      #then we apply the discount by subtracting from the total
        return "After the discount, the total comes to $#{total}."
      else
        return "There is no discount to apply."
      end
    end
  
    def void_last_transaction
        self.total = self.total - self.price
    end
  
  end