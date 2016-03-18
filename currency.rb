
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

  def initialize(amount, code=:NA)
     @amount = amount
     @code = code
     if @amount.is_a?(String)
#       puts "STRING!!"
       if @amount.include?("$" || "¥" || "€") # Currency_Symbols hash
#         puts "Currency_Symbols key"
         @symbol = @amount.chars.shift
         @amount = @amount.gsub(/[^\d\.]/, '').to_f
         @code = Currency_Symbols[@symbol]
       end
     end
#  puts "The amount in #{@code} is #{@amount}"
  end  # => :initialize

  def parse_currency(amount)
    @parse_currency
    parse_currency = amount.chars
    @symbol = parse_currency.shift
    @amount = parse_currency.join("").to_f
  end                                       # => :parse_currency

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
    # if @code == other.code
    new_amount = @amount + other.amount
    # else
    #   raise ArgumentError, "Error: different currency code."
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
    "#{new_amount} #{@code}"
  end                             # => :*

  def ==(other)
    (@amount == other.amount && @code == other.code) || (@amount == @converted_amount && @code == @target_code)
    # if currency_obj
    #   @amount == currency_obj.amount && @code == currency_obj.code
    # end
  end                        # => :==

end  # => :==
