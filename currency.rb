
# $
# ¥
# €

class Currency
  # attr_reader: :amount, :code

  def initialize(amount, code)
     @amount = amount
     @code = code
   end                          # => :initialize

  def amount
    @amount
  end         # => :amount

  def code
    @code
  end       # => :code

  def add_simple
    @amount + 5
  end             # => :add_simple

  def add_five
    @amount += 5
  end             # => :add_five

  def +(other)
    new_amount = @amount + other.amount
  end                                    # => :+

  def add(other)
    self + other
  end             # => :add

  def -(other)
    new_amount = @amount - other.amount
  end                                    # => :-

  def *(other)
    new_amount = @amount * other
  end                             # => :*

  def symbol_strip(string)
    string.shift.to_f
  end                       # => :symbol_strip

  def symbol(string)
    string.to_f
  end                 # => :symbol

  def split_currency(string)
    split_currency = string.chars
    @symbol = split_currency.shift
    @amount = split_currency.join("").to_f
  end                                       # => :split_currency

end  # => :split_currency
