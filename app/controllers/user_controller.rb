class UserController < ApplicationController

  before_action :authorize

  def change_priority
    params[:user].each_with_index do |id, index|
      User.where(id: id).update_all(priority: index)
    end
    head :ok
  end

  def edit
    edit_user if check_if_admin
    @user = current_user
  end

  def edit_user
    @user = if params[:id].present?
              User.find(params[:id].to_i)
            else
              current_user
            end
    (render :edit) && (return false)
  end

  def update
    user = User.find(params[:user_id].to_i)
    user.update_attributes(params.permit(:username, :password, :usertype))
    if !user.errors.empty?
      flash[:notice] = 'Errors: '
      user.errors.each do |key, value|
        flash[:notice] += '<br/> *' + value.to_s
      end
    end
    redirect_to :root
  end
end