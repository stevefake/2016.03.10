
# $
# ¥
# €

class Currency
  # attr_reader: :amount, :code

  Currency_Symbols = {
    "$" => :USD,        # => :USD
    "¥" => :JPY,        # => :JPY
    "€" => :EUR         # => :EUR
  }                     # => {"$"=>:USD, "¥"=>:JPY, "€"=>:EUR}
  # if Currency_Symbols.include?("single_argument_string".chars)                       # => true, true
  #   Currency_Symbols["single_argument_string".shift]                                         # => :EUR, :EUR
  # end

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
#    if other.code = @code
    new_amount = @amount + other.amount
  #   else
  #     raise ArgumentError, "Error: different currency code."
  # end
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

  # def ==(other)
  #   return false unless other.instance_of?(self.class)
  #   currency_object == other.currency_object && name == other.name
  # end

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
