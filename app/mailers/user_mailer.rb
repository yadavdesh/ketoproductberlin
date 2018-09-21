class UserMailer < ApplicationMailer
  default from: "yadavdesh@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
      to:"yadavdesh@gmail.com",
      subject: "A new contact form message from #{name}")
  end

end
