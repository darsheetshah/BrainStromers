class UsersController < ApplicationController
  def new
  @title= "New User Sign Up"
  @user=User.new
  end
  
  def show
  @user=User.find(params[:id])
  end
  
  def create
	@user= User.new(params[:user])
	if	@user.save 
		sign_in @user
		redirect_to @user
		else
		render 'new'
		#redirect_to :action => 'new'
		end
	end
end