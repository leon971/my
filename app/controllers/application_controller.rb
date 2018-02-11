class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
  	@heloo = 'ef'
  end
  def current_user
  	@current_user = User.find(session[:user_id].to_i)
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
