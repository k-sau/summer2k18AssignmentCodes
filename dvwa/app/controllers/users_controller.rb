class UsersController < ApplicationController

  def index
    @user = User.new
    @users = User.all

  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :admin))
    @user.save
  end

  def edit
    @users = User.all
    # Super thanks to https://rails-sqli.org/
    User.update_all("admin=0 WHERE name LIKE '%#{params[:name]}%'")
  end

end
