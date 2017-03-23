class UserMailer < ApplicationMailer
    def thankyou_email(contact)
        @contact = contact
        mail(to: @contact.email, subject: @contact.title)
    end
end
