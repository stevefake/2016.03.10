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
