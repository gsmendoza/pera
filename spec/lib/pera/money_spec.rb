require 'spec_helper'

describe Pera::Money do
  describe ".from_string" do
    it "should convert str to a money" do
      expected_money = Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('USD'))
      Pera::Money.from_string("1 USD").should == expected_money
    end
  end

  describe "==" do
    it "should be true if the money has the same amount and currency as other" do
      Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('USD')).should ==
        Pera::Money.new(:amount => 1.0, :currency => Pera::Currency.find('USD'))
    end

    it "should be false if the money does not have the same amount as other" do
      Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('USD')).should_not ==
        Pera::Money.new(:amount => 2, :currency => Pera::Currency.find('USD'))
    end

    it "should be false if the money does not have the same currency as other" do
      Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('USD')).should_not ==
        Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('PHP'))
    end
  end
end