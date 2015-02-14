class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash.notice = "You signed up successfully"
    else
      flash.alert = "Form is invalid"
    end
    redirect_to :root
  end

  def destroy
    if user = User.find(params[:id])
      user.destroy
      flash.notice = "User deleted"
    end
    redirect_to :root
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
