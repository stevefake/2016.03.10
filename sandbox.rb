# Currency class -
#  will represent an amount of currency (a real-world thing you can point to)
# Currency objects:
#
# Should be created with an amount and a currency code
require_relative 'Currency'            # => true
require_relative 'currency_converter'  # => true

Currency_Symbols = {
  "$" => :USD,        # => :USD
  "¥" => :JPY,        # => :JPY
  "€" => :EUR         # => :EUR
}                     # => {"$"=>:USD, "¥"=>:JPY, "€"=>:EUR}
#
# def initialize(amount, *code)
#    @amount = amount
#   #  @code = code
# end                            # => :initialize

Currency.new(1.20, :USD)  # => #<Currency:0x007fba5d08aba0 @amount=1.2, @code=:USD>
Currency.new("$1.20")     # ~> ArgumentError: wrong number of arguments (given 1, expected 2)


# USD: 1
# JPY: 1
# EUR: 1

# Should equal another Currency object with the same amount and currency code

# if
#   USD: 1 == USD: 1
#   puts true
# end

# Should NOT equal another Currency object with different amount or currency
#  code

# if
# $1 != ¥1
# $1 != €1
# ¥1 != €1
# puts true
# end

# Should be able to be added to another Currency object with the same currency
#  code

# $1 + $1 = $2

# Should be able to be subtracted by another Currency object with the same
#  currency code

# $1 - $1 - $0

# Should raise a DifferentCurrencyCodeError when you try to add or subtract
#  two Currency objects with different currency codes.

# if currency_symbol != currency_symbol
# puts "Error: Different currency code"
# end

# Should be able to be multiplied by a Fixnum or Float and return a Currency
#  object

# $1 * 5 = $5
# $1 * 5.0 = $5

# Currency.new should be able to take one argument with a currency symbol
#  embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency
#  code. It can also take two arguments like before, one being the amount and
#  the other being the currency code.

# Currency.new("$1.20") == USD: 1.20
# ¥1 == ¥1



# CurrencyConverter - will represent a currency converter (arguably a
#  real-world person, but actually a set of procedures)
# CurrencyConverter objects:
#
# Should be initialized with a Hash of currency codes to conversion rates
#  (see link to rates below)

# def initialize    #does this hash need to parse them all out?
#   currency_codes = {
#     dollar => 1.0
#     euro => 0.9
#     yen => 113.8
#   }
# end

# At first, just make this work with two currency codes and conversation rates,
#  with one rate being 1.0 and the other being the conversation rate. An example
#  would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth
#  0.74 euros.

# {USD: 1.0, EUR 0.9}

# Should be able to take a Currency object and a requested currency code that
#  is the same currency code as the Currency object's and return a Currency
#  object equal to the one passed in. That is,
#  currency_converter.convert(Currency.new(1, :USD), :USD) ==
#  Currency.new(1, :USD)

# currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)

# Should be able to take a Currency object that has one currency code it knows
#  and a requested currency code and return a new Currency object with the right
#  amount in the new currency code

# 1.0, :USD .convert 0.9, :EUR

# Should be able to be created with a Hash of three or more currency codes and
#  conversion rates. An example would be this: {USD: 1.0, EUR: 0.74, JPY: 120.0},
#  which implies that a dollar is worth 0.74 euros and that a dollar is worth 120
#  yen, but also that a euro is worth 120/0.74 = 162.2 yen.

# currency_conversion_hash = {
#   USD: 1.0 => EUR: 0.9
#   USD: 1.0 => JPY: 113.8  #how construct the hash for the implicit conversions?
# }

# Should be able to convert Currency in any currency code it knows about to
#  Currency in any other currency code it knows about.

# (1.0 :USD).convert(JPY) # => 113.8 :JPY

# Should raise an UnknownCurrencyCodeError when you try to convert from or to a
#  currency code it doesn't know about.
#
# class UnknownCurrencyCodeError
#   def initialize
#     if
#       raise UnknownMethodError
#         puts "Uknown Currency Code Error"
#     end
#   end
# end

# >> The amount in EUR is 5.4.

# ~> ArgumentError
# ~> wrong number of arguments (given 1, expected 2)
# ~>
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb:18:in `initialize'
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/sandbox.rb:21:in `new'
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/sandbox.rb:21:in `<main>'
