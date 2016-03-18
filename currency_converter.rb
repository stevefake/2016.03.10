require_relative 'currency'

class CurrencyConverter
# attr_accessor :target_code  # => nil, nil

  CODE_CONVERSION_RATES = {
    :USD => {
      :USD => 1,
      :EUR => 0.88,
      :JPY => 111.24
    },
    :EUR => {
      :EUR => 1,
      :USD => 1.13,
      :JPY => 125.94
    },
    :JPY => {
      :JPY => 1,
      :EUR => 0.00794,
      :USD => 0.00899
    }
  }

  def initialize(currency_obj, target_code)
    @target_code = target_code
    @currency_obj = currency_obj
    @currency_obj.amount * 3
    @currency_obj.code
    if CODE_CONVERSION_RATES.include?(target_code)
      @target_code = target_code
    else
      raise ArgumentError, "Uknown currency #{target_code}"
    end
    @rate = CODE_CONVERSION_RATES[@currency_obj.code][@target_code]
    @rate = rate
    @target_code = target_code
    @converted_amount = @rate * @currency_obj.amount
    @converted_amount = converted_amount
  end

  def rate
    @rate
  end

  def converted_amount
    @converted_amount
    converted_amount = @converted_amount
    puts "The amount in #{@target_code} is #{converted_amount}."
  end

end
