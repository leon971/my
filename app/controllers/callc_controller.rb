class CallcController < ApplicationController
  before_action :authorize, except: %i(login try_to_login register registration)
  def main
    @u = current_user
  end

  def login
    if session[:login].to_i == 0
      @page_title = 'login'
    else
      (redirect_to :root) && (return false)
    end
      
  end

  def registration
    if session[:login].to_i == 0
      @page_title = 'Registration'
    else
      (redirect_to :root) && (return false)
    end
  end

  def try_to_login
    unless params[:login]
      (redirect_to :root) && (return false)
    end
    username = params[:login][:username].to_s
    psw = params[:login][:psw].to_s
    @user = User.where(username: username, password: psw).first
    if @user
      renew_session(@user)
    end
    (redirect_to :root) && (return false)
  end

  def register
    unless params[:register]
      (redirect_to :root) && (return false)
    end
    username = params[:register][:username].to_s
    psw = params[:register][:psw].to_s
    @user = User.new
    @user.username = username
    @user.password = psw
    @user.save
    if @user
      renew_session(@user)
    end
    (redirect_to :root) && (return false)
  end

  def logout
    session[:username] = 'guest'
    session[:usertype] = 'guest'
    session[:login] = 0
    session[:user_id] = nil
    (redirect_to :root) && (return false)
  end

end
