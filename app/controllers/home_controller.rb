class HomeController < ApplicationController
  require 'net/http'
  require 'json'
  
  def index

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC", "EOS", "XRP", "ADA", "STEEM",]
  end

  def lookup
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)
    
    @symbol = params[:sym]

    if @symbol
      @symbol = @symbol.upcase
    end
  end
end
