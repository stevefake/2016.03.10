require_relative 'currency'            # => true
require_relative 'currency_converter'  # => true

currency_object_1 = Currency.new(1.00, :USD)  # => #<Currency:0x007f828a0f70f8 @amount=1.0, @code=:USD>
currency_object_2 = Currency.new(3, :EUR)     # => #<Currency:0x007f828a0f6dd8 @amount=3, @code=:EUR>
currency_object_3 = Currency.new(5, :JPY)     # => #<Currency:0x007f828a0f6b08 @amount=5, @code=:JPY>

currency_object_1 = Currency.new(1.0, :USD)  # => #<Currency:0x007f828a0f5578 @amount=1.0, @code=:USD>
currency_object_1.code                       # => :USD
currency_object_1.amount                     # => 1.0
currency_object_1.add_five                   # => 6.0
currency_object_1.amount                     # => 6.0
currency_object_1                            # => #<Currency:0x007f828a0f5578 @amount=6.0, @code=:USD>

currency_object_2 = Currency.new(5, :EUR)  # => #<Currency:0x007f828a0f47b8 @amount=5, @code=:EUR>

curobj1_converted = CurrencyConverter.new(currency_object_1, :EUR)  # => #<CurrencyConverter:0x007f828a0f43d0 @target_code=:EUR, @currency_obj=#<Currency:0x007f828a0f5578 @amount=6.0, @code=:USD>, @rate=0.9, @converted_amount=nil>
curobj2 = CurrencyConverter.new(currency_object_2, :JPY)            # => #<CurrencyConverter:0x007f828a0efe98 @target_code=:JPY, @currency_obj=#<Currency:0x007f828a0f47b8 @amount=5, @code=:EUR>, @rate=1.2, @converted_amount=nil>

puts CurrencyConverter.new(currency_object_3, :EUR).converted_amount  # => nil

# Specs:
# C1: Should be created with an amount and a currency code

currency_object_1 = Currency.new(1.0, :USD)  # => #<Currency:0x007f828a0ef790 @amount=1.0, @code=:USD>

# C2: Should equal another Currency object with the same amount and currency code
  #False, b/c different object_ids. Def new method for == to test output values only? (see currency class line 60); pg 146 Elegant Ruby has the solution

  currency_object_4 = Currency.new(1.0, :USD)  # => #<Currency:0x007f828a0ef560 @amount=1.0, @code=:USD>
  currency_object_1 == currency_object_4       # => false

# C3: Should NOT equal another Currency object with different amount or currency code

if currency_object_1 != currency_object_3  # => true
  puts true                                # => nil
end                                        # => nil

# C4: Should be able to be added to another Currency object with the same currency code

currency_object_1 + currency_object_4  # => 2.0

# C5: Should be able to be subtracted by another Currency object with the same currency code

currency_object_1 - currency_object_4  # => 0.0

# C6: Should raise a DifferentCurrencyCodeError when you try to add or subtract two
#  Currency objects with different currency codes.
   #False - I need to fix how the currency class handles spliting the amount
   # from the code and introduce and if/else so it detects a problem

currency_object_1 + currency_object_3  # => 6.0

# C7: Should be able to be multiplied by a Fixnum or Float and return a Currency object
  #Need to have it include the currency code in the output
currency_object_3 * 4.25  # => 21.25
currency_object_2 * 25    # => 125

# C8: Currency.new should be able to take one argument with a currency symbol embedded
#  in it, like "$1.20" or "€ 7.00", and figure out the correct currency code.
#  It can also take two arguments like before, one being the amount and the other
#  being the currency code.
   #False, I'll need to allow the currency class to parse the string
#Currency.new(1.20, :USD)  # => #<Currency:0x007ffe340b3a30 @amount=1.2, @code=:USD>
#Currency.new("$1.20")     # ~> ArgumentError: wrong number of arguments (given 1, expected 2)


# CurrencyConverter objects:

# CC0: Should be initialized with a Hash of currency codes to conversion rates (see link to rates below)
# CC1: At first, just make this work with two currency codes and conversation rates,
#  with one rate being 1.0 and the other being the conversation rate. An example
#  would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.

#CurrencyConverter.new(currency_object_2), :JPY) #why does this one break?
CurrencyConverter.new(currency_object_3, :USD)  # => #<CurrencyConverter:0x007f828a0ed648 @target_code=:USD, @currency_obj=#<Currency:0x007f828a0f6b08 @amount=5, @code=:JPY>, @rate=0.2, @converted_amount=nil>
CurrencyConverter.new(currency_object_4, :JPY)  # => #<CurrencyConverter:0x007f828a0ed288 @target_code=:JPY, @currency_obj=#<Currency:0x007f828a0ef560 @amount=1.0, @code=:USD>, @rate=113.8, @converted_amount=nil>

# CC2: Should be able to take a Currency object and a requested currency code that is
#  the same currency code as the Currency object's and return a Currency object
#  equal to the one passed in. That is,
#  currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
    #why on earth is this false?

CurrencyConverter.new(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)  # => false

# CC3: Should be able to take a Currency object that has one currency code it knows
#  and a requested currency code and return a new Currency object with the right
#  amount in the new currency code
    #Hmmm, nil?
CurrencyConverter.new(Currency.new(10, :USD), :JPY).converted_amount  # => nil

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

# >> The amount in EUR is 5.4.
# >> The amount in EUR is 5.4.
# >> The amount in JPY is 6.0.
# >> The amount in EUR is 1.5.
# >> The amount in EUR is .
# >>
# >> true
# >> The amount in USD is 1.0.
# >> The amount in JPY is 113.8.
# >> The amount in USD is 1.
# >> The amount in JPY is 1138.0.
# >> The amount in JPY is .
