class ReachOutController < ApplicationController
  def Login
  @title = "Login"
  @login_path = "/Login"
  end

  def Home
  @title = "Home"
  end

  def Charity
  @title = "Charity"
  end

  def DiscussionThread
  @title = "Discussion Board"
  end
  
  def About
  @title = "About"
  end
  
  def SignUp
  @title = "SignUp"
  end
  
  login_path = '/Login'
 
end
