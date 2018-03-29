class MainController < ApplicationController
  def index
    @users = User.all
  end

  def create
    User.create(email: params[:users][:email],
                password: params[:users][:password])
    redirect_to :action => 'index'
  end

  def sample
    @controller_message = "Hello from Controller"
  end
end
