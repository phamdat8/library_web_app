class SessionsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    byebug
  end
end
