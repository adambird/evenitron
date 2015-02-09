class UsersController < ApplicationController

  def create
    user = User.new(user_params)

    if user.save
      flash[:notice] = "You Signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    redirect_to :root
  end

  def destroy
    redirect_to :root
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
