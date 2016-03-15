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
USD_currency


# amount_of_currency
#  JPY_currency.set_amount_of_currency(16)    # => 16

# Should be created with an amount and a currency code

dollar = Currency.new(1)
dollar.currency_dollar

yen = Currency.new(1)
yen.currency_yen

euro = Currency.new(1)
euro.currency_euro

#############
# Should equal another Currency object with the same amount and currency code
# Should NOT equal another Currency object with different amount or currency code

puts "Currency object equals another currency object with the same amount and currency code?"

if dollar.currency_dollar == dollar.currency_dollar
  print "#{dollar.currency_dollar} == #{dollar.currency_dollar}"
  puts true
else
  puts false
end

puts "Currency object does NOT equal another currency object with different amount or currency code"
if yen.currency_yen != euro.currency_euro
  puts true
else
  puts false
end
  #


######
trex = Currency.new(1)
trex.speak

trex = Dinosaur.new
trex.speak("RAWRRRR", "T-Rex")

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
