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

  describe "add" do
    it "should return the sum of two monies" do
      money = Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('USD'))
      other = Pera::Money.new(:amount => 40, :currency => Pera::Currency.find('PHP'))

      expected_result = Pera::Money.new(:amount => 2, :currency => Pera::Currency.find('USD'))

      money.add(other).should == expected_result
    end
  end

  describe "to_usd" do
    it "should convert a non-usd money to usd" do
      money = Pera::Money.new(:amount => 40, :currency => Pera::Currency.find('PHP'))
      expected_result = Pera::Money.new(:amount => 1, :currency => Pera::Currency.find('USD'))
      money.to_usd.should == expected_result
    end
  end

  describe "to_s" do
    it "should display the amount and currency" do
      money = Pera::Money.new(:amount => 40, :currency => Pera::Currency.find('PHP'))
      expected = "40 PHP"

      money.to_s.should == expected
    end
  end
end