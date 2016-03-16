
# define a A CurrencyConverter class in its own file.
# represent a currency converter (arguably a real-world person,
# but actually a set of procedures)
# CurrencyConverter objects:
# Should be initialized with a Hash of currency codes to conversion rates (see
#  link to rates below)
require_relative 'currency'  # => true, false

class CurrencyConverter
# attr_accessor :target_code  # => nil, nil

  CODE_CONVERSION_RATES = {
    :USD => {
        :USD => 1,           # => 1, 1
        :EUR => 0.9,         # => 0.9, 0.9
        :JPY => 113.8        # => 113.8, 113.8
      },                     # => {:USD=>1, :EUR=>0.9, :JPY=>113.8}, {:USD=>1, :EUR=>0.9, :JPY=>113.8}
    :EUR => {
      :EUR => 1,             # => 1, 1
      :USD => 1.11,          # => 1.11, 1.11
      :JPY => 1.20           # => 1.2, 1.2
    },                       # => {:EUR=>1, :USD=>1.11, :JPY=>1.2}, {:EUR=>1, :USD=>1.11, :JPY=>1.2}
    :JPY => {
      :JPY => 1,             # => 1, 1
      :EUR => 0.3,           # => 0.3, 0.3
      :USD => 0.2            # => 0.2, 0.2
    }                        # => {:JPY=>1, :EUR=>0.3, :USD=>0.2}, {:JPY=>1, :EUR=>0.3, :USD=>0.2}
  }                          # => {:USD=>{:USD=>1, :EUR=>0.9, :JPY=>113.8}, :EUR=>{:EUR=>1, :USD=>1.11, :JPY=>1.2}, :JPY=>{:JPY=>1, :EUR=>0.3, :USD=>0.2}}, {:USD=>{:USD=>1, :EUR=>0.9, :JPY=>113.8}, :EUR=>{:EUR=>1, :USD=>1.11, :JPY=>1.2}, :JPY=>{:JPY=>1, :EUR=>0.3, :USD=>0.2}}

  def initialize(currency_obj, target_code)
    @target_code = target_code                                           # => :EUR, :EUR
    @currency_obj = currency_obj                                         # => #<Currency:0x007fef42097d90 @amount=6.0, @code=:USD>, #<Currency:0x007fef4208ece0 @amount=6.0, @code=:USD>
    @currency_obj.amount * 3                                             # => 18.0, 18.0
    @currency_obj.code                                                   # => :USD, :USD
    if CODE_CONVERSION_RATES.include?(target_code)                       # => true, true
      @target_code = target_code                                         # => :EUR, :EUR
    else
      raise ArgumentError, "Uknown currency target_code #{target_code}"
    end                                                                  # => :EUR, :EUR
    @rate = CODE_CONVERSION_RATES[@currency_obj.code][@target_code]      # => 0.9, 0.9
    @rate = rate                                                         # => 0.9, 0.9
    @target_code = target_code                                           # => :EUR, :EUR
    @converted_amount = @rate * @currency_obj.amount                     # => 5.4, 5.4
    @converted_amount = converted_amount                                 # => nil, nil
  end                                                                    # => :initialize, :initialize

  def rate
    @rate   # => 0.9, 0.9
  end       # => :rate, :rate

  def converted_amount
    @converted_amount                                             # => 5.4, 5.4
    converted_amount = @converted_amount                          # => 5.4, 5.4
    puts "The amount in #{@target_code} is #{converted_amount}."  # => nil, nil
  end                                                             # => :converted_amount, :converted_amount

end  # => :converted_amount, :converted_amount

require_relative 'currency'            # => false, false
require_relative 'currency_converter'  # => false, true

currency_object_1 = Currency.new(1.0, :USD)  # => #<Currency:0x007fef41830468 @amount=1.0, @code=:USD>, #<Currency:0x007fef4208f5c8 @amount=1.0, @code=:USD>
currency_object_2 = Currency.new(5, :EUR)    # => #<Currency:0x007fef41830210 @amount=5, @code=:EUR>, #<Currency:0x007fef4208f2a8 @amount=5, @code=:EUR>
currency_object_3 = Currency.new(5, :JPY)    # => #<Currency:0x007fef41831f98 @amount=5, @code=:JPY>, #<Currency:0x007fef4208ef88 @amount=5, @code=:JPY>

currency_object_1 = Currency.new(1.0, :USD)  # => #<Currency:0x007fef42097d90 @amount=1.0, @code=:USD>, #<Currency:0x007fef4208ece0 @amount=1.0, @code=:USD>
currency_object_1.code                       # => :USD, :USD
currency_object_1.amount                     # => 1.0, 1.0
currency_object_1.add_five                   # => 6.0, 6.0
currency_object_1.amount                     # => 6.0, 6.0
currency_object_1                            # => #<Currency:0x007fef42097d90 @amount=6.0, @code=:USD>, #<Currency:0x007fef4208ece0 @amount=6.0, @code=:USD>

curobj1_converted = CurrencyConverter.new(currency_object_1, :EUR)  # => #<CurrencyConverter:0x007fef42096da0 @target_code=:EUR, @currency_obj=#<Currency:0x007fef42097d90 @amount=6.0, @code=:USD>, @rate=0.9, @converted_amount=nil>, #<CurrencyConverter:0x007fef4208e178 @target_code=:EUR, @currency_obj=#<Currency:0x007fef4208ece0 @amount=6.0, @code=:USD>, @rate=0.9, @converted_amount=nil>

# >> The amount in EUR is 5.4.
# >> The amount in EUR is 5.4.
