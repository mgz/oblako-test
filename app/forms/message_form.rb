class MessageForm
  include ActiveModel::Model
  
  attr_accessor(
    :name,
    :email,
    :phone_number,
    :text
  )
  
  attr_reader :error_message

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true
  validates :text, presence: true
  
  def to_model
    Message.new(
      name: name,
      email: email,
      phone_number: phone_number,
      text: text
    )
  end
  
  def save
    model = to_model
    
    if valid?
      model.save
    else
      @error_message = 'Could not save your message.'
      false
    end
  end
end