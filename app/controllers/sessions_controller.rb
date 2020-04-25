class SessionsController < ApplicationController
  before_action :redirect_if_logged_in, only: [:login, :auth]
  def login
    @user = User.new
  end

  def auth
    login_creds = get_login_creds
    user = User.find_by(username: login_creds[:username])
    if user && user.authenticate(login_creds[:password])
      session[:user_id] = user.id
      flash[:notice] = "You are signed in"
      redirect_to :root
    else
      flash[:alert] = "Invalid user name or password"
      redirect_to :login
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You are signed out"
    redirect_to :login
  end

  private
  def get_login_creds
    login_creds = params.require(:user).permit(:username, :password)
  end

  def redirect_if_logged_in
    if logged_in?
      flash[:alert] = "You are already logged in"
      redirect_to :root
    end
  end

end