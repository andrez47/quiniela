class SessionsController < ApplicationController

  def index
    @title = "Index"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Index"
      render 'index'
    else
      sign_in user
      redirect_to home_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
