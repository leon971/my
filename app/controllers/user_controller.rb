class UserController < ApplicationController
<<<<<<< HEAD

	before_action :authorize

	def change_priority
      params[:user].each_with_index do |id, index|
      	User.where(id: id).update_all(priority: index)
      end
      head :ok
	end
=======
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
end

