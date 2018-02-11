class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
  	@heloo = 'ef'
  end
  def current_user
<<<<<<< HEAD
  	@current_user = User.find(session[:user_id].to_i)
=======
  	@current_user = User.find_by_id(session[:user_id].to_i)
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
  	return @current_user
  end
  def flash_errors_for(message, object)
    flash[:notice] = message
    if object.respond_to?(:errors)
      object.errors.each do |key, value|
        flash[:notice] += '<br> *' + value.to_s
      end
    end
  end
  	def authorize
       if session[:user_id].present? && session[:usertype] != 'guest'
        # OK
       else
         redirect_to(controller: 'callc', action: 'login') && (return false)
     end
	end
	def renew_session(user)
	  session[:username] = user.username
	  session[:usertype] = 'loged'
	  session[:login] = 1
	  session[:user_id] = user.id
	end
end
