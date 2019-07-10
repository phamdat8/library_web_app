class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new
    if check_password && check_email
      @user.username = params[:user][:username]
      @user.email = params[:user][:email]
      @user.password = params[:user][:password]
      @user.save
      flash[:success] = 'Sign up successfully'
      redirect_to root_path
    else
      render :index
    end
  end

  def show
    @user = User.find_by id: params[:id]
  end
private

  def check_password
    if params[:user][:password] != params[:user][:password_confirmation] || params[:user][:password].length < 6
      flash.now[:warning] = 'Something went wrong'
      return false
    else
      return true
    end
  end
  def check_email
    if User.find_by_email(params[:user][:email])
      flash.now[:warning] = 'Email exist'
      return false
    else
      return true
    end
  end
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation,)
  end
end
