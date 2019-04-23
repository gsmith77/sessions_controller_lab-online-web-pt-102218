class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil
    redirect_to sessions_new_path
    elsif params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
  end
end
