#Currency Converter

##About the program

Accepts currency objects in three currencies and can convert them into the other currencies. Guides user through program features.

##Known bugs:

*The Currency and Currency Converter sometimes display unwanted additional output, e.g. "#<CurrencyConverter:0x007f8d7283d248>".  
*The Currency Converter does not accept hashes and does not accept input rates.
*The Currency Converter does take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in. However, the redefined comparator method fails to acknowledge the equality.
