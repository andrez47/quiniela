class UsersController < ApplicationController
  before_filter :login_required, :only => [:home, :show, :edit, :update]
  before_filter :admin_required, :only => [:index, :destroy]

  def index
    @title = "All users"
    @users = User.paginate(:page => params[:page])
  end

  def new
    @teams = Team.find(:all, :order=>"name")
    @user = User.new
  end

  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
      @user.create_predictions_set

      # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      redirect_to home_path
      flash[:notice] = "Welcome"
    else
      @teams = Team.find(:all, :order=>"name")
      render :action => 'new'
    end
  end

  def edit
    paramId = params[:id]
    if !is_admin? && paramId.to_i != self.current_user.id.to_i
      redirect_to home_path
    else
      @user = User.find(params[:id])
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      if is_admin?
        redirect_to users_path
        flash[:notice] = 'User was successfully updated.'
      else
        redirect_to home_path
        flash[:notice] = 'Your information was successfully updated.'
      end
    else
      flash.now[:error] = "User edition failed!"
      render :action => "edit"
    end
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
    @predictions = @user.get_predictions
  end

  def destroy
    user = User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

  def home
    #@predictions = current_user.get_predictions_by_phase('A')
  end

  def predictions
    current_user.predictions.each { |p| p.attributes = params[:prediction][p.id.to_s] }

    if current_user.predictions.all?(&:valid?)
      current_user.predictions.each(&:save!)
      redirect_to home_path
    else
      flash.now[:error] = "There were errors!"
      render :action => 'home'
    end
  end
  
  def forgot
    @user = User.new    
  end

  def forgot_password
    return unless request.post?
    @user = User.find_by_email(params[:user][:email])
    if @user      
      newPassword = rand(10 ** 6).to_s.rjust(6,'0')
      result = @user.update_attributes(:password => newPassword, :password_confirmation => newPassword)
      
      if !result
        flash[:notice] = "Unable reset your password"
      else
        UserMailer.deliver_forgot_password(@user, newPassword)
        flash[:notice] = "A password reset link has been sent to your email address"
      end
      
      redirect_to root_path
    else
      flash[:notice] = "Could not find a user with that email address" 
      redirect_to forgot_path
    end
  end

  def change_password
    paramId = params[:id]
    if !is_admin? && paramId.to_i != self.current_user.id.to_i
      redirect_to home_path
    else
      @user = User.find(params[:id])
    end
  end


end
