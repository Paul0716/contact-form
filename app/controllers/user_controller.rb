class UserController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_info)
    if @user.save
      # UserMailer.thankyou_email(@contact).deliver_now
      redirect_to :action => 'new'
    else
      render :action => "new"
    end
  end

  def user_info
    params.require(:user).permit(:name, :email,:role)
  end
end
