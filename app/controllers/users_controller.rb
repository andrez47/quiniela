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

  def home
    @predictions = current_user.get_predictions_by_phase('A')
  end

  def destroy
    user = User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

end
