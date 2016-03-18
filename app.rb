require_relative 'currency'
require_relative 'currency_converter'

puts "Currency objects can be created with an amount and a currency code:"
currency_object_1 = Currency.new(1.00, :USD)
currency_object_2 = Currency.new(3, :EUR)
currency_object_3 = Currency.new(5, :JPY)

currency_object_1 = Currency.new(1.0, :USD)
currency_object_1.code
currency_object_1.amount
currency_object_1.add_five
currency_object_1.amount
currency_object_1

currency_object_2 = Currency.new(5, :EUR)

curobj1_converted = CurrencyConverter.new(currency_object_1, :EUR)
curobj2 = CurrencyConverter.new(currency_object_2, :JPY)

puts CurrencyConverter.new(currency_object_3, :EUR).converted_amount

# Specs:
# C1: Should be created with an amount and a currency code

currency_object_1 = Currency.new(1.0, :USD)

# C2: Should equal another Currency object with the same amount and currency code
  #False, b/c different object_ids. Def new method for == to test output values only? (see currency class line 60); pg 146 Elegant Ruby has the solution

  currency_object_4 = Currency.new(1.0, :USD)
  currency_object_1 == currency_object_4

# C3: Should NOT equal another Currency object with different amount or currency code

if currency_object_1 != currency_object_3
  puts true
end

# C4: Should be able to be added to another Currency object with the same currency code

currency_object_1 + currency_object_4

# C5: Should be able to be subtracted by another Currency object with the same currency code

currency_object_1 - currency_object_4

# C6: Should raise a DifferentCurrencyCodeError when you try to add or subtract two
#  Currency objects with different currency codes.
   #False - I need to fix how the currency class handles spliting the amount
   # from the code and introduce and if/else so it detects a problem

currency_object_1 + currency_object_3
 #line 40 in currency class -- why isn't it working?

# C7: Should be able to be multiplied by a Fixnum or Float and return a Currency object
  #Need to have it include the currency code in the output
currency_object_3 * 4.25
currency_object_2 * 25

# C8: Currency.new should be able to take one argument with a currency symbol embedded
#  in it, like "$1.20" or "€ 7.00", and figure out the correct currency code.
#  It can also take two arguments like before, one being the amount and the other
#  being the currency code.
   #False, I'll need to allow the currency class to parse the string
Currency.new(1.20, :USD)
Currency.new("$1.20")
# i've just defaulted it to USD for now as a solution
# .is_a?(string)  ...maybe set a default value for second argument?
# arguments = argument[:technols][:id].reject(&:blank?) unless params[:technols].nil?
# Currency.new.("$1.20").if_string  # ~> ArgumentError: wrong number of arguments (given 0, expected 2)

# CurrencyConverter objects:

# CC0: Should be initialized with a Hash of currency codes to conversion rates (see link to rates below)
# CC1: At first, just make this work with two currency codes and conversation rates,
#  with one rate being 1.0 and the other being the conversation rate. An example
#  would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.

CurrencyConverter.new(currency_object_2, :JPY)
CurrencyConverter.new(currency_object_3, :USD)
CurrencyConverter.new(currency_object_4, :JPY)

# CC2: Should be able to take a Currency object and a requested currency code that is
#  the same currency code as the Currency object's and return a Currency object
#  equal to the one passed in. That is,
#  currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
    #why on earth is this false?
puts "LINE88: "
if CurrencyConverter.new(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
  puts true
else
  puts false
end
puts "Line90: "
CurrencyConverter.new(Currency.new(1, :USD), :USD)
puts "Line92: "
Currency.new(1, :USD)
puts "/LINE94END"
# puts "#{a}sam here"                                                          # => nil
# puts "#{b}abe here"                                                          # => nil
# CC3: Should be able to take a Currency object that has one currency code it knows
#  and a requested currency code and return a new Currency object with the right
#  amount in the new currency code
    #Hmmm, nil?
CurrencyConverter.new(Currency.new(10, :USD), :JPY).converted_amount

# CC4: Should be able to be created with a Hash of three or more currency codes and
#  conversion rates. An example would be this: {USD: 1.0, EUR: 0.74, JPY: 120.0},
#  which implies that a dollar is worth 0.74 euros and that a dollar is worth
#  120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.
    #Not quite sure what's being requested here... needs to be able to flatten
    # hashes where it detects them? Currently blows up.
# Hash.new { |hash_of_codes_rates JPY| hash_of_codes_rates[ JPY ] = 123 }
# CurrencyConverter.new(hash_of_codes_rates)

# CC5: Should be able to convert Currency in any currency code it knows about to
#  Currency in any other currency code it knows about.
    #How is that different from what we've already done above?

# CC6: Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.
   #works fine just commented out to avoid error msg
#CurrencyConverter.new(Currency.new(10, :EUR), :AED).converted_amount  # ~> ArgumentError: Uknown currency AED
