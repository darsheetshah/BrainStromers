class PagesController < ApplicationController
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
	@title = "Discussion Thread"
  end
end
