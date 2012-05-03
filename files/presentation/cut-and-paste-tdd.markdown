title: Cut and paste test driven development
author: George Mendoza

!SLIDE

## Test driven development

1. Write test.
2. Watch it fail _successfully_.
3. Write code.
4. Watch it pass.
5. Repeat.

!SLIDE

## Why TDD?

1. Tests are good.
2. TDD forces you to write tests.
3. TDD guides your programming.

!SLIDE

## Cut and paste test driven development

0. _Plan/Design code._
1. Write test.
2. Watch it fail successfully.
3. _Cut and paste code._
4. Watch it pass.
5. Repeat.

!SLIDE

## Demo: Pera app

    Scenario: I should be able to add monies in different currencies and convert them to usd
      When I open the app
      Then the app should ask me to enter the first amount in php
      When I enter the first amount
      Then the app should ask me to enter the second amount in usd
      When I enter the second amount
      Then the app should tell me the sum of the two amounts in usd

!SLIDE

## Pera app: design

* Money
  * `amount`
  * `currency`

* Currency
  * `symbol`
  * `usd_conversion_rate`

* money.add(other)

        Money.new(:amount => self.to_usd.amount + other.to_usd.amount, :currency => Currency.find('USD'))

* Currency.all

        [
          new(:symbol => 'USD', :usd_conversion_rate => 1),
          new(:symbol => 'PHP', :usd_conversion_rate => 1.0/40)
        ]

!SLIDE

## Demo

0. _Plan/Design code._
1. Write test.
2. Watch it fail successfully.
3. _Cut and paste code._
4. Watch it pass.
5. Repeat.

!SLIDE

## Does planning code violate TDD's test-first rule?

!SLIDE

## Thanks

* [http://github.com/gsmendoza/pera](github.com/gsmendoza/pera)

