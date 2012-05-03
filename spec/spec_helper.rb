require 'pry'

require 'pera'

RSpec.configure do |config|
  config.before :each do
    Pera::Currency.all = nil
  end
end
