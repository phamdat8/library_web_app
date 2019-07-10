class SessionsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      flash[:success] = "Login success"
      log_in @user
      redirect_to root_path
    else
      flash[:danger]="Something is wrong"
      @user = User.new
      render :index
    end  
  end
end
