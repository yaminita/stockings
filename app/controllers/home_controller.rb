class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_9fb28d0954be4853825d829ab16c5018')
    #StockQuote::Stock.new(api_key: 'pk_9fb28d0954be4853825d829ab16c5018')
    if params[:ticker]==""
      @nothing = "You forgot to enter a Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @error = "Hey! That stock symbol does not exist.... Please try again"
      end

    end

  end

  def about

  end
end
