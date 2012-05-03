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
  end
end