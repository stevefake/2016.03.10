
# define a A CurrencyConverter class in its own file.

# represent a currency converter (arguably a real-world person,
# but actually a set of procedures)


# CurrencyConverter objects:
#
# Should be initialized with a Hash of currency codes to conversion rates (see link to rates below)
# At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate. An example would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.
# Should be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in. That is, currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
# Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code
# Should be able to be created with a Hash of three or more currency codes and conversion rates. An example would be this: {USD: 1.0, EUR: 0.74, JPY: 120.0}, which implies that a dollar is worth 0.74 euros and that a dollar is worth 120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.
# Should be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
# Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.

class CurrencyConverter
  def initialize(symbol,currency,rates)
    @symbol = symbol
    @currency = currency
    @rates = rates
  end







end



# NADIA:
# def initialize({USD:1,JPY:2})
#   @rates = {}
# end
#
# def convert
# END NADIA

# ////////////////

# class EvenAdder
#
#   def initialize(value)
#     @value = value
#   end
#
#   def +(value)   #preferred name of the variable for mathematical
#     puts value   #operators is 'other'
#   end
#
#   def +(other)
#     if @value.even? && other.value.even?
#       EvenAdder.new(@value + other.value)
#     else
#       false
#     end
#   end
#
# end
#
# a = EvenAdder.new(1)
# b = EvenAdder.new(5)
#
# a.value
# b.value
#
# a + b
# a.+(b)
#
# c = EvenAdder.new(2)
# d = EvenAdder.new(4)
# c + d + a
