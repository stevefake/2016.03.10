# currency app utilizing the class files

require_relative 'currency_converter.rb'

require_relative 'currency.rb'

USD_currency = Currency.new(12) #remember to caps the method

  USD_currency.set_amount_of_currency(12) # => 12
#  JPY_currency.set_amount_of_currency(16)    # => 16
