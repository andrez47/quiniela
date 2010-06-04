# This controller handles the login/logout function of the site.
class SessionsController < ApplicationController

  def index
    if logged_in?
      redirect_to home_path
    end
  end

  def create
    logout_keeping_session!
    user = User.authenticate(params[:email], params[:password])
    if user
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_user = user
      new_cookie_flag = (params[:remember_me] == "1")
      handle_remember_cookie! new_cookie_flag
      redirect_to home_path
      flash[:notice] = "Logged in successfully"
    else
      @email        = params[:email]
      @remember_me  = params[:remember_me]
      flash[:error] = "Invalid password/email."
      render :action => 'index'
    end
  end

  def destroy
    logout_killing_session!
    flash[:notice] = "You have been logged out."
    redirect_to root_path
  end

  def locale
    if current_user
      current_user.locale = params[:locale]
      current_user.save
    end

    session[:locale] = params[:locale]
    redirect_to :back
  end
end
