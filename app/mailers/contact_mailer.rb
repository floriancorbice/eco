class ContactMailer < ApplicationMailer
  def contact
    mail(to: 'luxiluxlth@gmail.com', subject:'Test !')
end
end
