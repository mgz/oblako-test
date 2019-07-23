class MessagesController < ApplicationController
  def index
    @page_title = 'Freelancer - Start Bootstrap Theme'
    @portfolio_items = Portfolio.items
  end
end
