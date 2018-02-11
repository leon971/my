class UserController < ApplicationController

	before_action :authorize

	def change_priority
      params[:user].each_with_index do |id, index|
      	User.where(id: id).update_all(priority: index)
      end
      head :ok
	end
end

