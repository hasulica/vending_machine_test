class Machine
    attr_reader :display
    $accepted_coins = ['5', '10', '25']
    def initialize
      @display = 'INSERT COIN'
    end
    def insert coin
      if $accepted_coins.include?(coin)
        @display = coin + ' cents'
      elsif coin == '1'
        @display = 'Cannot accept pennies. Please insert coin.'
      end
    end
end
