class Currency
# attr_reader: :amount, :code

  Currency_Symbols = {
    "$" => :USD,
    "¥" => :JPY,
    "€" => :EUR
  }

  def initialize(amount, code=:NA)
    @amount = amount
    @code = code
    if @amount.is_a?(String)
      if @amount.include?("$" || "¥" || "€")
        @symbol = @amount.chars.shift
        @amount = @amount.gsub(/[^\d\.]/, '').to_f
        @code = Currency_Symbols[@symbol]
      end
    end
    # puts "The amount in #{@code} is #{@amount}."
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def +(other)
    if @code == other.code
    new_amount = @amount + other.amount
    else
      raise ArgumentError, "Error: different currency code."
    end
  end

  def add(other)
    self + other
  end

  def -(other)
    if @code == other.code
    new_amount = @amount - other.amount
    else
      raise ArgumentError, "Error: different currency code."
    end
  end

  def *(other)
    new_amount = @amount * other
    "#{new_amount} #{@code}"
  end

  def ==(other)
    (@amount == other.amount && @code == other.code) || (@amount == @converted_amount && @code == @target_code)
    # if currency_obj
    #   @amount == currency_obj.amount && @code == currency_obj.code
    # end
  end

end
