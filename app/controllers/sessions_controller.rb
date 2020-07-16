class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Log in successful!"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid username or password."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out successfully."
    redirect_to root_path
  end

end
