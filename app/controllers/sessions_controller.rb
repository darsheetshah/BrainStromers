class SessionsController < ApplicationController
def new
@title = "Log In to Reach Out"
#@user=user[:name]
end

def create
@person="default"
 #user = User.find_by_email("darsheets@yahoo.com")
 user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:email],params[:session][:password])
		@person=user[:name]
		#render 'new'
	   sign_in user
       redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
# render 'new'
end

def destroy
sign_out
redirect_to root_path
end

end
