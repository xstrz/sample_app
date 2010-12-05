class UsersController < ApplicationController
  def new
    @title = "Sing Up"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

end
