module Pera
  class App < Thor
    include Thor::Actions

    desc "execute", "Execute the Pera App"
    def execute
      first_money = Money.from_string(ask("Please enter the first amount: "))
      second_money = Money.from_string(ask("Please enter the second amount: "))
      say "The sum of #{first_money} and #{second_money} is #{first_money.add(second_money)}"
    end
  end
end
