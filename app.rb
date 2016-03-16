require_relative 'currency'            # => true
require_relative 'currency_converter'  # => true

currency_object_1 = Currency.new(1.0, :USD)  # => #<Currency:0x007fc4cb8d0008 @amount=1.0, @code=:USD>
currency_object_2 = Currency.new(3, :EUR)    # => #<Currency:0x007fc4cb8d0a80 @amount=3, @code=:EUR>
currency_object_3 = Currency.new(5, :JPY)    # => #<Currency:0x007fc4cb8d1408 @amount=5, @code=:JPY>

# At first, just make this work with two currency codes and conversation rates,
#  with one rate being 1.0 and the other being the conversation rate. An example
#  would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.

currency_object_1 = Currency.new(1.0, :USD)  # => #<Currency:0x007fc4cb8cbe68 @amount=1.0, @code=:USD>
currency_object_1.code                       # => :USD
currency_object_1.amount                     # => 1.0
currency_object_1.add_five                   # => 6.0
currency_object_1.amount                     # => 6.0
currency_object_1                            # => #<Currency:0x007fc4cb8cbe68 @amount=6.0, @code=:USD>

currency_object_2 = Currency.new(5, :EUR)  # => #<Currency:0x007fc4cb8c9ca8 @amount=5, @code=:EUR>

curobj1_converted = CurrencyConverter.new(currency_object_1, :EUR)  # => #<CurrencyConverter:0x007fc4cb8c9910 @target_code=:EUR, @currency_obj=#<Currency:0x007fc4cb8cbe68 @amount=6.0, @code=:USD>, @rate=0.9, @converted_amount=nil>
curobj2 = CurrencyConverter.new(currency_object_2, :JPY)            # => #<CurrencyConverter:0x007fc4cb8c90c8 @target_code=:JPY, @currency_obj=#<Currency:0x007fc4cb8c9ca8 @amount=5, @code=:EUR>, @rate=1.2, @converted_amount=nil>

puts CurrencyConverter.new(currency_object_3, :EUR).converted_amount  # => nil

# >> The amount in EUR is 5.4.
# >> The amount in EUR is 5.4.
# >> The amount in JPY is 6.0.
# >> The amount in EUR is 1.5.
# >> The amount in EUR is .
# >>
