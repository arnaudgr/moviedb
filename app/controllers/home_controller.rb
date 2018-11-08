class HomeController < ApplicationController
  def index
   

  end

  def create
    
  	@trader = TraderObscur.new
  	a = @trader.cryptocurrencies_name
  	b = @trader.cryptocurrencies_value
  	@hash_currencies = @trader.hash_cryptocurrencies(a, b)
    @param_currency = params["currency_request"]
  	@value = @hash_currencies[@param_currency]	
	puts @value	

  end



end
