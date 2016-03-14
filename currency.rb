#Create A Currency class in its own file.

# represent an amount of currency (a real-world thing you can point to)

# Currency objects:
#
# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should NOT equal another Currency object with different amount or currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object
# Currency.new should be able to take one argument with a currency symbol
#  embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency
#  code. It can also take two arguments like before, one being the amount and the other being the currency code.

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


  def initialize(amount)
    @amount
  end

  def value
    @amount
  end

  def set_amount_of_currency(new_amount)
    @amoung_of_currency = new_amount
  end

  # USD_currency.set_amount_of_currency(12) # => 12
  # JPY_currency.set_amount_of_currency(16)    # => 16

  def add_currency
    size_of_add = 2.6
    @amount_of_currency -= size_of_add
  end

  def add_currency(size_of_add = 2.6)   #default argument
    @amount_of_currency -= size_of_add
  end

# Currency objects:
# Should be created with an amount and a currency code

def currency_dollar
  @currency_dollar = $1
end

def currency_yen
  currency_yen = ¥1
end
def currency_euro
  currency_euro = €1
end

######
def speak
    puts "RAWRRRR"
  end
end
