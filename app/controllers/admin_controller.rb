class AdminController < ApplicationController
  def index
    @page_title = "Sent messages"
    @messages = Message.all.order('created_at desc')
  end
end
