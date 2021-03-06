class SessionsController < ApplicationController
  def create
    user = User.update_or_create(request.env["omniauth.auth"])
    session[:id] = user.id
    redirect_to home_path
  end

  def destroy
    session.clear
    redirect_to home_path
  end
end