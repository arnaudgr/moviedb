require 'rubygems'
require 'nokogiri'
require 'open-uri'

class TraderObscur
def cryptocurrencies_name

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	array_name_currencies = Array.new
	currency_name = page.css("tr").css("td").css(".no-wrap").css(".currency-name").css(".currency-name-container")


	currency_name.each { |name_currency|

		array_name_currencies << name_currency.text

	}
	
 	return array_name_currencies
end

def cryptocurrencies_value

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	array_value_currencies = Array.new

	currency_value = page.css("tr").css("td").css(".no-wrap").css(".price")


	currency_value.each { |name_currency|

		array_value_currencies << name_currency.text

	}
	return array_value_currencies

end

def hash_cryptocurrencies(array_name_currencies, array_value_currencies)

	i = 0
	hash_name_value_currencies = Hash.new

	array_name_currencies.each { |name_currency|


		hash_name_value_currencies[name_currency] = array_value_currencies[i]
	

		i += 1


	}

	hash_name_value_currencies

end
end
# puts "La monnaie #{array_name_currencies} a comme valeur #{cryptocurrencies_value}"

# array_name_currencies =  cryptocurrencies_name
# array_value_currencies = cryptocurrencies_value
# @currencies = hash_cryptocurrencies(array_name_currencies, array_value_currencies)