# require 'currency.rb'                                                                  # ~> LoadError: cannot load such file -- currency.rb
# require './currency.rb'
# require 'currency'
# require './currency'
# require '/Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb'
# require_relative 'currency.rb'
# require_relative './currency.rb'
require_relative 'currency'            # => true
# require_relative './currency'
# require_relative '/Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb'
#
require_relative 'currency_converter'  # => true

currency1 = Currency.new(3, :USD)  # => #<Currency:0x007fda1c0b26a8 @amount=3, @code=:USD>
currency2 = Currency.new(5, :EUR)  # => #<Currency:0x007fda1c0b2220 @amount=5, @code=:EUR>

                                                             # ~> TypeError: Currency can't be coerced into Fixnum
convert(Currency.new(5, :USD), :USD)
currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
#takes amount and code and conversion code and gives amount in conversion code
#  references key value of hash and multiplies it by the amount

USD = Currency.new("USD")
USD.Currency

USD = CurrencyConverter.new("USD")
USD.code



#
# USD_currency.set_amount_of_currency(12)
# USD_currency
#
#
# # amount_of_currency
# #  JPY_currency.set_amount_of_currency(16)    # => 16
#
# # Should be created with an amount and a currency code
#
# dollar = Currency.new(1)
# dollar.currency_dollar
#
# yen = Currency.new(1)
# yen.currency_yen
#
# euro = Currency.new(1)
# euro.currency_euro
#
#############
# Should equal another Currency object with the same amount and currency code
# Should NOT equal another Currency object with different amount or currency code
#
# puts "Currency object equals another currency object with the same amount and currency code?"
#
# if dollar.currency_dollar == dollar.currency_dollar
#   print "#{dollar.currency_dollar} == #{dollar.currency_dollar}"
#   puts true
# else
#   puts false
# end
#
# puts "Currency object does NOT equal another currency object with different amount or currency code"
# if yen.currency_yen != euro.currency_euro
#   puts true
# else
#   puts false
# end
#   #
#
#
# ######
# trex = Currency.new(1)
# trex.speak
#
# trex = Dinosaur.new
# trex.speak("RAWRRRR", "T-Rex")

###
# THOUGHTS ON HW:
#
# prolly use a local variable as the arbitrary currency value to set
# and…
# …use instance variable @sign as the fixed conversion?
#
#
# using both of these allows you to get different results for two class instances from one defined method
#
# def set_amount_of_currency(new_amount)
#   @amoung_of_currency = new_amount
# end
# USD_currency.set_amount_of_currency(12) # => 12
# JPY_currency.set_amount_of_currency(16)    # => 16
#
# def add_currency
#   size_of_add = 2.6
#   @amount_of_currency -= size_of_add
# end
#
# def add_currency(size_of_add = 2.6)   #default argument
#   @amount_of_currency -= size_of_add
# end
#

# ~> TypeError
# ~> Currency can't be coerced into Fixnum
# ~>
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb:43:in `*'
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb:43:in `*'
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/app.rb:17:in `<main>'
