class ReachOutController < ApplicationController
  def Login
  @title = "Login"
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
  
  def index
  @title = "Welcome"
  end
 
end
