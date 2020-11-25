class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # if user.activated?
        log_in user
        flash[:success] = 'Welcome to Sample App!'
        redirect_to user
      # else
      #   flash[:warning] = "Account not activated. Check the email for activation link"
      #   redirect_to root_url
      # end
    else
      flash[:danger] = 'Invalid email/password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
