class SessionsController < ApplicationController
  def login
    @user = User.new
  end

  def create
  end

  def logout
  end
end