module Pera
  class Money < Valuable
    has_value :amount
    has_value :currency

    def self.from_string(str)
      tokens = str.match(/(\d+\.?\d*)\s*(\w+)/)
      new(:amount => tokens[1].to_f, :currency => Currency.find(tokens[2]))
    end

    def ==(other)
      self.amount.to_f == other.amount.to_f && self.currency == other.currency
    end

    def add(other)
      Money.new(:amount => self.to_usd.amount + other.to_usd.amount, :currency => Currency.find('USD'))
    end

    def to_s
      "#{amount} #{currency.symbol}"
    end

    def to_usd
      Money.new(:amount => self.amount * self.currency.usd_conversion_rate, :currency => Currency.find('USD'))
    end
  end
end