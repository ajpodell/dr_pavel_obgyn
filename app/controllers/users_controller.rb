class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user =User.new(params[:user])
  	if @user.save
  		sign_in @user
  		redirect_to root_path #will decide later
  	else
  		render 'new'
  	end
  end

  private 

  	def admin_user
  		redirect_to(root_path) unless current_user.admin?
  	end
end
