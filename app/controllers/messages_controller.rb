class MessagesController < ApplicationController
  def index
    @page_title = 'Freelancer - Start Bootstrap Theme'
    @portfolio_items = Portfolio.items
    @message = MessageForm.new
  end
  
  def create
    @message = MessageForm.new(message_params)
    
    respond_to do |format|
      if @message.save
        format.html {redirect_to messages_url, notice: 'Thanks! Your message is sent.'}
        format.js
      else
        @page_title = "Cannot send message"
        format.html {render :index}
        format.js {render template: 'messages/create_error'}
      end
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:name, :email, :phone_number, :text)
  end
end
