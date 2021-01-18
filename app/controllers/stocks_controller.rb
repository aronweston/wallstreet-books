class StocksController < ApplicationController
     
    def search
        render :search
    end

    def show
        StockQuote::Stock.new(:api_key => "pk_16a849fd637243a79fff90fa4d42bc5d")   

        @stock = params[:code]
        @info = StockQuote::Stock.quote @stock
        render :show
    end

end