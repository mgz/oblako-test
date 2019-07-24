class MessageMailer < ApplicationMailer
  default from: 'oblako-notification@sadovskij.com'
  def notification_email
    @message = params[:message]
    mail(to: Setting.admin_email, from: @message.email, subject: "New message from #{@message.name}")
  end
end
