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
    if user = User.find(params[:id])
      user.destroy
      flash[:notice] = "User deleted"
      flash[:color]= "valid"
    end
    redirect_to :root
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
