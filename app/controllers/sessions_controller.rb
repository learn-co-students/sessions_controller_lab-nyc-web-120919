class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
        session[:name] = params[:name]
        redirect_to '/'   
    else
        redirect_to '/sessions/new'
    end
  end

  def destroy
    session[:name] = params[:name]
    session.delete :name
  end

end
