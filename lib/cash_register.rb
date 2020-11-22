require 'pry'

class CashRegister
    attr_accessor :total, :discount
    
    @@all_items = []

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @count = 0
    end

    def add_item(title, price, quantity = 1)
        @total = @total + price * quantity
        while @count < quantity do
            @items << title
            @count += 1
        end
        return "New total is #{@total}!"
    end

    def apply_discount
        # binding.pry
        if self.discount == nil
            return "There is no discount to apply."
        end
        money_saved = (@total * discount)/100
        @total -= money_saved
        "After the discount, the total comes to $#{@total}."
    end

    def items
        @items
    end

    # def void_last_transaction

    # end

    def self.all_items
        @@all_items
    end
end

