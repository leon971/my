class CallcController < ApplicationController
<<<<<<< HEAD
	before_action :authorize, except: %i(login try_to_login register registration)
	def main
		@u = current_user
	end

=======
	before_action :authorize, except: %i(login try_to_login)
	def main
		@u = current_user
	end
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
	def login
	  if session[:login].to_i == 0
       @page_title = 'login'
       else
       	 (redirect_to :root) && (return false)
       end
      
	end
<<<<<<< HEAD

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
=======
	def try_to_login
	  unless params['login']
        (redirect_to :root) && (return false)
	  end
	  username = params['login']['username'].to_s
	  psw = params['login']['psw'].to_s
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
	  @user = User.where(username: username, password: psw).first
	  if @user
	  	renew_session(@user)

	  end
	  (redirect_to :root) && (return false)
	end
<<<<<<< HEAD

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

=======
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
	def logout
	  session[:username] = 'guest'
	  session[:usertype] = 'guest'
	  session[:login] = 0
	  session[:user_id] = nil
	  (redirect_to :root) && (return false)
	end

end
