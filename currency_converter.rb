
# define a A CurrencyConverter class in its own file.

# represent a currency converter (arguably a real-world person,
# but actually a set of procedures)

# CurrencyConverter objects:
#
# Should be initialized with a Hash of currency codes to conversion rates (see
#  link to rates below)

class CurrencyConverter
 attr_accessor :code     # => nil

CODE_CONVERSION_RATES = {
  "USD" => {
      "USD" => 1,          # => 1
      "EUR" => 0.9,        # => 0.9
      "JPY" => 113.8       # => 113.8
    },                     # => {"USD"=>1, "EUR"=>0.9, "JPY"=>113.8}
  "EUR" => {
    "EUR" => 1,            # => 1
    "USD" => 1.11,         # => 1.11
    "JPY" => 1.20          # => 1.2
  },                       # => {"EUR"=>1, "USD"=>1.11, "JPY"=>1.2}
  "JPY" => {
    "JPY" => 1,            # => 1
    "EUR" => 0.3,          # => 0.3
    "USD" => 0.2           # => 0.2
  }                        # => {"JPY"=>1, "EUR"=>0.3, "USD"=>0.2}
  }                        # => {"USD"=>{"USD"=>1, "EUR"=>0.9, "JPY"=>113.8}, "EUR"=>{"EUR"=>1, "USD"=>1.11, "JPY"=>1.2}, "JPY"=>{"JPY"=>1, "EUR"=>0.3, "USD"=>0.2}}

def initialize(code)
  self.code = code
end                   # => :initialize
@code                 # => nil

def initialize(currency_converter)
  self.currency_converter = currency_converter
  @code = code
  if CODE_CONVERSION_RATES.include?(code)
    @code = code
    puts "true"
  else
    raise ArgumentError, "Uknown currency code #{code}"
  end
  @rate = rate
end                                                      # => :initialize
@code                                                    # => nil
@rate                                                    # => nil


def initialize(convert)
   convert = @convert
   @code = code
end                      # => :initialize
@code                    # => nil
@convert                 # => nil

  # def conversion2(code1, code2)
  #   code1
  #   @rate1 = CODE_CONVERSION_RATES[code1]
  #   CODE_CONVERSION_RATES[code2]
  # end                                      # => :conversion2
def convert(input_code, output_code)
  CODE_CONVERSION_RATES["USD"]["EUR"]
end                                    # => :convert

def code=(new_code)
    @code = new_code
  end                 # => :code=

end  # => :code=

# At first, just make this work with two currency codes and conversation rates,
#  with one rate being 1.0 and the other being the conversation rate. An example would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.

conversion_rate = CurrencyConverter::CODE_CONVERSION_RATES["USD"]["EUR"]  # => 0.9
conversion_rate                                                           # => 0.9

conversion_rate = CurrencyConverter::CODE_CONVERSION_RATES["USD"]["JPY"]  # => 113.8

conversion_rate = CurrencyConverter::CODE_CONVERSION_RATES["JPY"]["EUR"]  # => 0.3

CurrencyConverter::convert("JPY","EUR")  # ~> NoMethodError: undefined method `convert' for CurrencyConverter:Class

@code
@rate

# Should be able to take a Currency object and a requested currency code that
#  is the same currency code as the Currency object's and return a Currency
#  object equal to the one passed in. That is,
#  currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)



# Should be able to take a Currency object that has one currency code it knows
#  and a requested currency code and return a new Currency object with the right
#  amount in the new currency code

# Should be able to be created with a Hash of three or more currency codes and
#  conversion rates. An example would be this: {USD: 1.0, EUR: 0.74, JPY: 120.0},
#  which implies that a dollar is worth 0.74 euros and that a dollar is worth
#  120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.

# Should be able to convert Currency in any currency code it knows about to
#  Currency in any other currency code it knows about.

# Should raise an UnknownCurrencyCodeError when you try to convert from or to a
#  currency code it doesn't know about.

# ~> NoMethodError
# ~> undefined method `convert' for CurrencyConverter:Class
# ~>
# ~> /Users/stevefake/Desktop/iron_yard/2016.03.10_git_repo/currency_converter.rb:85:in `<main>'
