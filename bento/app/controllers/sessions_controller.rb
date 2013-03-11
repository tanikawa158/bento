class SessionsController < ApplicationController
  # GET /sessions
  def index
    @user = User.find_by_id(session[:user_id]) if session[:user_id]
  end

  # GET  /login
  # POST /login
  def new
  end

  # POST /sessions
  def create
    reset_session if session[:user_id]
    user = User.find_by_user_name(params[:id])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to sessions_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid user id or password"
      params[:password] = ""
      render "new"
    end
  end

  # GET  /logout
  # POST /logout
  def destroy
    reset_session
    redirect_to sessions_path
  end
end
