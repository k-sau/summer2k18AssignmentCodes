class UsersController < ApplicationController

  def index
    @user = User.new
    @users = User.all

  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :admin))
    @user.save
  end
=begin
  Vulnerable Code
  def edit
    @users = User.all
    # Thanks to https://rails-sqli.org/
    User.update("admin=1 WHERE name LIKE '%#{params[:name]}%'")
  end
=end

  def edit
    @users = User.all
  end

  def update
    check_for_malicious_character = params[:name].match(/^[a-zA-Z]*$/)
    if !check_for_malicious_character.nil?
      User.update_all("admin=1 WHERE name LIKE '%#{params[:name]}%'")
    else
      redirect_to :action => 'edit'
    end
  end

end
