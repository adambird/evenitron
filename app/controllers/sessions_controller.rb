class SessionsController < ApplicationController

  def create
    if user = User.authenticate(params[:session][:email], params[:session][:password])
      log_in(user)
      flash.notice = "Logged in as #{user.email}"
    else
      flash.alert = 'Unrecognised email/password combination'
    end
    redirect :root
  end

  def destroy
    log_out
    redirect :root
  end

end
