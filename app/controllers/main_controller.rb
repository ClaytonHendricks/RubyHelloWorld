class MainController < ApplicationController
  def index

  end

  def sample
    @controller_message = "Hello from Controller"
    @users = User.all
  end
end
