require_relative 'coins'
class Machine
    attr_reader :display
    def initialize
      @display = 'INSERT COIN'
    end
    def insert coin
      if Coins::ACCEPTED_COINS.include?(coin)
        @display = coin.to_s + ' cents'
      elsif coin == 1
        @display = 'Cannot accept pennies. Please insert coin.'
      end
    end
end
