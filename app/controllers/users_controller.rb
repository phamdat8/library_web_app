class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new
    check_password_confirmation
    byebug
  end

private

  def check_password_confirmation
    if params[:user][:password] != params[:user][:password_confirmation]
      flash.now[:warning] = 'Something went wrong'
      render :index
      return false
    end
  end
end
