require_relative 'currency'
require_relative 'currency_converter'

# Sample currency objects:
currency_object_1 = Currency.new(1.00, :USD)
currency_object_2 = Currency.new(3, :EUR)
currency_object_3 = Currency.new(5, :JPY)
currency_object_4 = Currency.new(1.0, :USD)

puts "Currency objects can be created with an amount and a currency code. E.g: Currency.new(3, :EUR)."
Currency.new(3, :EUR)
puts Currency.new(3, :EUR).code
puts Currency.new(3, :EUR).amount

puts ""

puts "Currency objects equal other Currency objects with the same amount and currency code. For example, Currency.new(5, :JPY) == Currency.new(5, :JPY) returns"
  if Currency.new(5, :JPY) == Currency.new(5, :JPY)
    puts true
  else
    puts false
  end

puts ""

puts "Currency objects are NOT equal to other Currency objects with different amounts or currency codes. The conditional statement if Currency.new(3, :EUR) != Currency.new(5, :JPY) returns"
  if Currency.new(3, :EUR) != Currency.new(5, :JPY)
    puts true
  else
    puts false
  end

puts ""

puts "Currency objects can be added to other Currency objects with the same currency code. So two objects with 1 USD currency_object_1 + currency_object_4 returns"
puts currency_object_1 + currency_object_4

puts ""

puts "Currency objects can be subtracted by other Currency objects with the same currency code. currency_object_1 - currency_object_4 returns"
puts currency_object_1 - currency_object_4

puts ""

puts "Currency objects raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes. Mixing USD and JPY in currency_object_1 + currency_object_3 for instance will prompt the error."
# currency_object_1 + currency_object_3 # <-- Uncomment to test

puts ""

puts "Currency objects can be multiplied by a Fixnum or Float and return a Currency object. Expressions currency_object_3 * 4.25 and currency_object_2 * 25 return"
puts currency_object_3 * 4.25
puts currency_object_2 * 25

puts ""

puts "Currency.new can take one argument with a currency symbol embedded in it and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code."
print Currency.new(1.20, :USD).code
print " "
puts Currency.new(1.20, :USD).amount
print Currency.new("$1.20").code
print " "
puts Currency.new("$1.20").amount
# Inelegant solution: code defaults to :NA (which will never display).

puts ""

puts "Currency Converter accepts two currency codes and conversion rates, with one rate being 1.0 and the other being the conversion rate."
# CurrencyConverter.new{USD: 1.0, EUR: 0.74}
CurrencyConverter.new(currency_object_2, :JPY)
CurrencyConverter.new(currency_object_3, :USD)
CurrencyConverter.new(currency_object_4, :JPY)
# Doesn't accept a hash and it does not accept input rates

puts ""

puts "Currency Converter takes a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in."
  if CurrencyConverter.new(currency_object_1, :USD) == Currency.new(1, :USD)
    puts true
  else
    puts false
  end
# Fails for syntax reasons I can't quite find a fix for. If we puts
# CurrencyConverter.new(Currency.new(1, :USD), :USD)
# Currency.new(1, :USD)
# they both output the same values. And the comparator method accepts objects.

puts ""

puts "Currency Converter takes a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code."
puts CurrencyConverter.new(Currency.new(10, :USD), :JPY)

puts ""

puts "Currency Converter can be created with a Hash of three or more currency codes and conversion rates."
# CurrencyConverter.new{USD: 1.0, EUR: 0.74, JPY: 120.0}
# Does not accept hashes like {USD: 1.0, EUR: 0.74, JPY: 120.0} but will take arrays.

puts ""

puts "The Currency Converter can convert Currency in any currency code it knows about to Currency in any other currency code it knows about."
puts CurrencyConverter.new(Currency.new(5, :JPY), :EUR)

puts ""

puts "The Currency Converter raises an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about."
# CurrencyConverter.new(Currency.new(10, :EUR), :AED).converted_amount  # ~> ArgumentError: Uknown currency AED
