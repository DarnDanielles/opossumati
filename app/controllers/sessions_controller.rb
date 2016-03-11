class SessionsController < ApplicationController

  def new
  end

  def create
    user = Author.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = author.id
      redirect_to root_path, notice: "You have successfully logged in"
    else
      flash.now[:alert] = "Invalid email or password"
      render "New"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out, have a nice day!"
  end

end
