class UsersController < ApplicationController
  def new
    @title = "Sing Up"
  end

  def show
    @title = "Users list"
    @user = User.find(params[:id])
  end

end
