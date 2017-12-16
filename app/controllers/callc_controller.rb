class CallcController < ApplicationController
	before_action :authorize, except: %i(login try_to_login)
	def main
		@u = current_user
		logger.fatal '======================='
		logger.fatal '======================='
		logger.fatal '======================='
        logger.fatal @u
		logger.fatal '======================='
		logger.fatal '======================='

	end
	def login
	  if session[:login].to_i == 0
       @page_title = 'login'
       else
       	 (redirect_to :root) && (return false)
       end
      
	end
	def try_to_login
	  unless params['login']
        (redirect_to :root) && (return false)
	  end
	  username = params['login']['username'].to_s
	  psw = params['login']['psw'].to_s
	  @user = User.where(username: username, password: psw).first
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
