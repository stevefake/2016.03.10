# currency app utilizing the class files

# Understand how to override mathematical operators
# Understand how objects can return objects of other classes as responses to messages
# Understand how to execute Ruby code which spans multiple files
# Understand how to create your own exception classes
# Be able to initialize an object from a set of parameters
# Be able to initialize a set of objects from a complex data structure
# Be able to raise exceptions/errors as appropriate
# Be able to parse strings to isolate specific symbols

require_relative 'currency_converter.rb'

require_relative 'currency.rb'

USD_currency = Currency.new(12) #remember to caps the method

  USD_currency.set_amount_of_currency(12) # => 12
#  JPY_currency.set_amount_of_currency(16)    # => 16

# Should be created with an amount and a currency code

# puts amount
# puts Currency_dollar = Currency_dollar.new(1)
# puts currency_yen
# puts currency_yen

######
trex = Currency.new(1)
trex.speak
