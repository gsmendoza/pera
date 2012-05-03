module Pera
  class Currency < Valuable
    has_value :symbol

    def self.all
      @all ||= [
        new(:symbol => 'USD'), # , :usd_conversion_rate => 1
        new(:symbol => 'PHP')  # , :usd_conversion_rate => 1.0/40
      ]
    end

    def self.all=(values)
      @all = values
    end

    def self.find(symbol)
      all.detect{|currency| currency.symbol == symbol}
    end
  end
end