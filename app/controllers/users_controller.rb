class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You updated your details successfully."
      redirect_to otp_users_path(id: @user)
    else
      render 'new'
    end
  end

  def otp
    @user_otp_code = User.find( params['id'] )
    @user_otp_code.otp_code
    sleep 30
    params
  end

  private
  def user_params
    params.require(:user).permit(:name, :blood_group, :phone, :phone_extension_id  )
  end
end
