

# $
# ¥
# €

# Currency objects:
# Should be created with an amount and a currency code

class Currency
  # attr_reader: :amount, :code

  def initialize(amount, code)
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

  def symbol_strip(string)
    string.shift.to_f
  end                       # => :symbol_strip

  def symbol(string)
    string.to_f       # => 23.0, 0.0
  end                 # => :symbol

  def split_currency(string)
    split_currency = string.chars           # => ["$", "2", "3"]
    @symbol = split_currency.shift          # => "$"
    @amount = split_currency.join("").to_f  # => 23.0
  end                                       # => :split_currency

end  # => :split_currency

c1 = Currency.new(23, :USD)  # => #<Currency:0x007fb0dc1cbbe8 @amount=23, @code=:USD>
c2 = Currency.new(2, :USD)   # => #<Currency:0x007fb0dc1cab80 @amount=2, @code=:USD>

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

c1.symbol("23")           # => 23.0
c1.symbol("$23")          # => 0.0
c1.split_currency("$23")  # => 23.0

# c1 = Currency.new("$23.00")
# c2 = Currency.new("$2.00")

# Currency.new should be able to take one argument with a currency symbol
# embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency
# code. It can also take two arguments like before, one being the amount and the
# other being the currency code.


# "$5.20" == USD: 5.20
# puts true
# end
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
