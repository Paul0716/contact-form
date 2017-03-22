class ContactController < ApplicationController
  include SimpleCaptcha::ControllerHelpers
  layout 'application'
  def list
    @contact = Contact.all
  end

  def new
  end



  def create
    @contact = Contact.new(contact_info)
    if verify_recaptcha(model: @contact) && @contact.save
      redirect_to :action => 'thankyou'
    else
      render :action => "new"
    end
    
  end

  def contact_info
    params.require(:contacts).permit(:title, :email,:phone, :name, :message)
  end
   
end
