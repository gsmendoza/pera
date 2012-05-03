require 'spec_helper'

describe Pera::Currency do
  describe ".find" do
    it "should get the currency matching the symbol" do
      expected_currency = Pera::Currency.new(:symbol => 'USD')
      Pera::Currency.all = [expected_currency]
      Pera::Currency.find('USD').should == expected_currency
    end
  end

  describe ".all" do
    it "should be the default currencies, if @all is set" do
      expected_currency = Pera::Currency.new(:symbol => 'USD')
      Pera::Currency.all = [expected_currency]
      Pera::Currency.all.should == [expected_currency]
    end

    it "should be the default currencies, if @all is not set" do
      Pera::Currency.all = nil
      Pera::Currency.all.should_not be_empty
      Pera::Currency.all.map(&:symbol).should include('USD')
    end
  end
end