
#line7: currency_code = USD
#       currency_amount = 10
#line8: USD 1 == USD 1
#currency.new(1, :USD)

#line9: USD 1 != EUR 7.00
#       USD: 1.0, EUR: 0.74, JPY: 120.0

#line10: USD(1) + USD(2) = USD(3)

#line11: USD(1) - USD(2) = USD(3)

#line12: if USD +- EUR != false
#           raise "DifferentCurrencyCodeError"

#line13: if USD * Fixnum or Float
#            return currency

#line14: Currency.new(pass argument)
#   $1.20" or "€ 7.00 or

# $
# ¥
# €


# Currency objects:
# Should be created with an amount and a currency code

class Currency
  # attr_reader: :amount, :code

  def initialize(amount, code)  # ~> ArgumentError: wrong number of arguments (given 1, expected 2)
     @amount = amount           # => 23, 2
     @code = code               # => :USD, :USD
   end                          # => :initialize

  def amount
    @amount * 1.2  # => 27.599999999999998, 2.4, 2.4, 2.4, 2.4, 2.4
  end              # => :amount

  def code
    @code   # => :USD, :USD
  end       # => :code

  def add_simple
    @amount + 5   # => 28
  end             # => :add_simple

  def +(other)
    new_amount = @amount + other.amount  # => 25.4, 25.4, 25.4
  end                                    # => :+

  def add(other)
    self + other  # => 25.4
  end             # => :add

  def -(other)
    new_amount = @amount - other.amount  # => 20.6
  end                                    # => :-

  def *(other)
    new_amount = @amount * other  # => 184, 16.0
  end                             # => :*

end  # => :*

c1 = Currency.new(23, :USD)  # => #<Currency:0x007fd944188218 @amount=23, @code=:USD>
c2 = Currency.new(2, :USD)   # => #<Currency:0x007fd944189078 @amount=2, @code=:USD>

c1.amount  # => 27.599999999999998
c1.code    # => :USD
c2.amount  # => 2.4
c2.code    # => :USD

c1 + c2   # => 25.4
c1.+(c2)  # => 25.4

c1.add_simple  # => 28

c1.add(c2)  # => 25.4
# c1.add(6)

c1 - c2  # => 20.6

c1 * 8    # => 184
c2 * 8.0  # => 16.0

c1 = Currency.new("$23.00")
c2 = Currency.new("$2.00")


# amount = 1
# code = USD
# puts @amount
# puts @code

#   def initialize(string) #to strip the currency symbol
#     split_money = string.split("")
#     currency_type = split_money.shift #takes off the first value of the array (the "$")
#     @amount = split_money.join("")
#     numerics.to_f
#     symbol_map = {"$" => :USD, "Eurosymbol" => :EUR, "Yensym" => :JPY}
#     #or array [currency_type, numerics]
#     @currency_code = symbol_map[currency_type]
#   end
#
#   def amount
#     @amount
#   end
#
#   def currency_code
#     @currency_code
#   end
# end
# c1 = Currency.new("$1123.00") # => "$"
# c2 = Currency.new("$1123.00") # => 1123
# c1.currency_code
# c2.currency_code
# c1.amount
# c2.amount



  # def value
  #   @amount
  # end
  #
  # def set_amount_of_currency(new_amount)
  #   @amount_of_currency = new_amount
  # end

  # USD_currency.set_amount_of_currency(12) # => 12
  # JPY_currency.set_amount_of_currency(16)    # => 16

  # def add_currency
  #   size_of_add = 2.6
  #   @amount_of_currency -= size_of_add
  # end
  #
  # def add_currency(size_of_add = 2.6)   #default argument
  #   @amount_of_currency -= size_of_add
  # end

# Currency objects:
# Should be created with an amount and a currency code
# def currency_dollar
#   puts dollar = "$1"
# end
#
# def currency_yen
#   puts yen = "¥1"
# end
#
# def currency_euro
#   puts euro = "€1"
# end
######

# dollar.currency_dollar(1) = euro.currency_euro(0.9)
# = yen.currency_yen(113.8)

######


# def currency_code(code)
#   @code = code
# end
#
# def initialize(code) # `initialize': wrong number of arguments
#                      # (given 0, expected 1) (ArgumentError)
#     @code = code
# end
#
# def set_code(code)
#     @code = code
# end
#
# dollar = Currency.new
#
# dollar.set_code("USD") # `<top (required)>': undefined method `set_code'
#                          # for #<Currency:0x007ffb13058ac8> (NoMethodError)
#                        # undefined local variable or method `dollar' for
#                        # main:Object (NameError)
#
# def code
#    @code
#  end
#
# dollar = Currency.new("USD") # `initialize': wrong number of arguments
#                              # (given 1, expected 0) (ArgumentError)


######

# def speak
#     puts "RAWRRRR"
# end
#
#
# #class Dinosaur
#   def speak(roar, type)
#     puts "The #{type} roared, \"#{roar}\""
#   end
#
#
# ###
# #class Dinosaur # Currency
#   def set_type(type) # currency_code
#     @type = type # @code
#   end
#
#
# trex = Dinosaur.new # dollar = Currency.new
# #=> #<Dinosaur:0x007fd90387c510>
#
# trex.set_type("T-Rex") # dollar.set_code(USD)
# # => "T-Rex"
#
# trex #USD

# ~> ArgumentError
# ~> wrong number of arguments (given 1, expected 2)
# ~>
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb:34:in `initialize'
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb:90:in `new'
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency.rb:90:in `<main>'
